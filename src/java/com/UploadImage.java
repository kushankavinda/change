package com;

import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/uploadImage")
@MultipartConfig(maxFileSize = 16177216)
public class UploadImage extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String connectionURL = "jdbc:mysql://localhost:3306/change";
        String user = "root";
        String pass = "";

        String name, category, area, address, email, phone, descr, type,price,addType;
        addType=req.getParameter("addtype");
        name = req.getParameter("name");
        category = req.getParameter("category");
        area = req.getParameter("area");
        address = req.getParameter("address");
        email = req.getParameter("email"); //(String) session.getAttribute("email");
        phone = req.getParameter("phone");
        descr = req.getParameter("desc");
        type = req.getParameter("type");
        price = req.getParameter("price");

    

        int result = 0;
        Connection con = null;
        Part part = req.getPart("image");
        if(addType.equals("normal")){
        if (part != null) {
            try {
                System.out.println("awaa111");

                Class.forName("com.mysql.jdbc.Driver").newInstance();

                con = DriverManager.getConnection(connectionURL, user, pass);
                System.out.println("boooo");
                System.out.println("oooo");
                //  resp.sendRedirect("result.jsp?message=Image+Uploaded");
                PreparedStatement ps = con.prepareStatement("insert into post(name,category,area,address,email,phone,descr,type,image,price) values(?,?,?,?,?,?,?,?,?,?)");
                System.out.println("sex");

                // resp.sendRedirect("result.jsp?message=panna");
                //  System.out.println("awaa111 da?"); 
                InputStream is = part.getInputStream();

                ps.setString(1, name);
                ps.setString(2, category);
                ps.setString(3, area);
                ps.setString(4, address);
                ps.setString(5, email);
                ps.setString(6, phone);
                ps.setString(7, descr);
                ps.setString(8, type);
                ps.setBlob(9, is);
               // System.out.println("oww");
                 ps.setString(10,price);
                result = ps.executeUpdate();
                System.out.println("yes yes yes");

            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("awahuttoo");

            } finally {
                if (con != null) {
                    try {
                        con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        }else/* if(addType.equals("Special Add"))*/{
         if (part != null) {
             String tableName;
             if(addType.equals("adminAdd")){
                 tableName="admimnaddtable";
             }else{
                 tableName="specialproduct";
             }
            try {
                System.out.println("awaa111");

                Class.forName("com.mysql.jdbc.Driver").newInstance();

                con = DriverManager.getConnection(connectionURL, user, pass);
                System.out.println("boooo");
                System.out.println("oooo");
                //  resp.sendRedirect("result.jsp?message=Image+Uploaded");
                PreparedStatement ps = con.prepareStatement("insert into " +tableName + " (name,category,area,address,email,phone,descr,type,image,price) values(?,?,?,?,?,?,?,?,?,?)");
                System.out.println("sex");

                // resp.sendRedirect("result.jsp?message=panna");
                //  System.out.println("awaa111 da?"); 
                InputStream is = part.getInputStream();

                ps.setString(1, name);
                ps.setString(2, category);
                ps.setString(3, area);
                ps.setString(4, address);
                ps.setString(5, email);
                ps.setString(6, phone);
                ps.setString(7, descr);
                ps.setString(8, type);
                ps.setBlob(9, is);
               // System.out.println("oww");
                 ps.setString(10,price);
                result = ps.executeUpdate();
                System.out.println("yes yes yes");

            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("awahuttoo");

            } finally {
                if (con != null) {
                    try {
                        con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        }
        
       if (result > 0) {
           resp.sendRedirect("index.jsp?message=Image+Uploaded");
     
        } else {
            //System.out.println("weradi");
            resp.sendRedirect("addPost.jsp?message=Some+Error+Occurred");
        }
    }
}
