<%@page import="amazon.S3magic" import="java.io.*,java.util.*"%>
<html>
<head>
<title>Delete</title>
</head>
<body>
<%
	String bucket= session.getAttribute("bucket").toString();
out.println(" Here you can see a summary of all the files you have choosen to delete");

	out.println("Now Deleteing: <br>");
	
	S3magic s3 = new S3magic();  
	Enumeration paramNames = request.getParameterNames();

	while(paramNames.hasMoreElements()) 
	{
		String paramName = (String)paramNames.nextElement();
		out.println("<tr><td>" + paramName + "</td><br>");
		s3.delete(bucket,paramName);
	}
	out.println("Done!- please press \"Back-to-FileArea\" to view changes");
	%> 
	<form  Action= "filearea.jsp" method="post">
	<input type = "submit" value="Back-to-FileArea">
	</form>

	<form  Action= "index.jsp" method="post">
	<input type = "submit" value ="Log-out">
	</form>
 
</body>
</html>

