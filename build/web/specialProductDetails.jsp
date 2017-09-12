<%-- 
    Document   : specialProductDetails
    Created on : Mar 22, 2017, 7:34:52 PM
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
        String a=request.getParameter("value");
        out.println(a);
        %>
        <h1>Hello World this page is to show mare details about specail product and other speciual products</h1>
    </body>
</html>
