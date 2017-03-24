


     window.fbAsyncInit = function() {
    FB.init({
      appId      : '733224400184471',
      xfbml      : true,
      version    : 'v2.8'
    });
    FB.AppEvents.logPageView();

      FB.getLoginStatus(function(response) {
  if (response.status === 'connected') 
   {
   
   $('.fb-I').attr( "src", "/assets/Face_activo-f6770488e3cace3a8010291d39ee76dedf482bd4f857f88d78e912a1365d1899.svg" );
    

    $('.fb-I').click(function(){

      myFacebookLogin();
    });
   
  }
  else {
//    FB.login();
 $('.fb-I').attr( "src", "/assets/Face_inactivo-0df2b9e69490433510d4b1274435e076523c676e28ab15140fb810f326b27ef0.svg" );
   
  }
});
  };


function myFacebookLogin() {

FB.login(function(){
  // Note: The call will only work if you accept the permission request


  var body =  $("#post_comentario").val();
FB.api('/followbusMx/feed?access_token=EAAKa3Rvp5JcBAPPDZA6fdQR4uNahkrvIzBZCNCiMPbv58TkSKny4NIDK9zmWP2cYl2cXkN5ZBRoXx20h6BBHwvoZB4xS6szRSi3X4NELGpgXB6ZCCh8jDwv7OQjOEO9Ri30gGOfb44nogLG25YsX6ZBRVcgp0gAZBkseZAioDn1pyWSff4mea2WL', 'post',{
        "message": body,
        //"place": "1720852638142672",
  
        "tags":"AaJ0zF2vGsFX0xAu6xjEiLxENzPohC1g2WJRoacUzZuClPcaTfOEKR_1btTMn6hEhdZ-0rLyI3W4R8WjCFWelwGgatqkBgFhMSIGxXUKrIjlUQ" ,
       // "object_attachment":"http://s3.amazonaws.com/digitaltrends-uploads-prod/2016/08/Mustang-GT500.jpg",
      //  "privacy":{"value":"SELF"}
     //  "privacy":{"value":"CUSTOM","allow":"1720852638142672"}
      
    }, function(response) {
  if (!response || response.error) {
    alert('Ocurrio un problema al compartir la informacion');
  } else {
    $('#shareM').modal('show');
    setTimeout(function(){ $('#shareM').modal('hide'); }, 3000);
  }
});


}, {scope: 'publish_actions'});

}
  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));

  /*Facebook Login status*/
