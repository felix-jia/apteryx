apteryx_insert("/ipsec/policy/*/name",nil,nil)
apteryx_insert("/ipsec/policy/*/profile",nil,"default")
apteryx_insert("/ipsec/policy/*/local-address",nil,nil)
apteryx_insert("/ipsec/policy/*/remote-address",nil,nil)
apteryx_insert("/ipsec/policy/*/local-name",nil,nil)
apteryx_insert("/ipsec/policy/*/remote-name",nil,nil)
apteryx_insert("/ipsec/policy/*/mode",{["transport"]="0",["tunnel"]="1"},"0")
apteryx_insert("/ipsec/policy/*/local-ts/*/id",nil,nil)
apteryx_insert("/ipsec/policy/*/local-ts/*/family",{["AF_INET"]="2",["AF_INET6"]="10"},"2")
apteryx_insert("/ipsec/policy/*/local-ts/*/address",nil,nil)
apteryx_insert("/ipsec/policy/*/local-ts/*/protocol",nil,nil)
apteryx_insert("/ipsec/policy/*/local-ts/*/port",nil,nil)
apteryx_insert("/ipsec/policy/*/local-ts/*/mark",nil,nil)
apteryx_insert("/ipsec/policy/*/remote-ts/*/id",nil,nil)
apteryx_insert("/ipsec/policy/*/remote-ts/*/family",{["AF_INET"]="2",["AF_INET6"]="10"},"2")
apteryx_insert("/ipsec/policy/*/remote-ts/*/address",nil,nil)
apteryx_insert("/ipsec/policy/*/remote-ts/*/protocol",nil,nil)
apteryx_insert("/ipsec/policy/*/remote-ts/*/port",nil,nil)
apteryx_insert("/ipsec/policy/*/remote-ts/*/mark",nil,nil)
apteryx_insert("/ipsec/profile/*/name",nil,nil)
apteryx_insert("/ipsec/profile/*/replay-window",nil,"32")
apteryx_insert("/ipsec/profile/*/lifetime/seconds",nil,"28800")
apteryx_insert("/ipsec/profile/*/pfs",{["disabled"]="-1",["2"]="2",["5"]="5",["14"]="14",["15"]="15",["16"]="16",["18"]="18"},"-1")
apteryx_insert("/ipsec/profile/*/transform/*/id",nil,nil)
apteryx_insert("/ipsec/profile/*/transform/*/protocol",{["ah"]="2",["esp"]="3"},"3")
apteryx_insert("/ipsec/profile/*/transform/*/integrity",{["SHA1"]="1",["SHA256"]="2",["SHA512"]="4"},"2")
apteryx_insert("/ipsec/profile/*/transform/*/encryption",{["3DES"]="1",["AES128"]="2",["AES192"]="3",["AES256"]="4",["none"]="5"},"4")
apteryx_insert("/ipsec/sa/*/spi",nil,nil)
apteryx_insert("/ipsec/sa/*/local-ts",nil,nil)
apteryx_insert("/ipsec/sa/*/remote-ts",nil,nil)
apteryx_insert("/ipsec/sa/*/peer",nil,nil)
apteryx_insert("/ipsec/sa/*/mode",{["transport"]="0",["tunnel"]="1"},"0")
apteryx_insert("/ipsec/sa/*/protocol",{["ah"]="2",["esp"]="3"},"3")
apteryx_insert("/ipsec/sa/*/integrity",{["SHA1"]="1",["SHA256"]="2",["SHA512"]="4"},"2")
apteryx_insert("/ipsec/sa/*/encryption",{["3DES"]="1",["AES128"]="2",["AES192"]="3",["AES256"]="4"},"4")
apteryx_insert("/ipsec/sa/*/dh-group",{["2"]="2",["5"]="5",["14"]="14",["15"]="15",["16"]="16",["18"]="18"},"16")
apteryx_insert("/ipsec/sa/*/lifetime/seconds",nil,nil)
apteryx_insert("/ipsec/sa/*/lifetime/kilobytes",nil,nil)
apteryx_insert("/ipsec/counters/*",nil,nil)
apteryx_insert("/isakmp/debug/cfg",nil,"0")
apteryx_insert("/isakmp/debug/chd",nil,"0")
apteryx_insert("/isakmp/debug/dmn",nil,"0")
apteryx_insert("/isakmp/debug/enc",nil,"0")
apteryx_insert("/isakmp/debug/ike",nil,"0")
apteryx_insert("/isakmp/debug/job",nil,"0")
apteryx_insert("/isakmp/debug/knl",nil,"0")
apteryx_insert("/isakmp/debug/mgr",nil,"0")
apteryx_insert("/isakmp/debug/net",nil,"0")
apteryx_insert("/isakmp/profile/*/name",nil,nil)
apteryx_insert("/isakmp/profile/*/version",{["1"]="1",["2"]="2"},"2")
apteryx_insert("/isakmp/profile/*/mode",{["main"]="0",["aggressive"]="1"},"0")
apteryx_insert("/isakmp/profile/*/authentication",{["pre-shared"]="1",["rsa-sig"]="3"},"1")
apteryx_insert("/isakmp/profile/*/lifetime/seconds",nil,"86400")
apteryx_insert("/isakmp/profile/*/dpd-interval",nil,"30")
apteryx_insert("/isakmp/profile/*/dpd-timeout",nil,"150")
apteryx_insert("/isakmp/profile/*/transform/*/id",nil,nil)
apteryx_insert("/isakmp/profile/*/transform/*/integrity",{["SHA1"]="1",["SHA256"]="2",["SHA512"]="4"},"2")
apteryx_insert("/isakmp/profile/*/transform/*/encryption",{["3DES"]="1",["AES128"]="2",["AES192"]="3",["AES256"]="4"},"4")
apteryx_insert("/isakmp/profile/*/transform/*/dh-group",{["2"]="2",["5"]="5",["14"]="14",["15"]="15",["16"]="16",["18"]="18"},"16")
apteryx_insert("/isakmp/sa/*/cookies",nil,nil)
apteryx_insert("/isakmp/sa/*/peer",nil,nil)
apteryx_insert("/isakmp/sa/*/version",nil,nil)
apteryx_insert("/isakmp/sa/*/authentication",{["pre-shared"]="1",["rsa-sig"]="3"},"1")
apteryx_insert("/isakmp/sa/*/integrity",{["SHA1"]="1",["SHA256"]="2",["SHA512"]="4"},"2")
apteryx_insert("/isakmp/sa/*/encryption",{["3DES"]="1",["AES128"]="2",["AES192"]="3",["AES256"]="4"},"4")
apteryx_insert("/isakmp/sa/*/dpd",{["inactive"]="0",["active"]="1"},"0")
apteryx_insert("/isakmp/sa/*/dh-group",{["2"]="2",["5"]="5",["14"]="14",["15"]="15",["16"]="16",["18"]="18"},"16")
apteryx_insert("/isakmp/sa/*/nat-traversal",{["inactive"]="0",["active"]="1"},"0")
apteryx_insert("/isakmp/sa/*/lifetime/seconds",nil,nil)
apteryx_insert("/isakmp/sa/*/lifetime/kilobytes",nil,nil)
apteryx_insert("/isakmp/sa/*/state",{["created"]="1",["connecting"]="2",["established"]="3",["passive"]="4",["rekeying"]="5",["deleting"]="6",["destroying"]="7"},"1")
apteryx_insert("/isakmp/peers/*/name",nil,nil)
apteryx_insert("/isakmp/peers/*/type",{["hostname"]="0",["address"]="1",["ufqdn"]="2"},nil)
apteryx_insert("/isakmp/peers/*/profile",nil,"default")
apteryx_insert("/isakmp/peers/*/key",nil,nil)
apteryx_insert("/isakmp/peers/*/ip",nil,nil)
apteryx_insert("/isakmp/dynamic",nil,"default")
apteryx_insert("/isakmp/counters/*",nil,nil)
