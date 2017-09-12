<%-- 
    Document   : signup3
    Created on : Mar 25, 2017, 2:27:40 PM
    Author     : Kushan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change.lk</title>
        <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300,600'>

        <link rel="stylesheet" href="css/style.css">
        <script src="js/index.js"></script>
        <script language="javascript">


            function check(form)/*function to check userid & password*/
            {
                var x = form.pass_us.value;
                var y = form.conf_pass_us.value;
                /*the following code checkes whether the entered userid and password are matching*/
                if (x !== y) {
                    alert("Passwords are not match");/*displays error message*/
                    //response.sendRedirect("addPost.jsp");
                    //window.open('index.jsp')/*opens the target page while Id & password matches*/
                    document.getElementById("form_id").action = "newSignUp.jsp"; // Setting form action to "success.php" page
                    document.getElementById("form_id").submit(); // Submitting form
                } else {
                    document.getElementById("form_id").action = "addRegisterUser.jsp"; // Setting form action to "success.php" page
                    document.getElementById("form_id").submit(); // Submitting form
                }
            }
            //to identify browser
          /*   var ua = navigator.userAgent;
           if (ua.indexOf('Firefox') !== -1) {
                // run Firefox-specific code
                alert("firefox");
            } else if (ua.indexOf('Chrome') !== -1) {
                // run Chrome-specific code
                alert("chrome");
            } */
        </script>


    </head>

     
    <div class="cont_login">
       
        <form  id="form_id" name="form">
            <div class="cont_tabs_login">
                <ul class='ul_tabs'>
                    <!-- <li class="active"><a href="#" onclick="sign_in()">SIGN Up</a>  
                     <span class="linea_bajo_nom"></span>
                     </li> -->
                    <li class="active"><a href="newSignUp.jsp" onclick="sign_up()">SIGN UP</a><span class="linea_bajo_nom"></span> 
                    </li>  
                </ul>
            </div>
            <div class="cont_text_inputs">

                <input type="text"  class="input_form_sign d_block active_inp"   placeholder="NAME" name="name_us" required/>

                <input type="email" class="input_form_sign d_block active_inp" placeholder="email" name="emauil_us" required/>

                <input type="password" class="input_form_sign d_block  active_inp" placeholder="PASSWORD" name="pass_us" required/>  
                <input type="password" class="input_form_sign d_block active_inp" placeholder="CONFIRM PASSWORD" name="conf_pass_us" required/>
                <!--  <a href="#" class="link_forgot_pass d_block" >Forgot Password ?</a>    -->
                <div class="link_forgot_pass d_block ">
                    <p><input type="checkbox" name="terms_and_cons" /> <label for="terms_and_cons">Accept  Terms and Conditions.</label></p>

                </div>
            </div>
            <div class="cont_btn">
                <button class="btn_sign"  onclick="check(this.form)">SIGN UP</button>
                <!--  <input type="submit" value="submit" button class="btn_sign"/>-->
                <!--  <input type="submit" value="Submit"> -->
            </div>

        </form>
        
    </div>
    
   
