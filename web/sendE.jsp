<%-- 
    Document   : sendE
    Created on : Apr 11, 2017, 5:14:56 PM
    Author     : Kushan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ page import="java.util.*, javax.mail.*, javax.mail.internet.*" %>
<%
    String host = "localhost";
    String user = "user@domain.com";
    String pass = "xxxxx";
    String to = "user@example.com";
    String from = "user@domain.com";
    String subject = "Test subject";
    String messageText = "Test body";
    boolean sessionDebug = false;
    
    Properties props = System.getProperties();
    props.put("mail.host", host);
    props.put("mail.transport.protocol", "smtp");
props.put("mail.smtp.auth", "true");
     props.put("mail.smtp.port",26);
    // Uncomment 5 SMTPS-related lines below and comment out 2 SMTP-related lines above and 1 below if you prefer to use SSL
// props.put("mail.transport.protocol", "smtps");
// props.put("mail.smtps.auth", "true");
    // props.put("mail.smtps.port", "465");
    // props.put("mail.smtps.ssl.trust", host);
    Session mailSession = Session.getDefaultInstance(props, null);
    mailSession.setDebug(sessionDebug);
    try{
    Message msg = new MimeMessage(mailSession);
    msg.setFrom(new InternetAddress(from));
    InternetAddress[] address = {new InternetAddress(to)};
    msg.setRecipients(Message.RecipientType.TO, address);
    msg.setSubject(subject);
    msg.setSentDate(new Date());
    msg.setText(messageText);
    Transport transport = mailSession.getTransport("smtp");
// Transport transport = mailSession.getTransport("smtps");
transport.connect(host, user, pass);
    transport.sendMessage(msg, msg.getAllRecipients());
    transport.close();
    }catch (MessagingException mex) {
      mex.printStackTrace();
      out.println(mex);
    }
    %>
    </body>
</html>
