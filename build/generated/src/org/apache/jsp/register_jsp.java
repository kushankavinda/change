package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/viewMoreDetails.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\"> \n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("        <title>Change.lk</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=windows-1252\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />\n");
      out.write("        <!-- Latest compiled and minified CSS -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("            <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <link rel=\"stylesheet\" href=\"css/style1.css\">\n");
      out.write("\n");
      out.write("                    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script> \n");
      out.write("                    <style>\n");
      out.write("                        form {\n");
      out.write("                            border: 3px solid #f1f1f1;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        input[type=text], input[type=password] {\n");
      out.write("                            width: 100%;\n");
      out.write("                            padding: 12px 20px;\n");
      out.write("                            margin: 8px 0;\n");
      out.write("                            display: inline-block;\n");
      out.write("                            border: 1px solid #ccc;\n");
      out.write("                            box-sizing: border-box;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        button {\n");
      out.write("                            background-color: #4CAF50;\n");
      out.write("                            color: white;\n");
      out.write("                            padding: 14px 20px;\n");
      out.write("                            margin: 8px 0;\n");
      out.write("                            border: none;\n");
      out.write("                            cursor: pointer;\n");
      out.write("                            width: 100%;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        button:hover {\n");
      out.write("                            opacity: 0.8;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .cancelbtn {\n");
      out.write("                            width: auto;\n");
      out.write("                            padding: 10px 18px;\n");
      out.write("                            background-color: #f44336;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .imgcontainer {\n");
      out.write("                            text-align: center;\n");
      out.write("                            margin: 24px 0 12px 0;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        img.avatar {\n");
      out.write("                            width: 40%;\n");
      out.write("                            border-radius: 50%;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .container {\n");
      out.write("                            padding: 16px;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        span.psw {\n");
      out.write("                            float: right;\n");
      out.write("                            padding-top: 16px;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        /* Change styles for span and cancel button on extra small screens */\n");
      out.write("                        @media screen and (max-width: 300px) {\n");
      out.write("                            span.psw {\n");
      out.write("                                display: block;\n");
      out.write("                                float: none;\n");
      out.write("                            }\n");
      out.write("                            .cancelbtn {\n");
      out.write("                                width: 100%;\n");
      out.write("                            }\n");
      out.write("                        }\n");
      out.write("                    </style>\n");
      out.write("                    <style>\n");
      out.write("                        /* The Modal (background) */\n");
      out.write("                        .modal {\n");
      out.write("                            display: none; /* Hidden by default */\n");
      out.write("                            position: fixed; /* Stay in place */\n");
      out.write("                            z-index: 1; /* Sit on top */\n");
      out.write("                            padding-top: 100px; /* Location of the box */\n");
      out.write("                            left: 0;\n");
      out.write("                            top: 0;\n");
      out.write("                            width: 100%; /* Full width */\n");
      out.write("                            height: 100%; /* Full height */\n");
      out.write("                            overflow: auto; /* Enable scroll if needed */\n");
      out.write("                            background-color: rgb(0,0,0); /* Fallback color */\n");
      out.write("                            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        /* Modal Content */\n");
      out.write("                        .modal-content {\n");
      out.write("                            background-color: #fefefe;\n");
      out.write("                            margin: auto;\n");
      out.write("                            padding: 20px;\n");
      out.write("                            border: 1px solid #888;\n");
      out.write("                            width: 80%;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        /* The Close Button */\n");
      out.write("                        .close {\n");
      out.write("                            color: #aaaaaa;\n");
      out.write("                            float: right;\n");
      out.write("                            font-size: 28px;\n");
      out.write("                            font-weight: bold;\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("                        .close:hover,\n");
      out.write("                        .close:focus {\n");
      out.write("                            color: #000;\n");
      out.write("                            text-decoration: none;\n");
      out.write("                            cursor: pointer;\n");
      out.write("                        }\n");
      out.write("                    </style>\n");
      out.write("                    <style>\n");
      out.write("                        .loginBtn {\n");
      out.write("                            box-sizing: border-box;\n");
      out.write("                            position: relative;\n");
      out.write("                            /* width: 13em;  - apply for fixed size */\n");
      out.write("                            margin: 0.2em;\n");
      out.write("                            padding: 0 15px 0 46px;\n");
      out.write("                            border: none;\n");
      out.write("                            text-align: left;\n");
      out.write("                            line-height: 34px;\n");
      out.write("                            white-space: nowrap;\n");
      out.write("                            border-radius: 0.2em;\n");
      out.write("                            font-size: 16px;\n");
      out.write("                            color: #FFF;\n");
      out.write("                        }\n");
      out.write("                        .loginBtn:before {\n");
      out.write("                            content: \"\";\n");
      out.write("                            box-sizing: border-box;\n");
      out.write("                            position: absolute;\n");
      out.write("                            top: 0;\n");
      out.write("                            left: 0;\n");
      out.write("                            width: 34px;\n");
      out.write("                            height: 100%;\n");
      out.write("                        }\n");
      out.write("                        .loginBtn:focus {\n");
      out.write("                            outline: none;\n");
      out.write("                        }\n");
      out.write("                        .loginBtn:active {\n");
      out.write("                            box-shadow: inset 0 0 0 32px rgba(0,0,0,0.1);\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("\n");
      out.write("                        /* Facebook */\n");
      out.write("                        .loginBtn--facebook {\n");
      out.write("                            background-color: #4C69BA;\n");
      out.write("                            background-image: linear-gradient(#4C69BA, #3B55A0);\n");
      out.write("                            /*font-family: \"Helvetica neue\", Helvetica Neue, Helvetica, Arial, sans-serif;*/\n");
      out.write("                            text-shadow: 0 -1px 0 #354C8C;\n");
      out.write("                        }\n");
      out.write("                        .loginBtn--facebook:before {\n");
      out.write("                            border-right: #364e92 1px solid;\n");
      out.write("                            background: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/14082/icon_facebook.png') 6px 6px no-repeat;\n");
      out.write("                        }\n");
      out.write("                        .loginBtn--facebook:hover,\n");
      out.write("                        .loginBtn--facebook:focus {\n");
      out.write("                            background-color: #5B7BD5;\n");
      out.write("                            background-image: linear-gradient(#5B7BD5, #4864B1);\n");
      out.write("                        }\n");
      out.write("\n");
      out.write("\n");
      out.write("                        /* Google */\n");
      out.write("                        .loginBtn--google {\n");
      out.write("                            /*font-family: \"Roboto\", Roboto, arial, sans-serif;*/\n");
      out.write("                            background: #DD4B39;\n");
      out.write("                        }\n");
      out.write("                        .loginBtn--google:before {\n");
      out.write("                            border-right: #BB3F30 1px solid;\n");
      out.write("                            background: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/14082/icon_google.png') 6px 6px no-repeat;\n");
      out.write("                        }\n");
      out.write("                        .loginBtn--google:hover,\n");
      out.write("                        .loginBtn--google:focus {\n");
      out.write("                            background: #E74B37;\n");
      out.write("                        }\n");
      out.write("                    </style>\n");
      out.write("                    </head>\n");
      out.write("                    <body>\n");
      out.write("\n");
      out.write("                        <div id=\"main_container\">\n");
      out.write("                            <!-- The Modal -->\n");
      out.write("                            <div id=\"myModal\" class=\"modal\" >\n");
      out.write("\n");
      out.write("                                <!-- Modal content -->\n");
      out.write("                                <div class=\"modal-content\" style=\"width : 30%\">\n");
      out.write("\n");
      out.write("                                    <span class=\"close\">&times;</span>\n");
      out.write("\n");
      out.write("                                    <form action=\"#\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                                        <div class=\"container\" style=\"width : 100%\">\n");
      out.write("                                            <label><b>Username</b></label>\n");
      out.write("                                            <input type=\"text\" placeholder=\"Enter Username\" name=\"uname\" required>\n");
      out.write("\n");
      out.write("                                                <label><b>Password</b></label>\n");
      out.write("                                                <input type=\"password\" placeholder=\"Enter Password\" name=\"psw\" required>\n");
      out.write("\n");
      out.write("                                                    <button type=\"submit\">Login</button>\n");
      out.write("                                                    <input type=\"checkbox\" checked=\"checked\"> Remember me\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("                                                        <div class=\"container\" style=\"background-color:#f1f1f1\">\n");
      out.write("                                                            </b></label>   <a href=\"#\"><button type=\"button\" class=\"cancelbtn\">Create Account</button></a>\n");
      out.write("                                                            <span class=\"psw\">Forgot <a href=\"#\">password?</a></span>\n");
      out.write("                                                        </div>\n");
      out.write("                                                        </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                        <a href=\"#\"><button class=\"loginBtn loginBtn--facebook\">\n");
      out.write("                                                                Login with Facebook\n");
      out.write("                                                            </button></a>\n");
      out.write("\n");
      out.write("                                                        <button class=\"loginBtn loginBtn--google\">\n");
      out.write("                                                            Login with Google\n");
      out.write("                                                        </button>\n");
      out.write("\n");
      out.write("                                                        </div>\n");
      out.write("\n");
      out.write("                                                        </div>\n");
      out.write("                                                        <div id=\"header\" >\n");
      out.write("                                                            <!-- <div class=\"top_right\">\n");
      out.write("                                                                  <div class=\"languages\">\n");
      out.write("                                                                      <div class=\"lang_text\"><b>Languages</b></div>\n");
      out.write("                                                                      <a href=\"#\" class=\"lang\"><img src=\"images/en.gif\" alt=\"\" border=\"0\" /></a> <a href=\"#\" class=\"lang\"><img src=\"images/de.gif\" alt=\"\" border=\"0\" /></a> </div> \n");
      out.write("                                                                  <div class=\"big_banner\"> <a href=\"#\"><img src=\"images/banner1.jpg\" alt=\"\" border=\"0\" /></a> </div>\n");
      out.write("                                                              \n");
      out.write("                                                               </div> -->\n");
      out.write("\n");
      out.write("                                                            <!-- <div id=\"logo\"> <a href=\"#\"><img src=\"images/sureson.jpg\" alt=\"\" border=\"0\" width=\"382\" height=\"85\" /></a> </div> -->\n");
      out.write("                                                        </div>\n");
      out.write("                                                        <div id=\"main_content\">\n");
      out.write("                                                            <div id=\"menu_tab\">\n");
      out.write("                                                                <ul class=\"menu\">\n");
      out.write("                                                                    <li><a id=\"home\" href=\"index.jsp\" class=\"nav\"> Home</a></li>\n");
      out.write("                                                                    <li class=\"divider\"></li>\n");
      out.write("                                                                    <li><a href=\"allAdds.jsp\" class=\"nav\">All Adds</a></li>\n");
      out.write("                                                                    <li class=\"divider\"></li>\n");
      out.write("                                                                    <li><a href=\"#\" class=\"nav\">Specials</a></li>\n");
      out.write("                                                                    <li class=\"divider\"></li>\n");
      out.write("                                                                    <li><a href=\"addPost.jsp\" class=\"nav\">My Posts</a></li>\n");
      out.write("                                                                        ");

                                                                            if (session.getAttribute("password") != null) {
                                                                        
      out.write("\n");
      out.write("                                                                    <li class=\"divider\"></li>\n");
      out.write("                                                                    <li><a href=\"viewMyPost.jsp\" class=\"nav\">View My Posts</a></li>\n");
      out.write("                                                                        ");
}
      out.write("\n");
      out.write("                                                                    <li class=\"divider\"></li>\n");
      out.write("                                                                    <li><a href=\"contact.html\" class=\"nav\">Contact Us</a></li>\n");
      out.write("                                                                    <li class=\"divider\"></li>\n");
      out.write("                                                                    <li><a href=\"details.html\" class=\"nav\">Details</a></li>\n");
      out.write("\n");
      out.write("                                                                    ");

                                                                        if ((session.getAttribute("password")) != null) {
      out.write("\n");
      out.write("                                                                    <li class=\"divider\"></li>\n");
      out.write("                                                                    <li><a href=\"logOut.jsp\" class=\"nav\">Log Out</a></li>\n");
      out.write("                                                                        ");
 } else {
      out.write("\n");
      out.write("                                                                    <li class=\"divider\"></li>\n");
      out.write("                                                                    <li style=\"float:right;margin-right: 20px;margin-top: 0\"> <div class=\"title_box\" id=\"myLoginBtn\" style=\"color:red\">Sign Up</div></li>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                                    ");
}
      out.write("\n");
      out.write("                                                                    ");
/*String ad=session.getAttribute("email").toString();
                                                                      String pass=session.getAttribute("password").toString();
                                                                      if(ad.equals("changeAdmin@gmail.com") && pass.equals("admin@123")){
                                                                           out.print("mww");*/
                                                                    
      out.write("\n");
      out.write("                                                                    <!-- <li class=\"divider\"></li>\n");
      out.write("                                                                     <li><a href=\"admin.jsp\" class=\"nav\">Admin Pannel</a></li> -->\n");
      out.write("                                                                    ");
//}
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                                </ul>\n");
      out.write("                                                            </div>\n");
      out.write("                                                            <!-- end of menu tab -->\n");
      out.write("                                                            <!-- <div class=\"crumb_navigation\"> Navigation: <span class=\"current\">Home Page</span> </div> -->\n");
      out.write("                                                            <div class=\"left_content\">\n");
      out.write("                                                                <div class=\"title_box\">Categories</div>\n");
      out.write("                                                                <ul class=\"left_menu\">\n");
      out.write("                                                                    <li class=\"even\"><a href=\"viewCat.jsp?cat=Moblie Phones\">Moblie Phones</a></li>\n");
      out.write("                                                                    <li class=\"odd\"><a href=\"viewCat.jsp?cat=Vehicals\">Vehicals</a></li>\n");
      out.write("                                                                    <li class=\"even\"><a href=\"#\">Lands</a></li>\n");
      out.write("                                                                    <li class=\"odd\"><a href=\"#\">Houses</a></li>\n");
      out.write("                                                                    <li class=\"even\"><a href=\"#\">Laptops</a></li>\n");
      out.write("                                                                    <li class=\"odd\"><a href=\"#\">Tabs</a></li>\n");
      out.write("                                                                    <li class=\"even\"><a href=\"#\">Clothes</a></li>\n");
      out.write("                                                                    <li class=\"odd\"><a href=\"viewCat.jsp?cat=pillows\">Pillows</a></li>\n");
      out.write("                                                                    <li class=\"even\"><a href=\"#\">Furnitures</a></li>\n");
      out.write("                                                                    <li class=\"odd\"><a href=\"#\">Tutions</a></li>\n");
      out.write("                                                                    <li class=\"even\"><a href=\"#\">Power Banks</a></li>\n");
      out.write("                                                                    <li class=\"odd\"><a href=\"#\">Others</a></li>\n");
      out.write("                                                                </ul>\n");
      out.write("                                                                <div class=\"title_box\">Special Products</div>\n");
      out.write("                                                                ");
try{String s = "SELECT * FROM admimnaddtable";
                                                                
      out.write(' ');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

//String id = request.getParameter("value");
String driverName = "com.mysql.jdbc.Driver";
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

      out.write("\n");
      out.write("\n");
      out.write("\n");

try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();


      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
 
} catch (Exception e) {
e.printStackTrace();
}finally{
      out.write('\n');
      out.write('\n');

}

      out.write(' ');
                        resultSet = statement.executeQuery(s);
    String a = null;
    while (resultSet.next()) {
        a = resultSet.getString("post_id");
      out.write("\n");
      out.write("\n");
      out.write("                                                                <div class=\"border_box\">\n");
      out.write("                                                                    <div class=\"product_title\"><a href=\"viewDetails2.jsp?value=");
      out.print(a);
      out.write('"');
      out.write('>');
      out.print(resultSet.getString("name"));
      out.write("</a></div>\n");
      out.write("                                                                    <div class=\"product_img\"><a href=\"viewDetails2.jsp?value=");
      out.print(a);
      out.write("\"><img src=\"getImage2.jsp?id=");
      out.print(a);
      out.write("\" alt=\"\" border=\"0\" width=\"150\" height=\"150\" /></a></div>\n");
      out.write("                                                                    <div class=\"prod_price\"><span class=\"reduce\">350$</span> <span class=\"price\">270$</span></div>\n");
      out.write("                                                                    ");
}
                                                                        }
                                                                        catch(Exception e

                                                                        
                                                                        
                                                                    ){} 
      out.write("\n");
      out.write("                                                                </div>\n");
      out.write("                                                                <div class=\"title_box\">Newsletter</div>\n");
      out.write("                                                                <div class=\"border_box\">\n");
      out.write("                                                                    <input type=\"text\" name=\"newsletter\" class=\"newsletter_input\" value=\"your email\"/>\n");
      out.write("                                                                    <a href=\"#\" class=\"join\">subscribe</a> </div>\n");
      out.write("                                                                <div class=\"banner_adds\"> <a href=\"addPost.jsp\"><img src=\"images/putadd.jpg\" width=\"160\" height=\"160\" alt=\"\" border=\"0\" /></a> </div>\n");
      out.write("                                                            </div>\n");
      out.write("                                                            <!-- end of left content -->\n");
      out.write("                                                            <div class=\"center_content\">\n");
      out.write("\n");
      out.write("                                                                <div class=\"\" style=\"width : 100%\">\n");
      out.write("\n");
      out.write("                                                                    <form action=\"addRegisterUser.jsp\">\n");
      out.write("                                                                        <div class=\"container\" style=\"width : 100%\">\n");
      out.write("                                                                            <label><b>Username</b></label>\n");
      out.write("                                                                            <input type=\"text\" placeholder=\"Enter Username\" name=\"uname\" required>\n");
      out.write("                                                                                <label><b>Email</b></label>\n");
      out.write("                                                                                <input type=\"text\" placeholder=\"Enter email\" name=\"emauil_us\" required>\n");
      out.write("\n");
      out.write("                                                                                    <label><b>Phone Number</b></label>\n");
      out.write("                                                                                    <input type=\"text\" placeholder=\"Enter Phone Number\" name=\"phone\" required>\n");
      out.write("\n");
      out.write("                                                                                        <label><b>Password</b></label>\n");
      out.write("                                                                                        <input type=\"password\" placeholder=\"Enter Password\" name=\"psw\" required>\n");
      out.write("                                                                                            <label><b>Confirm Password</b></label>\n");
      out.write("                                                                                            <input type=\"password\" placeholder=\"Enter Password\" name=\"psw1\" required>\n");
      out.write("\n");
      out.write("                                                                                                <button type=\"submit\">Register</button>\n");
      out.write("                                                                                                <input type=\"checkbox\" checked=\"checked\"> Remember me\n");
      out.write("                                                                                                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                                                                    </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                                                                    <a href=\"#\"><button class=\"loginBtn loginBtn--facebook\">\n");
      out.write("                                                                                                            Login with Facebook\n");
      out.write("                                                                                                        </button></a>\n");
      out.write("\n");
      out.write("                                                                                                    <button class=\"loginBtn loginBtn--google\">\n");
      out.write("                                                                                                        Login with Google\n");
      out.write("                                                                                                    </button>\n");
      out.write("\n");
      out.write("                                                                                                    </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                                                                    </div>\n");
      out.write("                                                                                                    <!-- end of center content -->\n");
      out.write("                                                                                                    <div class=\"right_content\">\n");
      out.write("                                                                                                        <div class=\"title_box\">Search</div>\n");
      out.write("                                                                                                        <div class=\"border_box\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                                                                            <form action=\"search.jsp\" method=\"post\" style=\"height:100%\">\n");
      out.write("                                                                                                                <input  type=\"text\" name=\"searchWord\"  placeholder=\"search here\" style=\"height:50%\" />\n");
      out.write("                                                                                                                <input style=\"height:50%\" type=\"submit\"  style=\"height:10px;font-size: 20px\"/>\n");
      out.write("                                                                                                            </form>  \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                                                                        </div>\n");
      out.write("\n");
      out.write("                                                                                                        <div class=\"title_box\">Areas</div>\n");
      out.write("                                                                                                        <ul class=\"left_menu\">\n");
      out.write("\n");
      out.write("                                                                                                            <li class=\"even\"><a href=\"viewArea.jsp?area=western\">Western Province</a></li>\n");
      out.write("                                                                                                            <li class=\"odd\"><a href=\"viewArea.jsp?area=southern\">Southren Province</a></li>\n");
      out.write("\n");
      out.write("                                                                                                            <li class=\"even\"><a href=\"#\">North Wesaten Province</a></li>\n");
      out.write("                                                                                                            <li class=\"odd\"><a href=\"#\">Nortyh Province</a></li>\n");
      out.write("                                                                                                            <li class=\"even\"><a href=\"#\">other province</a></li>\n");
      out.write("                                                                                                            <li class=\"odd\"><a href=\"#\">other province</a></li>\n");
      out.write("                                                                                                            <li class=\"even\"><a href=\"#\">other province</a></li>\n");
      out.write("                                                                                                            <li class=\"odd\"><a href=\"#\">Central Province</a></li>\n");
      out.write("                                                                                                            <li class=\"even\"><a href=\"#\">other province</a></li>\n");
      out.write("                                                                                                        </ul>\n");
      out.write("                                                                                                        <div class=\"banner_adds\"> <a href=\"addPost.jsp\"><img src=\"images/putadd.jpg\" alt=\"no banner\" width=\"160\" height=\"224\" border=\"0\" /></a> </div><!-- theere is call to advertise image also-->\n");
      out.write("                                                                                                    </div>\n");
      out.write("                                                                                                    <!-- end of right content -->\n");
      out.write("                                                                                                    </div>\n");
      out.write("                                                                                                    <!-- end of main content -->\n");
      out.write("\n");
      out.write("                                                                                                    <div class=\"footer\">\n");
      out.write("\n");
      out.write("                                                                                                        <div class=\"left_footer\"> <img src=\"images/logo.png\" alt=\"\" width=\"89\" height=\"35\"/> </div>\n");
      out.write("                                                                                                        <div class=\"center_footer\"> sureson.lk<br /> </div>\n");
      out.write("                                                                                                        <div class=\"right_footer\"> <a href=\"#\">home</a> <a href=\"#\">about</a> <a href=\"#\">sitemap</a> <a href=\"#\">rss</a> <a href=\"#\">contact us</a> </div>\n");
      out.write("                                                                                                    </div>\n");
      out.write("                                                                                                    </div>\n");
      out.write("                                                                                                    <!-- end of main_container -->\n");
      out.write("                                                                                                    <script>\n");
      out.write("                                                                                                        // var myIndex1 = 0;\n");
      out.write("                                                                                                        var myIndex = 0;\n");
      out.write("                                                                                                        carousel();\n");
      out.write("                                                                                                        function carousel() {\n");
      out.write("                                                                                                            var i;\n");
      out.write("                                                                                                            var x = document.getElementsByClassName(\"oferta_img\");\n");
      out.write("                                                                                                            for (i = 0; i < x.length; i++) {\n");
      out.write("                                                                                                                x[i].style.display = \"none\";\n");
      out.write("                                                                                                            }\n");
      out.write("                                                                                                            myIndex++;\n");
      out.write("                                                                                                            if (myIndex > x.length) {\n");
      out.write("                                                                                                                myIndex = 1\n");
      out.write("                                                                                                            }\n");
      out.write("                                                                                                            x[myIndex - 1].style.display = \"block\";\n");
      out.write("                                                                                                            setTimeout(carousel, 1500); // Change image every 2 seconds\n");
      out.write("                                                                                                            //next\n");
      out.write("\n");
      out.write("                                                                                                        }\n");
      out.write("\n");
      out.write("                                                                                                        //next script\n");
      out.write("                                                                                                        /*    var myIndex1 = 0;\n");
      out.write("                                                                                                         carousel1();\n");
      out.write("                                                                                                         \n");
      out.write("                                                                                                         function carousel1() {\n");
      out.write("                                                                                                         var i1;\n");
      out.write("                                                                                                         var x1 = document.getElementsByClassName(\"oferta_img1\");\n");
      out.write("                                                                                                         for (i1 = 0; i1 < x1.length; i1++) {\n");
      out.write("                                                                                                         x1[i1].style.display = \"none\";\n");
      out.write("                                                                                                         }\n");
      out.write("                                                                                                         myIndex1++;\n");
      out.write("                                                                                                         if (myIndex1 > x1.length) {\n");
      out.write("                                                                                                         myIndex1 = 1\n");
      out.write("                                                                                                         }\n");
      out.write("                                                                                                         x[myIndex1 - 1].style.display = \"block\";\n");
      out.write("                                                                                                         setTimeout(carousel1, 1000); // Change image every 2 seconds\n");
      out.write("                                                                                                         } */\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                                                                    </script>\n");
      out.write("\n");
      out.write("\n");
      out.write("                                                                                                    <script>\n");
      out.write("                                                                                                        // Get the modal\n");
      out.write("                                                                                                        var modal = document.getElementById('myModal');\n");
      out.write("\n");
      out.write("                                                                                                        // Get the button that opens the modal\n");
      out.write("                                                                                                        var btn = document.getElementById(\"myLoginBtn\");\n");
      out.write("\n");
      out.write("                                                                                                        // Get the <span> element that closes the modal\n");
      out.write("                                                                                                        var span = document.getElementsByClassName(\"close\")[0];\n");
      out.write("\n");
      out.write("                                                                                                        // When the user clicks the button, open the modal \n");
      out.write("                                                                                                        btn.onclick = function () {\n");
      out.write("                                                                                                            modal.style.display = \"block\";\n");
      out.write("                                                                                                        }\n");
      out.write("\n");
      out.write("                                                                                                        // When the user clicks on <span> (x), close the modal\n");
      out.write("                                                                                                        span.onclick = function () {\n");
      out.write("                                                                                                            modal.style.display = \"none\";\n");
      out.write("                                                                                                        }\n");
      out.write("\n");
      out.write("                                                                                                        // When the user clicks anywhere outside of the modal, close it\n");
      out.write("                                                                                                        window.onclick = function (event) {\n");
      out.write("                                                                                                            if (event.target == modal) {\n");
      out.write("                                                                                                                modal.style.display = \"none\";\n");
      out.write("                                                                                                            }\n");
      out.write("                                                                                                        }\n");
      out.write("                                                                                                    </script>\n");
      out.write("                                                                                                    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>\n");
      out.write("\n");
      out.write("                                                                                                    <script  src=\"js/index1.js\"></script>\n");
      out.write("\n");
      out.write("                                                                                                    </body>\n");
      out.write("                                                                                                    </html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
