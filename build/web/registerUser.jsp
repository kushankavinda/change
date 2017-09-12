<%-- 
    Document   : registerUser
    Created on : Apr 1, 2017, 8:35:12 AM
    Author     : Kushan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String name = request.getParameter("name_us");
            String email = request.getParameter("emauil_us");
            String pass = request.getParameter("pass_us");
            String a3 = request.getParameter("conf_pass_us");
           
            //  out.print(a3);
          

        %>


        <%  String driverName = "com.mysql.jdbc.Driver";
            String connectionUrl = "jdbc:mysql://localhost:3306/";
            String dbName = "change";
            String userId = "root";
            String password = "";

            try {
                Class.forName(driverName);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }

            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
        %>
        <%  String rPass;
            String rEmail;
            int x = 0;
            try {

                connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
                statement = connection.createStatement();

                String sql = "SELECT password,email FROM  register_users where email =" + "'" + email + "'";

                // String sql = "SELECT * FROM  register_users";
                resultSet = statement.executeQuery(sql);
                // out.println(resultSet.getString("id"));
                while (resultSet.next()) {
                    //out.println(resultSet.getString("id"));
                    rPass = resultSet.getString("password");
                    rEmail = resultSet.getString("email");
                    if (rPass.equals(pass) && rEmail.equals(email)) {
                        ++x;
                        // out.println("exit such user");
                        //out.println(rPass);
                        //out.println(rEmail);
                    }
        %>
        <%
                }

            } catch (Exception e) {
                e.printStackTrace();
                out.println("exaption came son");
            } finally {
               
                if (x > 0) {
                   // out.println("correct");
                    
                    session.setAttribute("email",email);
                    session.setAttribute("name",name);
                    session.setAttribute("password",pass);
                    String redirectURL = "index.jsp";
                   response.sendRedirect(redirectURL);
                } else {
                        if(email.equals("changeAdmin@gmail.com") && pass.equals("admin@123")){
                            session.setAttribute("email","changeAdmin@gmail.com");
                            session.setAttribute("password","admin@123");
                            response.sendRedirect("admin.jsp");
                        }else{
                            String redirectURL = "signup.jsp";
                            response.sendRedirect(redirectURL);
                        }
                }
            }
        %>

    </body>
</html>
