package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class suresonSignup_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\n");
      out.write("    <head>\n");
      out.write("        <title>Change.lk</title>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=windows-1252\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />\n");
      out.write("        <!--[if IE 6]>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"iecss.css\" />\n");
      out.write("        <![endif]-->\n");
      out.write("        <script type=\"text/javascript\" src=\"js/boxOver.js\">\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <div id=\"main_container\">\n");
      out.write("            <div id=\"header\" >\n");
      out.write("              <!-- <div class=\"top_right\">\n");
      out.write("                    <div class=\"languages\">\n");
      out.write("                        <div class=\"lang_text\"><b>Languages</b></div>\n");
      out.write("                        <a href=\"#\" class=\"lang\"><img src=\"images/en.gif\" alt=\"\" border=\"0\" /></a> <a href=\"#\" class=\"lang\"><img src=\"images/de.gif\" alt=\"\" border=\"0\" /></a> </div> \n");
      out.write("                    <div class=\"big_banner\"> <a href=\"#\"><img src=\"images/banner1.jpg\" alt=\"\" border=\"0\" /></a> </div>\n");
      out.write("                \n");
      out.write("                 </div> -->\n");
      out.write("              \n");
      out.write("           <!-- <div id=\"logo\"> <a href=\"#\"><img src=\"images/sureson.jpg\" alt=\"\" border=\"0\" width=\"382\" height=\"85\" /></a> </div> -->\n");
      out.write("            </div>\n");
      out.write("            <div id=\"main_content\">\n");
      out.write("                <div id=\"menu_tab\">\n");
      out.write("                    <ul class=\"menu\">\n");
      out.write("                        <li><a href=\"#\" class=\"nav\"> Home</a></li>\n");
      out.write("                        <li class=\"divider\"></li>\n");
      out.write("                        <li><a href=\"allAdds.jsp\" class=\"nav\">All Adds</a></li>\n");
      out.write("                        <li class=\"divider\"></li>\n");
      out.write("                        <li><a href=\"#\" class=\"nav\">Specials</a></li>\n");
      out.write("                        <li class=\"divider\"></li>\n");
      out.write("                        <li><a href=\"addPost.jsp\" class=\"nav\">My Posts</a></li>\n");
      out.write("                            ");

                                if (session.getAttribute("password") != null) {
                            
      out.write("\n");
      out.write("                        <li class=\"divider\"></li>\n");
      out.write("                        <li><a href=\"viewMyPost.jsp\" class=\"nav\">View My Posts</a></li>\n");
      out.write("                            ");
}
      out.write("\n");
      out.write("                        <li class=\"divider\"></li>\n");
      out.write("                        <li><a href=\"contact.html\" class=\"nav\">Contact Us</a></li>\n");
      out.write("                        <li class=\"divider\"></li>\n");
      out.write("                        <li><a href=\"details.html\" class=\"nav\">Details</a></li>\n");
      out.write("\n");
      out.write("                        ");

                            if ((session.getAttribute("password")) != null) {
      out.write("\n");
      out.write("                        <li class=\"divider\"></li>\n");
      out.write("                        <li><a href=\"logOut.jsp\" class=\"nav\">Log Out</a></li>\n");
      out.write("                            ");
 } else {
      out.write("\n");
      out.write("                        <li class=\"divider\"></li>\n");
      out.write("                        <li><a href=\"signup.jsp\" class=\"nav\">Sign Up</a></li>\n");
      out.write("                            ");
  }
                            
      out.write("\n");
      out.write("                        ");
/*String ad=session.getAttribute("email").toString();
                          String pass=session.getAttribute("password").toString();
                          if(ad.equals("changeAdmin@gmail.com") && pass.equals("admin@123")){
                               out.print("mww");*/
                        
      out.write("\n");
      out.write("                       <!-- <li class=\"divider\"></li>\n");
      out.write("                        <li><a href=\"admin.jsp\" class=\"nav\">Admin Pannel</a></li> -->\n");
      out.write("                        ");
//}
      out.write("\n");
      out.write("                        \n");
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <!-- end of menu tab -->\n");
      out.write("               <!-- <div class=\"crumb_navigation\"> Navigation: <span class=\"current\">Home Page</span> </div> -->\n");
      out.write("                <div class=\"left_content\">\n");
      out.write("                    <div class=\"title_box\">Categories</div>\n");
      out.write("                    <ul class=\"left_menu\">\n");
      out.write("                        <li class=\"even\"><a href=\"viewCat.jsp?cat=Moblie Phones\">Moblie Phones</a></li>\n");
      out.write("                        <li class=\"odd\"><a href=\"viewCat.jsp?cat=Vehicals\">Vehicals</a></li>\n");
      out.write("                        <li class=\"even\"><a href=\"#\">Lands</a></li>\n");
      out.write("                        <li class=\"odd\"><a href=\"#\">Houses</a></li>\n");
      out.write("                        <li class=\"even\"><a href=\"#\">Laptops</a></li>\n");
      out.write("                        <li class=\"odd\"><a href=\"#\">Tabs</a></li>\n");
      out.write("                        <li class=\"even\"><a href=\"#\">Clothes</a></li>\n");
      out.write("                        <li class=\"odd\"><a href=\"viewCat.jsp?cat=pillows\">Pillows</a></li>\n");
      out.write("                        <li class=\"even\"><a href=\"#\">Furnitures</a></li>\n");
      out.write("                        <li class=\"odd\"><a href=\"#\">Tutions</a></li>\n");
      out.write("                        <li class=\"even\"><a href=\"#\">Power Banks</a></li>\n");
      out.write("                        <li class=\"odd\"><a href=\"#\">Others</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                    <div class=\"title_box\">Special Products</div>\n");
      out.write("                    ");
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
                                String a=null;
                                while (resultSet.next()) {
                                    a=resultSet.getString("post_id");
      out.write("\n");
      out.write("                                \n");
      out.write("                    <div class=\"border_box\">\n");
      out.write("                        <div class=\"product_title\"><a href=\"viewDetails2.jsp?value=");
      out.print(a);
      out.write('"');
      out.write('>');
      out.print(resultSet.getString("name"));
      out.write("</a></div>\n");
      out.write("                        <div class=\"product_img\"><a href=\"viewDetails2.jsp?value=");
      out.print(a);
      out.write("\"><img src=\"getImage2.jsp?id=");
      out.print(a);
      out.write("\" alt=\"\" border=\"0\" width=\"150\" height=\"150\" /></a></div>\n");
      out.write("                        <div class=\"prod_price\"><span class=\"reduce\">350$</span> <span class=\"price\">270$</span></div>\n");
      out.write("                        ");
}}catch(Exception e){} 
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"title_box\">Newsletter</div>\n");
      out.write("                    <div class=\"border_box\">\n");
      out.write("                        <input type=\"text\" name=\"newsletter\" class=\"newsletter_input\" value=\"your email\"/>\n");
      out.write("                        <a href=\"#\" class=\"join\">subscribe</a> </div>\n");
      out.write("                        <div class=\"banner_adds\"> <a href=\"addPost.jsp\"><img src=\"images/putadd.jpg\" width=\"160\" height=\"160\" alt=\"\" border=\"0\" /></a> </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- end of left content -->\n");
      out.write("                <div class=\"center_content\">\n");
      out.write("                 \n");
      out.write("\n");
      out.write("                      \n");
      out.write("\n");
      out.write("\n");
      out.write("          ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "addnewSignUp.jsp", out, false);
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("              \n");
      out.write("          \n");
      out.write("                </div>\n");
      out.write("                <!-- end of center content -->\n");
      out.write("                <div class=\"right_content\">\n");
      out.write("                    <div class=\"title_box\">Search</div>\n");
      out.write("                    <div class=\"border_box\">\n");
      out.write("\n");
      out.write("\n");
      out.write("                        <form action=\"search.jsp\" method=\"post\">\n");
      out.write("                            <input type=\"text\" name=\"searchWord\" class=\"newsletter_input\" placeholder=\"search here\"  />\n");
      out.write("                            <input type=\"submit\"  style=\"border-radius: 2px ; background-color: buttonhighlight \"/>\n");
      out.write("                        </form> \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <!--      <div class=\"shopping_cart\">\n");
      out.write("                              <div class=\"title_box\">Shopping cart</div>\n");
      out.write("                              <div class=\"cart_details\"> 3 items <br />\n");
      out.write("                                  <span class=\"border_cart\"></span> Total: <span class=\"price\">350$</span> </div>\n");
      out.write("                              <div class=\"cart_icon\"><a href=\"#\"><img src=\"images/shoppingcart.png\" alt=\"\" width=\"35\" height=\"35\" border=\"0\" /></a></div>\n");
      out.write("                          </div> -->\n");
      out.write("                    <!--     <div class=\"title_box\">What?s new</div>\n");
      out.write("                         <div class=\"border_box\">\n");
      out.write("                             <div class=\"product_title\"><a href=\"#\">Motorola 156 MX-VL</a></div>\n");
      out.write("                             <div class=\"product_img\"><a href=\"#\"><img src=\"images/p2.jpg\" alt=\"\" border=\"0\" /></a></div>\n");
      out.write("                             <div class=\"prod_price\"><span class=\"reduce\">350$</span> <span class=\"price\">270$</span></div>\n");
      out.write("                         </div> -->\n");
      out.write("                    <div class=\"title_box\">Areas</div>\n");
      out.write("                    <ul class=\"left_menu\">\n");
      out.write("\n");
      out.write("                        <li class=\"even\"><a href=\"viewArea.jsp?area=western\">Western Province</a></li>\n");
      out.write("                        <li class=\"odd\"><a href=\"viewArea.jsp?area=southern\">Southren Province</a></li>\n");
      out.write("\n");
      out.write("                        <li class=\"even\"><a href=\"#\">North Wesaten Province</a></li>\n");
      out.write("                        <li class=\"odd\"><a href=\"#\">Nortyh Province</a></li>\n");
      out.write("                        <li class=\"even\"><a href=\"#\">other province</a></li>\n");
      out.write("                        <li class=\"odd\"><a href=\"#\">other province</a></li>\n");
      out.write("                        <li class=\"even\"><a href=\"#\">other province</a></li>\n");
      out.write("                        <li class=\"odd\"><a href=\"#\">Central Province</a></li>\n");
      out.write("                        <li class=\"even\"><a href=\"#\">other province</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                    <div class=\"banner_adds\"> <a href=\"addPost.jsp\"><img src=\"images/putadd.jpg\" alt=\"no banner\" width=\"160\" height=\"224\" border=\"0\" /></a> </div><!-- theere is call to advertise image also-->\n");
      out.write("                </div>\n");
      out.write("                <!-- end of right content -->\n");
      out.write("            </div>\n");
      out.write("            <!-- end of main content -->\n");
      out.write("            <div class=\"footer\">\n");
      out.write("                <div class=\"left_footer\"> <img src=\"images/logo.png\" alt=\"\" width=\"89\" height=\"35\"/> </div>\n");
      out.write("                <div class=\"center_footer\"> sureson.lk<br /> </div>\n");
      out.write("                <div class=\"right_footer\"> <a href=\"#\">home</a> <a href=\"#\">about</a> <a href=\"#\">sitemap</a> <a href=\"#\">rss</a> <a href=\"#\">contact us</a> </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- end of main_container -->\n");
      out.write("        <script>\n");
      out.write("            // var myIndex1 = 0;\n");
      out.write("            var myIndex = 0;\n");
      out.write("            carousel();\n");
      out.write("            function carousel() {\n");
      out.write("                var i;\n");
      out.write("                var x = document.getElementsByClassName(\"oferta_img\");\n");
      out.write("                for (i = 0; i < x.length; i++) {\n");
      out.write("                    x[i].style.display = \"none\";\n");
      out.write("                }\n");
      out.write("                myIndex++;\n");
      out.write("                if (myIndex > x.length) {\n");
      out.write("                    myIndex = 1\n");
      out.write("                }\n");
      out.write("                x[myIndex - 1].style.display = \"block\";\n");
      out.write("                setTimeout(carousel, 1500); // Change image every 2 seconds\n");
      out.write("                //next\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            //next script\n");
      out.write("            /*    var myIndex1 = 0;\n");
      out.write("             carousel1();\n");
      out.write("             \n");
      out.write("             function carousel1() {\n");
      out.write("             var i1;\n");
      out.write("             var x1 = document.getElementsByClassName(\"oferta_img1\");\n");
      out.write("             for (i1 = 0; i1 < x1.length; i1++) {\n");
      out.write("             x1[i1].style.display = \"none\";\n");
      out.write("             }\n");
      out.write("             myIndex1++;\n");
      out.write("             if (myIndex1 > x1.length) {\n");
      out.write("             myIndex1 = 1\n");
      out.write("             }\n");
      out.write("             x[myIndex1 - 1].style.display = \"block\";\n");
      out.write("             setTimeout(carousel1, 1000); // Change image every 2 seconds\n");
      out.write("             } */\n");
      out.write("\n");
      out.write("\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
