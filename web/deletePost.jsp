<%-- 
    Document   : deletePost
    Created on : Apr 9, 2017, 9:48:29 AM
    Author     : Kushan
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>change.lk</title>
    </head>
    <body>
        <%   int count=0;
            try {
                String value = request.getParameter("value");
                int post_id = Integer.parseInt(value);
        %>
        <%@include file="viewMoreDetails.jsp" %>
            <%       
                String sql = "delete  FROM post where post_id=" + post_id;
                   count=statement.executeUpdate(sql);
                } catch (Exception e) {
                    out.println("error occur when deleting this post");
                }finally{
                    if(count !=0){
                        //out.println("deleted");
                        response.sendRedirect("viewMyPost.jsp");
                    }else{
                       // out.println("not deleted");
                        response.sendRedirect("index.jsp");

                    }
                }
            %>
    </body>
</html>
