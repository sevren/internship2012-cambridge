<%@ page language="java" import="authentication.sqlmagic" import="java.sql.*" import="java.lang.*" import="java.io.*"%>

<html>
<head>
</head>
<body>
<%
String user = new String("");
String bucket = new String("");
sqlmagic query = new sqlmagic(); 
int userexists=0;
userexists=query.try_auth(request.getParameter("uname").toString(),request.getParameter("pass").toString());
if(userexists!=0)
{
	user =query.getUser();
	bucket=user+"-intern";
     session.setAttribute( "user", user );
     session.setAttribute("bucket",bucket);

%>
<jsp:forward page="filearea.jsp">
<jsp:param name="Success" value="Success" /> 
    </jsp:forward>
<%
}
else
{
%>
<jsp:forward page="index.jsp">
<jsp:param name="Failed" value="Authentication failed user does not exist or password is wrong!"/> 
    </jsp:forward>
<%
}

%>
</body>
</html>
