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

/*FB.api(
    "/me/feed",
    "POST",
    {
        "message": "This is a test message",
        "place": "169983423516314",
        "tags": "10153283482166868,1720852638142672",
        "object_attachment":"http://s3.amazonaws.com/digitaltrends-uploads-prod/2016/08/Mustang-GT500.jpg"
    },
    function (response) {
      if (response && !response.error) {
        console.log(response); 
      }
    }
);*/
var params = {};
params['message'] = 'Message';
params['name'] = 'Name';
params['description'] = 'Description';
params['place'] = '733224400184471';
params['picture'] = 'http://s3.amazonaws.com/digitaltrends-uploads-prod/2016/08/Mustang-GT500.jpg';
params['caption'] = 'Caption';
  
FB.api('/me/feed', 'post', params, function(response) {
  if (!response || response.error) {
    alert('Error occured');
  } else {
    alert('Published to stream - you might want to delete it now!');
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
