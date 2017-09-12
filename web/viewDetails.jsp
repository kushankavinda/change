<%-- 
    Document   : viewDetails
    Created on : Mar 31, 2017, 10:48:08 PM
    Author     : Kushan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Tools Shop - Details</title>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
        <link rel="stylesheet" type="text/css" href="style.css" />
        <!--[if IE 6]>
        <link rel="stylesheet" type="text/css" href="iecss.css" />
        <![endif]-->
        <script type="text/javascript" src="js/boxOver.js"></script>
        <script>
            PositionX = 100;
            PositionY = 100;
            defaultWidth = 500;
            defaultHeight = 500;
            var AutoClose = true;
            if (parseInt(navigator.appVersion.charAt(0)) >= 4) {
                var isNN = (navigator.appName == "Netscape") ? 1 : 0;
                var isIE = (navigator.appName.indexOf("Microsoft") != -1) ? 1 : 0;
            }
            var optNN = 'scrollbars=no,width=' + defaultWidth + ',height=' + defaultHeight + ',left=' + PositionX + ',top=' + PositionY;
            var optIE = 'scrollbars=no,width=150,height=100,left=' + PositionX + ',top=' + PositionY;
            function popImage(imageURL, imageTitle) {
                if (isNN) {
                    imgWin = window.open('about:blank', '', optNN);
                }
                if (isIE) {
                    imgWin = window.open('about:blank', '', optIE);
                }
                with (imgWin.document) {
                    writeln('<html><head><title>Loading...</title><style>body{margin:0px;}</style>');
                    writeln('<sc' + 'ript>');
                    writeln('var isNN,isIE;');
                    writeln('if (parseInt(navigator.appVersion.charAt(0))>=4){');
                    writeln('isNN=(navigator.appName=="Netscape")?1:0;');
                    writeln('isIE=(navigator.appName.indexOf("Microsoft")!=-1)?1:0;}');
                    writeln('function reSizeToImage(){');
                    writeln('if (isIE){');
                    writeln('window.resizeTo(300,300);');
                    writeln('width=300-(document.body.clientWidth-document.images[0].width);');
                    writeln('height=300-(document.body.clientHeight-document.images[0].height);');
                    writeln('window.resizeTo(width,height);}');
                    writeln('if (isNN){');
                    writeln('window.innerWidth=document.images["George"].width;');
                    writeln('window.innerHeight=document.images["George"].height;}}');
                    writeln('function doTitle(){document.title="' + imageTitle + '";}');
                    writeln('</sc' + 'ript>');
                    if (!AutoClose)
                        writeln('</head><body bgcolor=ffffff scroll="no" onload="reSizeToImage();doTitle();self.focus()">')
                    else
                        writeln('</head><body bgcolor=ffffff scroll="no" onload="reSizeToImage();doTitle();self.focus()" onblur="self.close()">');
                    writeln('<img name="George" src=' + imageURL + ' style="display:block"></body></html>');
                    close();
                }
            }

        </script>
    </head>
    <%
        String imageId = request.getParameter("value");
    %>
    <body>
        <div id="main_container">
            <div id="header">
                <div class="top_right">
                    <div class="languages">
                        <div class="lang_text">Languages:</div>
                        <a href="#" class="lang"><img src="images/en.gif" alt="" border="0" /></a> <a href="#" class="lang"><img src="images/de.gif" alt="" border="0" /></a> </div>
                    <div class="big_banner"> <a href="#"><img src="images/banner728(before).jpg" alt="" border="0" /></a> </div>
                </div>
                <div id="logo"> <a href="#"><img src="images/(before)logo.png" alt="" border="0" width="182" height="85" /></a> </div>
            </div>
            <div id="main_content">
                <div id="menu_tab">
                    <ul class="menu">
                        <li><a href="index.jsp" class="nav"> Home </a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav">Products</a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav">Specials</a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav">My account</a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav">Sign Up</a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav">Shipping </a></li>
                        <li class="divider"></li>
                        <li><a href="contact.html" class="nav">Contact Us</a></li>
                        <li class="divider"></li>
                        <li><a href="details.html" class="nav">Details</a></li>
                    </ul>
                </div>
                <!-- end of menu tab -->
                <div class="crumb_navigation"> Navigation: <span class="current">Home</span> </div>
                <div class="left_content">
                    <div class="title_box">Categories</div>
                    <ul class="left_menu">
                        <li class="odd"><a href="#">Power Tools</a></li>
                        <li class="even"><a href="#">Air Tools</a></li>
                        <li class="odd"><a href="#">Hand Tools</a></li>
                        <li class="even"><a href="#">Accessories</a></li>
                        <li class="odd"><a href="#">Workwear</a></li>
                        <li class="even"><a href="#">Spare Parts</a></li>
                        <li class="odd"><a href="#">Power Tools</a></li>
                        <li class="even"><a href="#">Air Tools</a></li>
                        <li class="odd"><a href="#">Hand Tools</a></li>
                        <li class="even"><a href="#">Accessories</a></li>
                        <li class="odd"><a href="#">Workwear</a></li>
                        <li class="even"><a href="#">Spare Parts</a></li>
                    </ul>
                    <div class="title_box">Special Products</div>
                    <div class="border_box">
                        <div class="product_title"><a href="#">Makita 156 MX-VL</a></div>
                        <div class="product_img"><a href="#"><img src="images/p1.jpg" alt="" border="0" /></a></div>
                        <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
                    </div>
                    <div class="title_box">Newsletter</div>
                    <div class="border_box">
                        <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
                        <a href="#" class="join">subscribe</a> </div>
                    <div class="banner_adds"> <a href="#"><img src="images/bann2.jpg" alt="" border="0" /></a> </div>
                </div>
                <!-- end of left content -->
                <div class="center_content">
                    <div class="center_title_bar">Makita 156 MX-VL</div>
                    <div class="prod_box_big">
                        <div class="center_prod_box_big">
                            <div class="product_img_big"> <a href="javascript:popImage('getImage.jsp?id=<%=imageId%>','Some Title')" title="header=[Zoom] body=[&nbsp;] fade=[on]"><img src="getImage.jsp?id=<%=imageId%>" alt="" border="0" width="165" height="113"/></a>
                                <div class="thumbs"> <a href="#" title="header=[Thumb1] body=[&nbsp;] fade=[on]"><img src="" alt="" border="0" /></a> <a href="#" title="header=[Thumb2] body=[&nbsp;] fade=[on]"><img src="" alt="" border="0" /></a> <a href="#" title="header=[Thumb3] body=[&nbsp;] fade=[on]"><img src="" alt="" border="0" /></a> </div>
                            </div>
                            <div class="details_big_box">
                                <%@include file="viewMoreDetails.jsp" %>
                                <%  String p;
                                    String sql = "SELECT * FROM post where post_id=" + imageId;

                                    resultSet = statement.executeQuery(sql);
                                    while (resultSet.next()) {%>


                                <div class="product_title_big"><%=resultSet.getString("category")%></div>
                                <div class="specifications"> Available: <span class="blue">In stock</span><br />


                                    Area: <span class="blue"> <%=resultSet.getString("area")%></span><br />
                                    Address: <span class="blue"> <%=resultSet.getString("address")%></span><br />
                                    Include :<span class="blue"> TVA</span><br />
                                    Description :<span class="blue"> <%=resultSet.getString("descr")%> </span><br />
                                    <%
                                        p = resultSet.getString("price");
                                     /*   if (p.equals(null)) {
                                            p = "negotiable";
                                        } */
                                    %>
                                    Price: <span class="blue"> <%=p%></span><br />

                                    Phone: <span class="blue"> <%=resultSet.getString("phone")%></span><br />   
                                    <%}%>
                                </div>
                                <div class="prod_price_big"><span class="reduce">350$</span> <span class="price">270$</span></div>
                                <a href="#" class="prod_buy">add to cart</a> <a href="#" class="prod_compare">compare</a> </div>
                        </div>
                    </div>
                </div>
                <!-- end of center content -->
                <div class="right_content">
                    <div class="title_box">Search</div>
                    <div class="border_box">
                        <input type="text" name="newsletter" class="newsletter_input" value="keyword"/>
                        <a href="#" class="join">search</a> </div>
                    <div class="shopping_cart">
                        <div class="title_box">Shopping cart</div>
                        <div class="cart_details"> 3 items <br />
                            <span class="border_cart"></span> Total: <span class="price">350$</span> </div>
                        <div class="cart_icon"><a href="#"><img src="images/shoppingcart.png" alt="" width="35" height="35" border="0" /></a></div>
                    </div>
                    <div class="title_box">What’s new</div>
                    <div class="border_box">
                        <div class="product_title"><a href="#">Motorola 156 MX-VL</a></div>
                        <div class="product_img"><a href="#"><img src="images/p2.jpg" alt="" border="0" /></a></div>
                        <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
                    </div>
                    <div class="title_box">Manufacturers</div>
                    <ul class="left_menu">
                        <li class="odd"><a href="#">Bosch</a></li>
                        <li class="even"><a href="#">Samsung</a></li>
                        <li class="odd"><a href="#">Makita</a></li>
                        <li class="even"><a href="#">LG</a></li>
                        <li class="odd"><a href="#">Fujitsu Siemens</a></li>
                        <li class="even"><a href="#">Motorola</a></li>
                        <li class="odd"><a href="#">Phillips</a></li>
                        <li class="even"><a href="#">Beko</a></li>
                    </ul>
                    <div class="banner_adds"> <a href="#"><img src="images/bann1.jpg" alt="" border="0" /></a> </div>
                </div>
                <!-- end of right content -->
            </div>
            <!-- end of main content -->
            <div class="footer">
                <div class="left_footer"> <img src="images/footer_logo.png" alt="" width="89" height="42"/> </div>
                <div class="center_footer"> Template name. All Rights Reserved 2008<br />
                    <a href="http://csscreme.com"><img src="images/csscreme.jpg" alt="csscreme" title="csscreme" border="0" /></a><br />
                    <img src="images/payment.gif" alt="" /> </div>
                <div class="right_footer"> <a href="#">home</a> <a href="#">about</a> <a href="#">sitemap</a> <a href="#">rss</a> <a href="#">contact us</a> </div>
            </div>
        </div>
        <!-- end of main_container -->
    </body>
</html>

