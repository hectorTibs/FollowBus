var fb = {
  config :{
  // CONFIG VARS: 

    app_id : '733224400184471', 

    use_xfbml : true,

    extendPermissions : 'publish_actions' , 
    // info: http://developers.facebook.com/docs/reference/api/permissions/

    locale : 'es_ES' 
    // all locales in: http://www.facebook.com/translations/FacebookLocales.xml

  // END CONFIG VARS
  },
  perms : [],
  hasPerm : function (perm) { for(var i=0, l=fb.perms.length; i<l; i++) { if(fb.perms[i] == perm) {return true;}} return false; },
  logged : false,
  user : false, // when login, is a user object: http://developers.facebook.com/docs/reference/api/user
  login : function (callback){
    FB.login(function(r) {
      if (r.status == 'connected') {

       fb.access_token =   FB.getAuthResponse()['accessToken'];
        FB.api('/me/permissions?access_token='+ fb.access_token ,function(perm){
          fb.logged = true;
      fb.perms = [];
      for(i in perm.data[0])
      {
      if (perm.data[0][i] == 1)
      {
        fb.perms.push(i);
      }
      }
        });    
    fb.getUser(callback);
      } else {
        fb.logged = false;
        fb.perms = [];
    callback();
      }
    },{scope:fb.config.extendPermissions});
    return false;
  },
  syncLogin : function (callback){
    if (!callback) callback = function(){};
    FB.getLoginStatus(function(r) {
      if (r.status == 'connected' ) { 
        FB.api('/me/permissions?access_token='+ fb.access_token,function(perm){
          fb.logged = true;
      fb.perms = [];
      for(i in perm.data[0])
      {
      if (perm.data[0][i] == 1)
      {
        fb.perms.push(i);
      }
      }
        });    
        fb.getUser(callback);
        return true;
      } else {
        fb.logged = false;
        callback();
        return false;
      }
    });
  },
  logout : function(callback) {FB.logout(callback);},
  getUser : function(callback){
    FB.api('/me?access_token='+ fb.access_token, function(r){
      var user = r;
      user.picture = "https://graph.facebook.com/"+user.id+"/picture";
      fb.user=user; callback(user); 
    }); 
  },
  publish : function (publishObj,callback,noReTry) {
  // publishObj: http://developers.facebook.com/docs/reference/api/post   
    if (fb.logged && fb.hasPerm('publish_actions'))
    { 
      FB.api('/me/feed?access_token='+ fb.access_token, 'post', publishObj, function(response) {
      if (!response || response.error) {
        callback(false);
      } else {
        callback(true);
      }
      });
      return true;
    }
    else
    { 
      if (!noReTry)
        return fb.login(function() { return fb.publish(publishObj,callback,1)});
      else
      {
        callback(false);
        return false;
      }
    }
  },
  readyFuncs : [],
  ready: function(func){fb.readyFuncs.push(func)},
  launchReadyFuncs : function () {for(var i=0,l=fb.readyFuncs.length;i<l;i++){fb.readyFuncs[i]();};}
}
window.fbAsyncInit = function() { 
  if (fb.config.app_id) FB.init({appId: fb.config.app_id, status: true, cookie: true, xfbml: fb.config.use_xfbml});
  fb.syncLogin(fb.launchReadyFuncs);
};
var oldload = window.onload;
window.onload = function() {
  var d = document.createElement('div'); d.id="fb-root"; document.getElementsByTagName('body')[0].appendChild(d);
  var e = document.createElement('script'); e.async = true; e.src = document.location.protocol + '//connect.facebook.net/'+fb.config.locale+'/all.js';
  document.getElementById('fb-root').appendChild(e);
  if (typeof oldload == 'function') oldload();
};







     // Cuando la pagina carga miramos si ya hay un usuario identificado.
fb.ready(function(){ 
  if (fb.logged)
  {
    // Cambiamos el link de identificarse por el nombre y la foto del usuario.
    html = "<p>Hola " + fb.user.name + "</p>";
    html += '<p><img src="' + fb.user.picture + '"/></p>';
    html += '<p><a href="#" onclick="fb.logout(); return false;">Salir</a></p>';
    document.getElementById("conectar_facebook").innerHTML = html;
  }
});

// Funcion para logarse con Facebook.
function login() {
  fb.login(function(){ 
    if (fb.logged) {
      // Cambiamos el link de identificarse por el nombre y la foto del usuario.
      html = "<p>Hola " + fb.user.name + "</p>";
      html += "<p><img src='" + fb.user.picture + "'/></p>";
      document.getElementById("conectar_facebook").innerHTML = html;
    } else {
      alert("No se pudo identificar al usuario");
    }
  })
};


// Funcion para publicar un mensaje en tu muro
var publish = function () {
    fb.publish({
      message : "Estoy probando un script para que la gente publique desde mi/s web/s en Facebook",
      picture : "http://blog.ikhuerta.com/wp-content/themes/ikhuerta3/images/ikhuerta.jpg",
      link : "http://blog.ikhuerta.com/usando-facebook-graph-api-con-javascript-sdk-pero-aun-mas-sencillo",
      name : "Simple Facebook Graph Javascript SDK",
      description : "Facebook Graph es una nueva forma de conectar tu web Facebook. Con este script es muy fácil conseguirlo :)"
    },function(published){ 
      if (published)
       alert("publicado!");
      else
       alert("No publicado :(, seguramente porque no estas identificado o no diste permisos");
    });  
}