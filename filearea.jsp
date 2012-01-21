<%@page import="amazon.S3magic" import="java.util.ArrayList"%>
<html>
<head>
<title>Filearea</title>
</head>
<body>
<%
String user= session.getAttribute("user").toString();
String bucket= session.getAttribute("bucket").toString();
ArrayList<String> usrfiles = new ArrayList<String>();

	session.setAttribute("bucket",bucket);
	out.println("<p align=\"center\">Welcome: "+user+", to the file area</p><br>"); 
	out.println(" Here you can see a listing of all your files, You may Delete, Upload, and Download files");
	out.println("<ul><li>To Delete files: Check each file that you wish to delete and press the delete button. You will be redirected to a summary page");
	out.println("<li>To Upload files: Press the \"Upload-Files\" button, you will be taken to the java applet page in order to upload files to the S3 bucket");
	out.println("<li>To Download files: Press the \"Download-Files\", you will be taken to the java applet page  in order to download from the S3 bucket</ul>");
	S3magic s3 = new S3magic();  
	usrfiles=s3.getFiles(bucket);

	out.println("<form  Action= \"delete.jsp\" method=\"post\">");
	out.println("<table border=\"1\">");
	out.println("<tr>");
	out.println("<th>Files</th>");
	out.println("<th>Select?</th>");
	out.println("</tr>");
	 for (int i = 0; i < usrfiles.size(); i++) 
	 {
		String s=usrfiles.get(i);
		out.println("<tr>");
		out.println("<td>");
		out.println(usrfiles.get(i));
		out.println("</td>");
		out.println("<td style=\"text-align: center;\">");
		out.println("<input type=\"checkbox\" name=\""+s+"\" />");
		out.println("</td>");
		out.println("</tr>");
	 }
	 out.println("</table>");
	out.println("<input type = \"submit\" value =\"Delete-Files\">");
	out.println("</form>");

	out.println("<form  Action= \"applet_s3.jsp\" method=\"post\">");
	out.println("<input type = \"submit\" value =\"Upload-Files\">");
	out.println("</form>");

	out.println("<form  Action= \"applet_s3explorer.jsp\" method=\"post\">");
	out.println("<input type = \"submit\" value =\"Download-Files\">");
	out.println("</form>");


	out.println("<form  Action= \"index.jsp\" method=\"post\">");
	out.println("<input type = \"submit\" value =\"log-out\">");
	out.println("</form>");

%>  

</body>
</html>
