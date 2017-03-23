 window.fbAsyncInit = function() {
    FB.init({
      appId      : '733224400184471',
      xfbml      : true,
      version    : 'v2.8'
    });
    FB.AppEvents.logPageView();
      
  };
function myFacebookLogin() {

FB.login(function(){
  // Note: The call will only work if you accept the permission request


  var body =  $("#post_comentario").val();
FB.api('/followbusMx/feed?access_token=EAAKa3Rvp5JcBAF9EjHIAQGfSpZCLXnZCZBroKtBM9EyimADuQvyUrzOgKYHpyClruPlswSTrf0hPTMr01ZB11NFb9U3qT0gREw7KxaIl5DHBPDi18QoU9H78E36BhFMAK1Nm3xuCq0Mmfdo6BRYX9qqmBOVdHTUTmcpdu8zWm4ZBSsXyBzfZAm', 'post',{
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