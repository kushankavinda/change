<%-- 
    Document   : sE
    Created on : Apr 11, 2017, 11:39:19 PM
    Author     : Kushan
--%>

<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%      try {
                String to = "subanimithi1@gmail.com";
                String subject = "subject";
                String msg = "email text....";
                final String from = "kaavinda92@gmail.com";
                final String password = "iwant1tologkaavinda92@gmail.com";

                Properties props = new Properties();
                props.setProperty("mail.transport.protocol", "smtp");
                props.setProperty("mail.host","localhost" /*"smtp.gmail.com"*/);
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.port", "587");
                props.put("mail.debug", "true");
                props.put("mail.smtp.socketFactory.port", "587");
                props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
                props.put("mail.smtp.socketFactory.fallback", "false");
                out.println("here come11");
                Session session1 = Session.getDefaultInstance(props,
                        new javax.mail.Authenticator() {

                    protected PasswordAuthentication getPasswordAuthentication() {

                        return new PasswordAuthentication(from, password);
                    }
                });
                out.println("here come2");
                //session.setDebug(true);  
                Transport transport = session1.getTransport();
                InternetAddress addressFrom = new InternetAddress(from);

                MimeMessage message = new MimeMessage(session1);
                message.setSender(addressFrom);
                message.setSubject(subject);
                message.setContent(msg, "text/plain");
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                out.println("here come0");
                transport.connect();

                Transport.send(message);
                transport.close();
                out.println("okay");
            } catch (MessagingException mex) {
                mex.printStackTrace();
                out.println(mex);
            } catch (Exception e) {
                out.println("error");
            }
        %>
    </body>
</html>
