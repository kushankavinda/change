<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Change.lk</title>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
        <link rel="stylesheet" type="text/css" href="style.css" />
        <!--[if IE 6]>
        <link rel="stylesheet" type="text/css" href="iecss.css" />
        <![endif]-->
        <script type="text/javascript" src="js/boxOver.js">

        </script>

    </head>
    <body>

        <div id="main_container">
            <div id="header" >
              <!-- <div class="top_right">
                    <div class="languages">
                        <div class="lang_text"><b>Languages</b></div>
                        <a href="#" class="lang"><img src="images/en.gif" alt="" border="0" /></a> <a href="#" class="lang"><img src="images/de.gif" alt="" border="0" /></a> </div> 
                    <div class="big_banner"> <a href="#"><img src="images/banner1.jpg" alt="" border="0" /></a> </div>
                
                 </div> -->
              
           <!-- <div id="logo"> <a href="#"><img src="images/sureson.jpg" alt="" border="0" width="382" height="85" /></a> </div> -->
            </div>
            <div id="main_content">
                <div id="menu_tab">
                    <ul class="menu">
                        <li><a href="#" class="nav"> Home</a></li>
                        <li class="divider"></li>
                        <li><a href="allAdds.jsp" class="nav">All Adds</a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav">Specials</a></li>
                        <li class="divider"></li>
                        <li><a href="addPost.jsp" class="nav">My Posts</a></li>
                            <%
                                if (session.getAttribute("password") != null) {
                            %>
                        <li class="divider"></li>
                        <li><a href="viewMyPost.jsp" class="nav">View My Posts</a></li>
                            <%}%>
                        <li class="divider"></li>
                        <li><a href="contact.html" class="nav">Contact Us</a></li>
                        <li class="divider"></li>
                        <li><a href="details.html" class="nav">Details</a></li>

                        <%
                            if ((session.getAttribute("password")) != null) {%>
                        <li class="divider"></li>
                        <li><a href="logOut.jsp" class="nav">Log Out</a></li>
                            <% } else  {%>
                        <li class="divider"></li>
                        
                        <li><a href="newModal.jsp"  class="nav">Sign Up</a></li>
     
                            <%}%>
                        <%/*String ad=session.getAttribute("email").toString();
                          String pass=session.getAttribute("password").toString();
                          if(ad.equals("changeAdmin@gmail.com") && pass.equals("admin@123")){
                               out.print("mww");*/
                        %>
                       <!-- <li class="divider"></li>
                        <li><a href="admin.jsp" class="nav">Admin Pannel</a></li> -->
                        <%//}%>
                        

                    </ul>
                </div>
                <!-- end of menu tab -->
               <!-- <div class="crumb_navigation"> Navigation: <span class="current">Home Page</span> </div> -->
                <div class="left_content">
                    <div class="title_box">Categories</div>
                    <ul class="left_menu">
                        <li class="even"><a href="viewCat.jsp?cat=Moblie Phones">Moblie Phones</a></li>
                        <li class="odd"><a href="viewCat.jsp?cat=Vehicals">Vehicals</a></li>
                        <li class="even"><a href="#">Lands</a></li>
                        <li class="odd"><a href="#">Houses</a></li>
                        <li class="even"><a href="#">Laptops</a></li>
                        <li class="odd"><a href="#">Tabs</a></li>
                        <li class="even"><a href="#">Clothes</a></li>
                        <li class="odd"><a href="viewCat.jsp?cat=pillows">Pillows</a></li>
                        <li class="even"><a href="#">Furnitures</a></li>
                        <li class="odd"><a href="#">Tutions</a></li>
                        <li class="even"><a href="#">Power Banks</a></li>
                        <li class="odd"><a href="#">Others</a></li>
                    </ul>
                    <div class="title_box">Special Products</div>
                    <%try{String s = "SELECT * FROM admimnaddtable";
                    %> <%@include file="viewMoreDetails.jsp"%> <%
                                resultSet = statement.executeQuery(s);
                                String a=null;
                                while (resultSet.next()) {
                                    a=resultSet.getString("post_id");%>
                                
                    <div class="border_box">
                        <div class="product_title"><a href="viewDetails2.jsp?value=<%=a%>"><%=resultSet.getString("name")%></a></div>
                        <div class="product_img"><a href="viewDetails2.jsp?value=<%=a%>"><img src="getImage2.jsp?id=<%=a%>" alt="" border="0" width="150" height="150" /></a></div>
                        <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
                        <%}}catch(Exception e){} %>
                    </div>
                    <div class="title_box">Newsletter</div>
                    <div class="border_box">
                        <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
                        <a href="#" class="join">subscribe</a> </div>
                        <div class="banner_adds"> <a href="addPost.jsp"><img src="images/putadd.jpg" width="160" height="160" alt="" border="0" /></a> </div>
                </div>
                <!-- end of left content -->
                <div class="center_content">
                    <div class="oferta">

                        <%
                            try{
                                  int appro = 0;
                                  int approMin=0;
                                  //String sql = "SELECT max(approved_id) FROM approvedSpecialAdds";
                                  //select maximun approved id valu from approvedspecilaladds table
                                  String sql="SELECT MAX(CONVERT(approved_id,UNSIGNED)) as approved_id  FROM approvedspecialadds";
                                  String sqlMin="SELECT MIN(CONVERT(approved_id,UNSIGNED)) as approved_id  FROM approvedspecialadds";
                                  //String sql = "SELECT * FROM approvedSpecialadds";
                                  %> <%@include file="viewMoreDetails.jsp"%> <%
                                  resultSet = statement.executeQuery(sql);
                                  while (resultSet.next()) {
                                  appro = Integer.parseInt(resultSet.getString("approved_id"));
                                  }
                                  //out.println(appro);
                                  //select min approved_id from approvedspecialadds
                                  resultSet = statement.executeQuery(sqlMin);
                                  while (resultSet.next()) {
                                  approMin = Integer.parseInt(resultSet.getString("approved_id"));
                                  }
                                 // out.println(approMin);
                        %>
                           <% for (int i = 8; i < appro+1; i++) {
                               String sqlNew = "SELECT * FROM specialproduct";
                               resultSet = statement.executeQuery(sqlNew);
                                  while (resultSet.next()) {
                                  //appro = Integer.parseInt(resultSet.getString("approved_id"));
                                    if(Integer.parseInt(resultSet.getString("post_id"))==i){
                                        %><a href="viewDetails1.jsp?value=<%=i%>"><img src="getImage1.jsp?id=<%=i%>" width="165" height="113" border="0" class="oferta_img" alt="" /></a><%   
                                    }
                                  }
                           %>            
                        
                            <% }}catch(Exception e){}%> 



                        <div class="oferta_details">
                            <div class="oferta_title">Special Products And Offers</div>
                            <div class="oferta_text"> You Can Advertise Here By Clicking Bellow Button.Want To Sell Quickly Advertise Here.<br><b>Contact Now 0719987280</b> </div>
                            <a href="specialAdd.jsp" class="prod_buy">Advertise here</a> </div> 

                    </div>


                    <div class="center_title_bar">Latest Products</div>

                    <%                          //find last raw id number of post table
                        int last_Raw = 18;
                        String iId;
                    %>
                    <%for (int i = last_Raw;i > last_Raw - 1; i--) {%>
                    <%  String heading, price;
                        String sql3 = "SELECT name,price,post_id FROM post ORDER BY post_id DESC LIMIT 3";
                    %> <%@include file="viewMoreDetails.jsp"%> <%                            
                        resultSet = statement.executeQuery(sql3);
                        while (resultSet.next()) {
                            heading = resultSet.getString("name");
                            price = resultSet.getString("price");
                            iId = resultSet.getString("post_id");
                    %>    
                    <div class="prod_box">
                        <div class="center_prod_box">

                            <div class="product_title"><a href="viewDetails.jsp?value=<%=iId%>"><%=heading%></a></div>
                            <div class="product_img"><a href="viewDetails.jsp?value=<%=iId%>"> <img src="getImage.jsp?id=<%=iId%>"  width="80px" height="70px" alt="" border="0" class="oferta_img1" /> </a>  </div>

                            <div class="prod_price"><span class="reduce">350$</span> <span class="price"><%=price%></span></div>

                        </div>
                        <div class="prod_details_tab"> <a href="#" class="prod_buy">Add to Cart</a> <a href="#" class="prod_details">Details</a> </div>
                    </div>

                    <%}
                        }%>



                    <div class="center_title_bar">All Products</div>



                    <%  try {
                            String heading1, price1, iId1;
                            String sql1 = "SELECT name,price,post_id FROM post ORDER BY post_id ASC LIMIT 3";
                    %> <%@include file="viewMoreDetails.jsp"%> <%                                 
                        resultSet = statement.executeQuery(sql1);
                        while (resultSet.next()) {
                            heading1 = resultSet.getString("name");
                            price1 = resultSet.getString("price");
                            iId1 = resultSet.getString("post_id");
                    %>    
                    <div class="prod_box">
                        <div class="center_prod_box">

                            <div class="product_title"><a href="viewDetails.jsp?value=<%=iId1%>"><%=heading1%></a></div>
                            <div class="product_img"><a href="viewDetails.jsp?value=<%=iId1%>"> <img src="getImage.jsp?id=<%=iId1%>"  width="80px" height="70px" alt="" border="0" class="oferta_img1" /> </a>  </div>

                            <div class="prod_price"><span class="reduce">350$</span> <span class="price"><%=price1%></span></div>

                        </div>
                        <div class="prod_details_tab"> <a href="#" class="prod_buy">Add to Cart</a> <a href="#" class="prod_details">Details</a> </div>
                    </div>

                    <%}
                        } catch (Exception e) {

                        }
                    %>


                    <div class="center_title_bar">Recomended Products</div>

                    <div class="prod_box">
                        <div class="center_prod_box">

                            <div class="product_title"><a href="#">Makita 156 MX-VL</a></div>
                            <%for (int i = 8;
                                        i < 9; i++) {%>
                            <div class="product_img"><a href="specialProductDetails.jsp?value=<%=i%>"> <img src="getImage.jsp?id=<%=i%>"  width="80px" height="70px" alt="" border="0" class="oferta_img1" /> </a>  </div>
                            <%}%>
                            <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
                        </div>
                        <div class="prod_details_tab"> <a href="#" class="prod_buy">Add to Cart</a> <a href="#" class="prod_details">Details</a> </div>
                    </div>
                    <div class="prod_box">
                        <div class="center_prod_box">

                            <div class="product_title"><a href="#">Makita 156 MX-VL</a></div>
                            <%for (int i = 9;
                                        i < 10; i++) {%>
                            <div class="product_img"><a href="viewDetails.jsp?value=<%=i%>"> <img src="getImage.jsp?id=<%=i%>"  width="80px" height="70px" alt="" border="0" class="" /> </a>  </div>
                            <%}%>
                            <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
                        </div>
                        <div class="prod_details_tab"> <a href="#" class="prod_buy">Add to Cart</a> <a href="#" class="prod_details">Details</a> </div>
                    </div>
                    <div class="prod_box">
                        <div class="center_prod_box">

                            <div class="product_title"><a href="#">Makita 156 MX-VL</a></div>
                            <%for (int i = 10;
                                        i < 11; i++) {%>
                            <div class="product_img"><a href="specialProductDetails.jsp?value=<%=i%>"> <img src="getImage.jsp?id=<%=i%>"  width="80px" height="70px" alt="" border="0" class="" /> </a>  </div>
                            <%}%>
                            <div class="prod_price"><span class="reduce">Rs 1,000</span> <span class="price">Rs 500</span></div>
                        </div>
                        <div class="prod_details_tab"> <a href="#" class="prod_buy">Add to Cart</a>  <a href="#" class="prod_details">Details</a> </div>
                    </div>

                </div>
                <!-- end of center content -->
                <div class="right_content">
                    <div class="title_box">Search</div>
                    <div class="border_box">


                        <form action="search.jsp" method="post">
                            <input type="text" name="searchWord" class="newsletter_input" placeholder="search here"  />
                            <input type="submit"  style="border-radius: 2px ; background-color: buttonhighlight "/>
                        </form> 



                    </div>
                    <!--      <div class="shopping_cart">
                              <div class="title_box">Shopping cart</div>
                              <div class="cart_details"> 3 items <br />
                                  <span class="border_cart"></span> Total: <span class="price">350$</span> </div>
                              <div class="cart_icon"><a href="#"><img src="images/shoppingcart.png" alt="" width="35" height="35" border="0" /></a></div>
                          </div> -->
                    <!--     <div class="title_box">What?s new</div>
                         <div class="border_box">
                             <div class="product_title"><a href="#">Motorola 156 MX-VL</a></div>
                             <div class="product_img"><a href="#"><img src="images/p2.jpg" alt="" border="0" /></a></div>
                             <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
                         </div> -->
                    <div class="title_box">Areas</div>
                    <ul class="left_menu">

                        <li class="even"><a href="viewArea.jsp?area=western">Western Province</a></li>
                        <li class="odd"><a href="viewArea.jsp?area=southern">Southren Province</a></li>

                        <li class="even"><a href="#">North Wesaten Province</a></li>
                        <li class="odd"><a href="#">Nortyh Province</a></li>
                        <li class="even"><a href="#">other province</a></li>
                        <li class="odd"><a href="#">other province</a></li>
                        <li class="even"><a href="#">other province</a></li>
                        <li class="odd"><a href="#">Central Province</a></li>
                        <li class="even"><a href="#">other province</a></li>
                    </ul>
                    <div class="banner_adds"> <a href="addPost.jsp"><img src="images/putadd.jpg" alt="no banner" width="160" height="224" border="0" /></a> </div><!-- theere is call to advertise image also-->
                </div>
                <!-- end of right content -->
            </div>
            <!-- end of main content -->
            <div class="footer">
                <div class="left_footer"> <img src="images/logo.png" alt="" width="89" height="35"/> </div>
                <div class="center_footer"> sureson.lk<br /> </div>
                <div class="right_footer"> <a href="#">home</a> <a href="#">about</a> <a href="#">sitemap</a> <a href="#">rss</a> <a href="#">contact us</a> </div>
            </div>
        </div>
        <!-- end of main_container -->
        <script>
            // var myIndex1 = 0;
            var myIndex = 0;
            carousel();
            function carousel() {
                var i;
                var x = document.getElementsByClassName("oferta_img");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                myIndex++;
                if (myIndex > x.length) {
                    myIndex = 1
                }
                x[myIndex - 1].style.display = "block";
                setTimeout(carousel, 1500); // Change image every 2 seconds
                //next

            }

            //next script
            /*    var myIndex1 = 0;
             carousel1();
             
             function carousel1() {
             var i1;
             var x1 = document.getElementsByClassName("oferta_img1");
             for (i1 = 0; i1 < x1.length; i1++) {
             x1[i1].style.display = "none";
             }
             myIndex1++;
             if (myIndex1 > x1.length) {
             myIndex1 = 1
             }
             x[myIndex1 - 1].style.display = "block";
             setTimeout(carousel1, 1000); // Change image every 2 seconds
             } */


        </script>
    </body>
</html>
