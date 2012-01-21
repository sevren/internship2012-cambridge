<%@page import="amazon.S3Sample"%>

<%String bucket= session.getAttribute("bucket").toString();
out.println(bucket);
%>

<html>
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
    - JFileUpload Applet (S3 sample)<br>
    </strong></td>
  </tr>
  <tr>
    <td align="center"><p><br>
<!-- JFileUpload Applet : Begin copy/paste -->
<script src="applet_s3.js"></script>
<!-- JFileUpload Applet : End copy/paste -->
        <br>
        <br>
        <span class="style1">current url=http://s3.amazonaws.com<br>
(Use S3 Menu to setup your Amazon S3 parameters)</span>        <br>
      </p>
    </td>
  </tr>
  <tr>
    <td align="center"><p><b><br>
    </b>
</p>
      <p><b>JFileUpload Applet - JS3Explorer</b><br>
Homepage: <a href="http://www.jfileupload.com/products/js3explorer/index.html" target="_blank">http://www.jfileupload.com</a> <br>
<br>
</p>
      <p>This product requires <a href="http://www.java.com" target="_blank">Java</a>&#8482; technology.</p></td>
  </tr>
</table>
</body>
</html>
