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
                        <li><a href="#" class="nav"> Home </a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav">Products</a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav">Specials</a></li>
                        <li class="divider"></li>
                        <li><a href="#" class="nav">My account</a></li>
                        <li class="divider"></li>
                        <li><a href="signup.html" class="nav">Sign Up</a></li>
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
           
                <!-- end of left content -->
             
              



                 
                   
                </div>
                <!-- end of center content -->
              
                <!-- end of right content -->
           </div>
            <!-- end of main content -->
       <!--     <div class="footer">
                <div class="left_footer"> <img src="images/footer_logo.png" alt="" width="89" height="42"/> </div>
                <div class="center_footer"> Template name. All Rights Reserved 2008<br />
                    <a href="http://csscreme.com"><img src="images/csscreme.jpg" alt="csscreme" title="csscreme" border="0" /></a><br />
                    <img src="images/payment.gif" alt="" /> </div>
                <div class="right_footer"> <a href="#">home</a> <a href="#">about</a> <a href="#">sitemap</a> <a href="#">rss</a> <a href="#">contact us</a> </div>
            </div> -->
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
        
                <%@include file="signup3.jsp" %>
                 
                
    </body>
</html>
