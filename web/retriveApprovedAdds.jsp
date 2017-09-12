<%-- 
    Document   : retriveApprovedAdds
    Created on : Apr 15, 2017, 3:25:18 PM
    Author     : Kushan
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>


        <%@include file="viewMoreDetails.jsp"%> <%
            //dont use this file
            int appro = 0;
            String sql = "SELECT * FROM approvedSpecialAdds";
            resultSet = statement.executeQuery(sql);
            while (resultSet.next()) {

                appro = Integer.parseInt(resultSet.getString("approved_id"));

            }
        %>

    </body>
</html>
