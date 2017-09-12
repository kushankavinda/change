<%-- 
    Document   : approve
    Created on : Apr 15, 2017, 3:20:09 AM
    Author     : Kushan
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int result = 0;
            String approve = request.getParameter("approve");
            int app = Integer.parseInt(approve);
            //out.println(approve);
        %>
        <%@include file="viewMoreDetails.jsp"%> <%              
            PreparedStatement pstatement = null;
            try {
                String queryString = "INSERT INTO approvedSpecialAdds(approved_id) VALUES (?)";
                pstatement = connection.prepareStatement(queryString);
                pstatement.setString(1, approve);
                result = pstatement.executeUpdate();
                //dont delete from specialproduct values
                /*String sql = "DELETE FROM specialproduct WHERE post_id=" + app;
                pstatement = connection.prepareStatement(sql);
                result = pstatement.executeUpdate();*/
            }catch (Exception e){
                out.println("some error occur");
            } finally {
                if (result > 0) {
                    out.println("vales enterd");
                }else{
                    out.println("vales not enterd");
                }
                response.sendRedirect("admin.jsp");
            }
        %>    
    </body>
</html>
