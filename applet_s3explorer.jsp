<%String bucket= session.getAttribute("bucket").toString();%>

<html>
<title>Download</title>
<script type="text/javascript">
   <%out.println("var obj1 = \""+bucket+"\";");%>
</script>
<style type="text/css">
<!--
.temp {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
}
.style1 {color: #666666}
-->
</style>
<body>
<table width="100%"  border="0" cellpadding="0" cellspacing="0" class="temp">
  <tr>
    <td align="center"><strong><br>
    - JFileUpload Applet S3Explorer extension<br>
    </strong></td>
     <tr >
		<p align ="center">How to download: On the applet(right hand side) navigate to the file or folder to download, then on the <br> (left hand side) navigate to the desired download destination and click the download button</p>
    </tr>
  </tr>
  <tr>
    <td align="center"><p><br>
<!-- JFileUpload Applet : Begin copy/paste -->
<script src="applet_s3explorer.js"></script>
<!-- JFileUpload Applet : End copy/paste -->
        <br>
        <br>
        <span class="style1">current url=http://s3.amazonaws.com<br>
        </span>        <br>
      </p>
    </td>
  </tr>
  <tr>
    <td align="center"><p><b><br>
    </b>
</p>
      <p><b> This applet and it's code is from:JFileUpload Applet - JS3Explorer</b><br>
Homepage: <a href="http://www.jfileupload.com/products/js3explorer/index.html" target="_blank">http://www.jfileupload.com</a> <br>
<br>
</p>
      <p>This product requires <a href="http://www.java.com" target="_blank">Java</a>&#8482; technology.</p></td>
  </tr>
</table>

 <br>
		<p align ="center">When done downloading, please click the "Back-to-FileArea" button to return to the FileArea</p>
    

<form  Action= "filearea.jsp" method="post">
<input type = "submit" value ="Back-to-FileArea">
</form>

<form  Action= "index.jsp" method="post">
<input type = "submit" value ="Log-out">
</form>

</body>
</html>
