<%-- 
    Document   : samplefblogin
    Created on : Nov 28, 2017, 9:58:25 PM
    Author     : Kushan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <script>
            //initialize fb sdk
            window.fbAsyncInit = function () {
                FB.init({
                    appId: '483327942066951',
                    autoLogAppEvents: true,
                    xfbml: true,
                    version: 'v2.11'
                });
                FB.getLoginStatus(function (response) {
                    if (response.status == 'connected') {
                        document.getElementById('status').innerHTML = 'We are connected';
                    } else if (response.status == 'not_authorized') {
                        document.getElementById('status').innerHTML = 'we are not login';
                    } else {
                     //   document.getElementById('status').innerHTML = 'you are not login fb';
                    }
                });
            };

            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) {
                    return;
                }
                js = d.createElement(s);
                js.id = id;
                js.src = "https://connect.facebook.net/en_US/sdk.js";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
            function login() {
                FB.login(function (response) {
                    if (response.status == 'connected') {
                        document.getElementById('status').innerHTML = 'We are connected';
                    } else if (response.status == 'not_authorized') {
                        document.getElementById('status').innerHTML = 'we are not login';
                    } else {
                        document.getElementById('status').innerHTML = 'you are not login fb';
                    }
                });
            }
        </script>
        <div id="status">
            <button onclick="login()">Login</button>
        </div>
    </body>
</html>
