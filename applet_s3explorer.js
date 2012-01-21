<!--
var _info = navigator.userAgent;
var _ns = false;
var _ns6 = false;
var _ie = (_info.indexOf("MSIE") > 0 && _info.indexOf("Win") > 0 && _info.indexOf("Windows 3.1") < 0);
if (_info.indexOf("Opera") > 0) _ie = false;
var _ns = (navigator.appName.indexOf("Netscape") >= 0 && ((_info.indexOf("Win") > 0 && _info.indexOf("Win16") < 0) || (_info.indexOf("Sun") > 0) || (_info.indexOf("Linux") > 0) || (_info.indexOf("AIX") > 0) || (_info.indexOf("OS/2") > 0) || (_info.indexOf("IRIX") > 0)));
var _ns6 = ((_ns == true) && (_info.indexOf("Mozilla/5") >= 0));
if (_ie == true) {
  document.writeln('<OBJECT classid="clsid:8AD9C840-044E-11D1-B3E9-00805F499D93" WIDTH="768" HEIGHT="320" NAME="fileupload" codebase="http://java.sun.com/update/1.4.2/jinstall-1_4-windows-i586.cab#Version=1,4,0,0">');
}
else if (_ns == true && _ns6 == false) { 
  // BEGIN: Update parameters below for NETSCAPE 3.x and 4.x support.
  document.write('<EMBED ');
  document.write('type="application/x-java-applet;version=1.4" ');
  document.write('CODE="jfileupload.upload.client.MApplet.class" ');
  document.write('JAVA_CODEBASE="./" ');
  document.write('ARCHIVE="lib/jfileupload.jar,lib/httpimpl.jar,lib/chttpclient.jar,lib/clogging.jar,lib/s3upload.jar,lib/explorerui.jar,lib/s3explorer.jar" ');
  document.write('NAME="fileupload" ');
  document.write('WIDTH="768" ');
  document.write('HEIGHT="320" ');
  document.write('url="http://s3.amazonaws.com" ');
  document.write('encoding="UTF-8" ');
  document.write('resume="true" ');
  document.write('resources="i18n_bar_s3" ');
  document.write('folderdepth="-1" ');
  document.write('param1="relativefilename" ');
  document.write('value1="true" ');
  document.write('param2="s3bucket" ');
  document.write('value2="'+obj1+'" ');
  document.write('param3="awsaccesskeyid" ');
  document.write('value3="AKIAIBY2OKJDT4IAEMEQ" ');
  document.write('param4="awssecretkey" ');
  document.write('value4="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" ');  
  document.write('uihelper="jfileupload.transfer.client.s3design.S3UIHelper" ');
  document.write('uihelperresources="i18n_helper_s3" ');
  document.write('resources="i18n_bar_s3" ');
  document.write('transferui="jfileupload.transfer.client.explorer.s3.ui.S3ExplorerTransferUI" ');
  document.write('transferuiparam2="modefilesystem" ');
  document.write('transferuivalue2="jfileupload.transfer.client.explorer.s3.S3RemoteTFileSystem" ');
  document.write('transferuiparam3="modedownload" ');
  document.write('transferuivalue3="jfileupload.transfer.client.explorer.s3.S3DownloadTransfer" ');
  document.write('transferuiresources="i18n_pane_s3" ');
  document.write('mode="jfileupload.transfer.client.s3.rest.PUTUploadTransfer" ');
  document.write('scriptable=true ');
  document.writeln('pluginspage="http://java.sun.com/products/plugin/index.html#download"><NOEMBED>');
  // END
}
else {
  document.writeln('<APPLET CODE="jfileupload.upload.client.MApplet.class" JAVA_CODEBASE="./" ARCHIVE="lib/jfileupload.jar,lib/httpimpl.jar,lib/chttpclient.jar,lib/clogging.jar,lib/s3upload.jar,lib/explorerui.jar,lib/s3explorer.jar" WIDTH="768" HEIGHT="320" NAME="fileupload">');
}
// BEGIN: Update parameters below for INTERNET EXPLORER, FIREFOX, SAFARI, OPERA, MOZILLA, NETSCAPE 6+ support.
document.writeln('<PARAM NAME=CODE VALUE="jfileupload.upload.client.MApplet.class">');
document.writeln('<PARAM NAME=CODEBASE VALUE="./">');
document.writeln('<PARAM NAME=ARCHIVE VALUE="lib/jfileupload.jar,lib/httpimpl.jar,lib/chttpclient.jar,lib/clogging.jar,lib/s3upload.jar,lib/explorerui.jar,lib/s3explorer.jar">');
document.writeln('<PARAM NAME=NAME VALUE="fileupload">');
document.writeln('<PARAM NAME="type" VALUE="application/x-java-applet;version=1.4">');
document.writeln('<PARAM NAME="scriptable" VALUE="true">');
document.writeln('<PARAM NAME="url" VALUE="http://s3.amazonaws.com">');
document.writeln('<PARAM NAME="encoding" VALUE="UTF-8">');
document.writeln('<PARAM NAME="resume" VALUE="true">');
document.writeln('<PARAM NAME="folderdepth" VALUE="-1">');
document.writeln('<PARAM NAME="param1" VALUE="relativefilename">');
document.writeln('<PARAM NAME="value1" VALUE="true">');
document.writeln('<PARAM NAME="param2" VALUE="s3bucket">');
document.writeln('<PARAM NAME="value2" VALUE="'+obj1+'">');
document.writeln('<PARAM NAME="param3" VALUE="awsaccesskeyid">');
document.writeln('<PARAM NAME="value3" VALUE="AKIAIBY2OKJDT4IAEMEQ">');
document.writeln('<PARAM NAME="param4" VALUE="awssecretkey">');
document.writeln('<PARAM NAME="value4" VALUE="SlE9K4Z76caHJSOsf0vFMHoUOXpJgCrYppUSQgJo">');
document.writeln('<PARAM NAME="hidebar" VALUE="false">');
document.writeln('<PARAM NAME="uihelper" VALUE="jfileupload.transfer.client.explorer.s3.ui.S3ExplorerUIHelper">');
document.writeln('<PARAM NAME="uihelperresources" VALUE="i18n_helper_s3">');
document.writeln('<PARAM NAME="resources" VALUE="i18n_bar_s3">');
document.writeln('<PARAM NAME="transferui" VALUE="jfileupload.transfer.client.explorer.s3.ui.S3ExplorerTransferUI">');
document.writeln('<PARAM NAME="transferuiparam2" VALUE="modefilesystem">');
document.writeln('<PARAM NAME="transferuivalue2" VALUE="jfileupload.transfer.client.explorer.s3.S3RemoteTFileSystem">');
document.writeln('<PARAM NAME="transferuiparam3" VALUE="modedownload">');
document.writeln('<PARAM NAME="transferuivalue3" VALUE="jfileupload.transfer.client.explorer.s3.S3DownloadTransfer">');
document.writeln('<PARAM NAME="transferuiresources" VALUE="i18n_pane_s3">');
document.writeln('<PARAM NAME="mode" VALUE="jfileupload.transfer.client.s3.rest.PUTUploadTransfer">');
// END
if (_ie == true) {
  document.writeln('</OBJECT>');
}
else if (_ns == true && _ns6 == false) {
  document.writeln('</NOEMBED></EMBED>');
}
else {
  document.writeln('</APPLET>');
}
//-->
