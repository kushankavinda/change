<%@page import="java.lang.String"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
   String result;
   // Recipient's email ID needs to be mentioned.
   String to= "subanimithi1@gmail.com";

   // Sender's email ID needs to be mentione
     String from = "kaavinda92@gmail.com";
   
String username = "subanimithi1@gmail.com";//"subanimithi kapuwa";
   // Assuming you are sending email from localhost
   String host = "smtp.gmail.com";//"localhost";

   // Get system properties object
   Properties properties = System.getProperties();
// properties.put("mail.smtp.port",587);
   // Setup mail server
   properties.setProperty("mail.smtp.host", host);
   properties.put("mail.smtp.port",25);
   properties.put("mail.smtp.starttls.enable", "true");
    //here kush add
 /* properties.put("mail.smtp.user",from); 
     properties.put("mail.smtp.password","iwant1tologsubanimithi1@gmail.com");
     properties.put("mail.smtp.host", host); 
    // properties.put("mail.smtp.port",587); 
    //props.put("mail.debug", "true"); 
     properties.put("mail.smtp.auth", "true"); 
     properties.put("mail.smtp.starttls.enable","true"); 
     properties.put("mail.smtp.EnableSSL.enable","true");
   */
    //here kush end
   // Get the default Session object.
    
   Session mailSession = Session.getDefaultInstance(properties);
   if((mailSession.getProperties()) !=null){
   out.println();
   }else{
    out.println("noo");
   }
   try{
        String password = "iwant1tologsubanimithi1@gmail.com";
          // Create a default MimeMessage object.
      MimeMessage message = new MimeMessage(mailSession);
      out.println("come 1");
      // Set From: header field of the header.
      message.setFrom(new InternetAddress(from));
      // Set To: header field of the header.
      out.println("come 2");
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      // Set Subject: header field
      out.println("come 3");
      message.setSubject("This is the Subject Line!");
      // Now set the actual message
      out.println("come 4");
      message.setText("This is actual message");
      // Send message
      out.println("come 5");
      //Transport.connect(host, user, password);
      // Transport transport = session.getTransport("smtp");
      Transport transport = mailSession.getTransport("smtp");
      out.println("come 6");
      transport.connect(to,password); //In place of username and password, i am giving my gmail account username and password.
      out.println("come 7");
     
      transport.send(message);
      out.println("come 6");
     // transport.close();
      result = "Sent message successfully....";
   }catch (MessagingException mex) {
      mex.printStackTrace();
      out.println(mex);
      out.println();
      result = "Error: unable to send message....";
   } 
    
%>
<html>
<head>
<title>Send Email using JSP</title>
</head>
<body>
<center>
<h1>Send Email using JSP</h1>
</center>
<p align="center">
<% 
   out.println("Result: " + result + "\n");
%>
</p>
</body>
</html>