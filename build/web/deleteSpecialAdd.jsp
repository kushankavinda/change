<%-- 
    Document   : deleteSpecialAdd
    Created on : Apr 19, 2017, 5:46:30 PM
    Author     : Kushan
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p>thisn page is to when admin delete specail add for the case of expire or any reason theb addd will remove from approvespecialAdd tabel</p>
        <p>and it is in specailadd table</p>
        <%@include file="viewMoreDetails.jsp"%> 
        <%if(!request.getParameter("admin").equals(null)){
            out.println("matat puliuwn");
            String appNu=request.getParameter("approve");
            PreparedStatement pstatement = null;
            String sql = "DELETE FROM admimnaddtable WHERE post_id=" + appNu;
            pstatement = connection.prepareStatement(sql);
            pstatement.executeUpdate();
            response.sendRedirect("admin.jsp");
        }else{
            String addNu = request.getParameter("approve");
            int appNu = Integer.parseInt(addNu);
            PreparedStatement pstatement = null;
            String sql = "DELETE FROM approvedSpecialAdds WHERE approved_id=" + appNu;
            pstatement = connection.prepareStatement(sql);
            pstatement.executeUpdate();
            String sql1 = "DELETE FROM specialproduct WHERE post_id=" + appNu;
            pstatement = connection.prepareStatement(sql1);
            pstatement.executeUpdate();
            response.sendRedirect("admin.jsp");
        }
        %>
    </body>
</html>
