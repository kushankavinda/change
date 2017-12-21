<%-- 
    Document   : addRegisterUser
    Created on : Apr 1, 2017, 4:05:14 PM
    Author     : Kushan
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            // var loc;
            /*       var name1 = document.forms["test"]["pass_us"].value;
             var name2 = document.forms["test"]["conf_pass_us"].value;
             
             if (name1 == name2) {
             alert("password mismatch");
             } else {
             //loc = "/img/redcross.jpg";
             alert("oooooooooooop");
             }*/
        </script> 

    </head>
    <body>
        <%
            String a = request.getParameter("uname");
            String a1 = request.getParameter("emauil_us");
            String a2 = request.getParameter("psw");
            String a3 = request.getParameter("psw1");

        /*   if (!a2.equals(a3)) {
                response.sendRedirect("newSignUp.jsp");
            }  */
            //out.print(a2);

            int result = 0;
            String connectionURL = "jdbc:mysql://localhost:3306/change";

            Connection connection = null;

            PreparedStatement pstatement = null;

            Class.forName("com.mysql.jdbc.Driver").newInstance();

            try {

                connection = DriverManager.getConnection(connectionURL, "root", "");

                String queryString = "INSERT INTO register_users(user_name,email,password) VALUES (?, ?, ?)";

                pstatement = connection.prepareStatement(queryString);
                pstatement.setString(1, a);
                pstatement.setString(2, a1);
                pstatement.setString(3, a2);
                out.print(a2);
                result = pstatement.executeUpdate();

            } catch (Exception ex) {
                out.println("Unable to connect to batabase.");

            } finally {
                if (result > 0) {
                    String redirectURL1 = "index.jsp";
                    response.sendRedirect(redirectURL1);
                     session.setAttribute("email",a1);
                    session.setAttribute("name",a);
                    session.setAttribute("password",a2);


                    // out.print("insert user register");
                } else {
                    out.print("not insert ");
                    String redirectURL2 = "register.jsp";
                    response.sendRedirect(redirectURL2);

                } 

                pstatement.close();
                connection.close();
            }

        %>
    </body>
</html>
