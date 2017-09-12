<%-- 
    Document   : specialAdd
    Created on : Apr 9, 2017, 4:08:16 PM
    Author     : Kushan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change.lk</title>
    </head>
    <body>
        <!-- <h1>Hello World!</h1>
         <p>throught admin you can advertise specail add column(this funtion is to quickly response like sell hurry)</p>
        -->
        <%
            if ((String) session.getAttribute("password") != null) {
                out.println("specail add");%>
               
        <%@include file="addSpecialPost.jsp" %> 


        <% } else {%>
        <%@include file="signup.jsp" %> 
        <%  }
        %>
    </body>
</html>
