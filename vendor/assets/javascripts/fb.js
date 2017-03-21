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
FB.api('/followbusMx/feed?access_token=EAACEdEose0cBAFaWRvDcLskye4yxmjeote2TdZAeVtDZClXjxZBk6JU8ZCM54XvWBTRP7smNYu3kb5bNs1w1hbMvbFQC3IbTHIzZBo2F4OXKTSz5XggexrDkEOxadLq4Dx4MwTNtUWQHufsJZBJbGnZBwa6mbqMtL1NC6uZC5fbIwZCPZCrg9Kd4v3', 'post',{
        "message": body,
        //"place": "1720852638142672",
  
        "tags":"AaJ0zF2vGsFX0xAu6xjEiLxENzPohC1g2WJRoacUzZuClPcaTfOEKR_1btTMn6hEhdZ-0rLyI3W4R8WjCFWelwGgatqkBgFhMSIGxXUKrIjlUQ" ,
       // "object_attachment":"http://s3.amazonaws.com/digitaltrends-uploads-prod/2016/08/Mustang-GT500.jpg",
        "privacy":{"value":"SELF"}
     //  "privacy":{"value":"CUSTOM","allow":"1720852638142672"}
      
    }, function(response) {
  if (!response || response.error) {
    alert('Ocurrio un problema al compartir la informacion');
  } else {
    $('#shareM').modal('show');
    setTimeout(function(){ $('#shareM').modal('hide'); }, 3000);
  }
});

/*FB.api(
    "/me/feed?access_token=EAAKa3Rvp5JcBAMnabnj9bD2VFG6OX2goAfyDuIRuGCKNaJZAqgijLV4dMDiH5KOgDAZCTOw0VfbaldVdFZB749WKrGfhj8yZADSpPGWvHqhFZBZBdQDzAVQh4gBgM7ZAs71G9bRPFDHCnFkmn8LA6TCr0VevfDfXhZCBO5xE85HF2HZBqdv3sJWgS",
    "POST",
    {
        "message": "This is a test message Test message tag!",
        //"place": "1720852638142672",
  
        "tags":"AaJ0zF2vGsFX0xAu6xjEiLxENzPohC1g2WJRoacUzZuClPcaTfOEKR_1btTMn6hEhdZ-0rLyI3W4R8WjCFWelwGgatqkBgFhMSIGxXUKrIjlUQ" ,
       // "object_attachment":"http://s3.amazonaws.com/digitaltrends-uploads-prod/2016/08/Mustang-GT500.jpg",
        "privacy":{"value":"SELF"}
     //  "privacy":{"value":"CUSTOM","allow":"1720852638142672"}
      
    },
    function (response) {
      if (response && !response.error) {
        console.log(response); 
      }
    }
);*/
/*var params = {};
params['message'] = 'Message';
params['name'] = 'Name';
params['description'] = 'Description';
params['tags'] = '733224400184471';
params['caption'] = 'Caption';
params['privacy'] = "{'SELF'}";
  
FB.api('/me/feed', 'post', params, function(response) {
  if (!response || response.error) {
    alert('Error occured');
  } else {
    alert('Published to stream - you might want to delete it now!');
  }
});
*/
}, {scope: 'publish_actions'});

}
  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
