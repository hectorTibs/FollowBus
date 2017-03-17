 window.fbAsyncInit = function() {
    FB.init({
      appId      : '733224400184471',
      xfbml      : true,
      version    : 'v2.8'
    });
    FB.AppEvents.logPageView();
      
  };
function myFacebookLogin() {
  /*FB.login(function(){}, {scope: 'publish_actions'});

  FB.login(function(){
  // Note: The call will only work if you accept the permission request
  FB.api('/me/feed', 'post', {message: 'Hello, world!'});
}, {scope: 'publish_actions'});*/
/*FB.ui({
  method: 'share_open_graph',
  action_type: 'og.likes',
  action_properties: JSON.stringify({
    object:'https://developers.facebook.com/docs/',
  })
}, function(response){
  // Debug response (optional)
  console.log(response);
})*/
/*FB.ui(
  {
    method: 'share',
    href: 'https://developers.facebook.com/docs/',
  },
  // callback
  function(response) {
    if (response && !response.error_message) {
      alert('Posting completed.');
    } else {
      alert('Error while posting.');
    }
  }
);*/
FB.login(function(){
  // Note: The call will only work if you accept the permission request


  var body =  $("#post_comentario").val();
/*FB.api('/followbusMx/feed', 'post', { message: body }, function(response) {
  if (!response || response.error) {
    alert('Ocurrio un problema al compartir la informacion');
  } else {
    $('#shareM').modal('show');
    setTimeout(function(){ $('#shareM').modal('hide'); }, 3000);
  }
});*/

FB.api(
    "/me/feed",
    "POST",
    {
        "message": "This is a test message",
        "place": "link",
        "tags": "10153283482166868,10153283482166868"
    },
    function (response) {
      if (response && !response.error) {
        console.log(response); /* post id will be returned */
      }
    }
);
}, {scope: 'publish_actions'});

}
  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
