<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Change.lk</title>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
        <link rel="stylesheet" type="text/css" href="style.css" />
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


            <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>


                <link rel="stylesheet" href="css/style1.css">

                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> 
                    <style>
                        form {
                            border: 3px solid #f1f1f1;
                        }

                        input[type=text], input[type=password] {
                            width: 100%;
                            padding: 12px 20px;
                            margin: 8px 0;
                            display: inline-block;
                            border: 1px solid #ccc;
                            box-sizing: border-box;
                        }

                        button {
                            background-color: #4CAF50;
                            color: white;
                            padding: 14px 20px;
                            margin: 8px 0;
                            border: none;
                            cursor: pointer;
                            width: 100%;
                        }

                        button:hover {
                            opacity: 0.8;
                        }

                        .cancelbtn {
                            width: auto;
                            padding: 10px 18px;
                            background-color: #f44336;
                        }

                        .imgcontainer {
                            text-align: center;
                            margin: 24px 0 12px 0;
                        }

                        img.avatar {
                            width: 40%;
                            border-radius: 50%;
                        }

                        .container {
                            padding: 16px;
                        }

                        span.psw {
                            float: right;
                            padding-top: 16px;
                        }

                        /* Change styles for span and cancel button on extra small screens */
                        @media screen and (max-width: 300px) {
                            span.psw {
                                display: block;
                                float: none;
                            }
                            .cancelbtn {
                                width: 100%;
                            }
                        }
                    </style>
                    <style>
                        /* The Modal (background) */
                        .modal {
                            display: none; /* Hidden by default */
                            position: fixed; /* Stay in place */
                            z-index: 1; /* Sit on top */
                            padding-top: 100px; /* Location of the box */
                            left: 0;
                            top: 0;
                            width: 100%; /* Full width */
                            height: 100%; /* Full height */
                            overflow: auto; /* Enable scroll if needed */
                            background-color: rgb(0,0,0); /* Fallback color */
                            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
                        }

                        /* Modal Content */
                        .modal-content {
                            background-color: #fefefe;
                            margin: auto;
                            padding: 20px;
                            border: 1px solid #888;
                            width: 80%;
                        }

                        /* The Close Button */
                        .close {
                            color: #aaaaaa;
                            float: right;
                            font-size: 28px;
                            font-weight: bold;
                        }

                        .close:hover,
                        .close:focus {
                            color: #000;
                            text-decoration: none;
                            cursor: pointer;
                        }
                    </style>
                    <style>
                        .loginBtn {
                            box-sizing: border-box;
                            position: relative;
                            /* width: 13em;  - apply for fixed size */
                            margin: 0.2em;
                            padding: 0 15px 0 46px;
                            border: none;
                            text-align: left;
                            line-height: 34px;
                            white-space: nowrap;
                            border-radius: 0.2em;
                            font-size: 16px;
                            color: #FFF;
                        }
                        .loginBtn:before {
                            content: "";
                            box-sizing: border-box;
                            position: absolute;
                            top: 0;
                            left: 0;
                            width: 34px;
                            height: 100%;
                        }
                        .loginBtn:focus {
                            outline: none;
                        }
                        .loginBtn:active {
                            box-shadow: inset 0 0 0 32px rgba(0,0,0,0.1);
                        }


                        /* Facebook */
                        .loginBtn--facebook {
                            background-color: #4C69BA;
                            background-image: linear-gradient(#4C69BA, #3B55A0);
                            /*font-family: "Helvetica neue", Helvetica Neue, Helvetica, Arial, sans-serif;*/
                            text-shadow: 0 -1px 0 #354C8C;
                        }
                        .loginBtn--facebook:before {
                            border-right: #364e92 1px solid;
                            background: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/14082/icon_facebook.png') 6px 6px no-repeat;
                        }
                        .loginBtn--facebook:hover,
                        .loginBtn--facebook:focus {
                            background-color: #5B7BD5;
                            background-image: linear-gradient(#5B7BD5, #4864B1);
                        }


                        /* Google */
                        .loginBtn--google {
                            /*font-family: "Roboto", Roboto, arial, sans-serif;*/
                            background: #DD4B39;
                        }
                        .loginBtn--google:before {
                            border-right: #BB3F30 1px solid;
                            background: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/14082/icon_google.png') 6px 6px no-repeat;
                        }
                        .loginBtn--google:hover,
                        .loginBtn--google:focus {
                            background: #E74B37;
                        }
                    </style>
                    </head>
                    <body>

                        <div id="main_container">
                            <!-- The Modal -->
                            <div id="myModal" class="modal" >

                                <!-- Modal content -->
                                <div class="modal-content" style="width : 30%">

                                    <span class="close">&times;</span>

                                    <form action="#">


                                        <div class="container" style="width : 100%">
                                            <label><b>Username</b></label>
                                            <input type="text" placeholder="Enter Username" name="uname" required>

                                                <label><b>Password</b></label>
                                                <input type="password" placeholder="Enter Password" name="psw" required>

                                                    <button type="submit">Login</button>
                                                    <input type="checkbox" checked="checked"> Remember me
                                                        </div>

                                                        <div class="container" style="background-color:#f1f1f1">
                                                            </b></label>   <a href="#"><button type="button" class="cancelbtn">Create Account</button></a>
                                                            <span class="psw">Forgot <a href="#">password?</a></span>
                                                        </div>
                                                        </form>


                                                        <a href="#"><button class="loginBtn loginBtn--facebook">
                                                                Login with Facebook
                                                            </button></a>

                                                        <button class="loginBtn loginBtn--google">
                                                            Login with Google
                                                        </button>

                                                        </div>

                                                        </div>
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
                                                                    <li><a id="home" href="index.jsp" class="nav"> Home</a></li>
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
                                                                        <% } else {%>
                                                                    <li class="divider"></li>
                                                                    <li style="float:right;margin-right: 20px;margin-top: 0"> <div class="title_box" id="myLoginBtn" style="color:red">Sign Up</div></li>





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
                                                                %> <%@include file="viewMoreDetails.jsp"%> <%                        resultSet = statement.executeQuery(s);
    String a = null;
    while (resultSet.next()) {
        a = resultSet.getString("post_id");%>

                                                                <div class="border_box">
                                                                    <div class="product_title"><a href="viewDetails2.jsp?value=<%=a%>"><%=resultSet.getString("name")%></a></div>
                                                                    <div class="product_img"><a href="viewDetails2.jsp?value=<%=a%>"><img src="getImage2.jsp?id=<%=a%>" alt="" border="0" width="150" height="150" /></a></div>
                                                                    <div class="prod_price"><span class="reduce">350$</span> <span class="price">270$</span></div>
                                                                    <%}
                                                                        }
                                                                        catch(Exception e

                                                                        
                                                                        
                                                                    ){} %>
                                                                </div>
                                                                <div class="title_box">Newsletter</div>
                                                                <div class="border_box">
                                                                    <input type="text" name="newsletter" class="newsletter_input" value="your email"/>
                                                                    <a href="#" class="join">subscribe</a> </div>
                                                                <div class="banner_adds"> <a href="addPost.jsp"><img src="images/putadd.jpg" width="160" height="160" alt="" border="0" /></a> </div>
                                                            </div>
                                                            <!-- end of left content -->
                                                            <div class="center_content">

                                                                <div class="" style="width : 100%">

                                                                    <form action="addRegisterUser.jsp">
                                                                        <div class="container" style="width : 100%">
                                                                            <label><b>Username</b></label>
                                                                            <input type="text" placeholder="Enter Username" name="uname" required>
                                                                                <label><b>Email</b></label>
                                                                                <input type="text" placeholder="Enter email" name="emauil_us" required>

                                                                                    <label><b>Phone Number</b></label>
                                                                                    <input type="text" placeholder="Enter Phone Number" name="phone" required>

                                                                                        <label><b>Password</b></label>
                                                                                        <input type="password" placeholder="Enter Password" name="psw" required>
                                                                                            <label><b>Confirm Password</b></label>
                                                                                            <input type="password" placeholder="Enter Password" name="psw1" required>

                                                                                                <button type="submit">Register</button>
                                                                                                <input type="checkbox" checked="checked"> Remember me
                                                                                                    </div>


                                                                                                    </form>


                                                                                                    <a href="#"><button class="loginBtn loginBtn--facebook">
                                                                                                            Login with Facebook
                                                                                                        </button></a>

                                                                                                    <button class="loginBtn loginBtn--google">
                                                                                                        Login with Google
                                                                                                    </button>

                                                                                                    </div>


                                                                                                    </div>
                                                                                                    <!-- end of center content -->
                                                                                                    <div class="right_content">
                                                                                                        <div class="title_box">Search</div>
                                                                                                        <div class="border_box">


                                                                                                            <form action="search.jsp" method="post" style="height:100%">
                                                                                                                <input  type="text" name="searchWord"  placeholder="search here" style="height:50%" />
                                                                                                                <input style="height:50%" type="submit"  style="height:10px;font-size: 20px"/>
                                                                                                            </form>  



                                                                                                        </div>

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


                                                                                                    <script>
                                                                                                        // Get the modal
                                                                                                        var modal = document.getElementById('myModal');

                                                                                                        // Get the button that opens the modal
                                                                                                        var btn = document.getElementById("myLoginBtn");

                                                                                                        // Get the <span> element that closes the modal
                                                                                                        var span = document.getElementsByClassName("close")[0];

                                                                                                        // When the user clicks the button, open the modal 
                                                                                                        btn.onclick = function () {
                                                                                                            modal.style.display = "block";
                                                                                                        }

                                                                                                        // When the user clicks on <span> (x), close the modal
                                                                                                        span.onclick = function () {
                                                                                                            modal.style.display = "none";
                                                                                                        }

                                                                                                        // When the user clicks anywhere outside of the modal, close it
                                                                                                        window.onclick = function (event) {
                                                                                                            if (event.target == modal) {
                                                                                                                modal.style.display = "none";
                                                                                                            }
                                                                                                        }
                                                                                                    </script>
                                                                                                    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

                                                                                                    <script  src="js/index1.js"></script>

                                                                                                    </body>
                                                                                                    </html>
