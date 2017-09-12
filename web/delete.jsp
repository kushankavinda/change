<%-- 
    Document   : delete
    Created on : Apr 4, 2017, 2:11:32 AM
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
        <%
         long i;
        for(i=0;i<=10000.0;i++){
            if (i==100.0){
            out.println(i);
            out.println("yes");
            }
            
        }
        %>
    </body>
</html>
