<%@ page language="java"%>
<% session.invalidate(); %>

<html>
<head>
<title>Internship 2012 Sanger Institute Sample </title>
</head>

<body>
<p align="center">Welcome to the Internship 2012-Sanger Institute Sample:</p>
<br>
The following application is written to be a web-based file repository:
you can Upload, Download and Delete files from a Amazon s3 system

<p align = "center">
The following test credentials have been setup in a MySql Database:
<br>
Login: testuser1 Pass:test1
<br>
Login: testuser2 Pass:test2
</p>

<p align = "center"><b> Please login in order to access the file area </b>
<br>
<%
if(request.getParameter("Failed")!=null){out.println("<font color=\"red\">"+request.getParameter("Failed").toString()+"</font>");}%>
</p>

<form  Action= "loggingin.jsp" method="post">
<p align="center"> Login: <input type = "text" name = "uname" size ="20">
Password: <input type = "password" name = "pass" size ="20">
<input type = "submit" value="login">
</p>
</form>

</body>
</html>
