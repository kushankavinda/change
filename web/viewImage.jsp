<html>
    <head>
        <title>View Image</title>
    </head>
    
    <body>
    
        <b>View | <a href="index.jsp">Upload</a></b><br/><br/>
        
		<%
		String id = request.getParameter("id");
		%>
                <img src="getImage.jsp?id=<%=id%>" width="200px" height="200px"/>
 
    </body>
</html>