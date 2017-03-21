
function myFacebookLogin() {
    FB.login(function(response) {
      if (response.authResponse) {
        alert('You are logged in &amp; cookie set!');
        // Now you can redirect the user or do an AJAX request to
        // a PHP script that grabs the signed request from the cookie.

          var body =  $("#post_comentario").val();
FB.api('/followbusMx/feed?access_token=EAACEdEose0cBALhjwtyHZAomFwwHBa1KZBNu5xuYcyU2uUvWlIDdmeV5UcvruxpfSvSYTNmLMsEQeabqxwz9u5AGSKB1f2kmZBVagHh52iCy65BcKJ31QldzKttAGofMZBsrunSjPZCY8vkDXc0Ks7NUZAIImdEj0AqVTQgNMaCjSNN0LlYA', 'post',{
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
      } else {
        alert('User cancelled login or did not fully authorize.');
      }
    }, {scope: 'publish_actions'});
    return false;

}

 window.fbAsyncInit = function() {
    FB.init({
      appId: '733224400184471',
      cookie: true, // This is important, it's not enabled by default
      version:  'v2.8'
    });
     FB.AppEvents.logPageView();
  };
  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "http://connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
