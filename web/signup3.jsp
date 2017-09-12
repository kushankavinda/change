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
        

    </head>


    <div class="cont_login">
        <form action="registerUser.jsp" name="form">
            <div class="cont_tabs_login">
                <ul class='ul_tabs'>
                    <li class="active"><a href="#" onclick="sign_in()">LOGIN</a>
                        <span class="linea_bajo_nom"></span>
                    </li>
                    <li><a href="newSignUp.jsp" onclick="sign_up()">SIGN UP</a><span class="linea_bajo_nom"></span> 
                    </li>
                </ul>
            </div>
            <div class="cont_text_inputs">

                <input type="text"  class="input_form_sign " placeholder="NAME" name="name_us"  />

                <input type="email"  class="input_form_sign d_block active_inp"  placeholder="email" name="emauil_us" required/>
               
                <input type="password" class="input_form_sign d_block  active_inp" placeholder="PASSWORD" name="pass_us" />  
                <input type="password" class="input_form_sign" placeholder="CONFIRM PASSWORD" name="conf_pass_us" />

                <a href="#" class="link_forgot_pass d_block" >Forgot Password ?</a>    
                <div class="terms_and_cons d_none">
                    <p><input type="checkbox" name="terms_and_cons" /> <label for="terms_and_cons">Accept  Terms and Conditions.</label></p>

                </div>
            </div>
            <div class="cont_btn">
                <button class="btn_sign" >Login</button>

            </div>

        </form>
    </div>
