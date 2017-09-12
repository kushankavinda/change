<%-- 
    Document   : logOut
    Created on : Apr 6, 2017, 11:28:19 AM
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
        <%

            session.removeAttribute("password");
            session.removeAttribute("email");
            String redirectURL = "index.jsp";
            response.sendRedirect(redirectURL);


        %>

    </body>
</html>
