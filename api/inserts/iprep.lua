apteryx_insert("/ip-reputation/status",{["unset"]="0",["disabled"]="1",["loading"]="2",["running"]="3",["unlicensed"]="4"},"0")
apteryx_insert("/ip-reputation/settings/protect",{["disable"]="0",["enable"]="1"},"0")
apteryx_insert("/ip-reputation/settings/update-interval",nil,"60")
apteryx_insert("/ip-reputation/providers/*/name",{["proofpoint"]="proofpoint",["lac"]="lac"},nil)
apteryx_insert("/ip-reputation/providers/*/version",nil,nil)
apteryx_insert("/ip-reputation/providers/*/entry-count",nil,nil)
apteryx_insert("/ip-reputation/providers/*/status",{["unknown"]="0",["enabled"]="1",["unlicensed"]="2"},"0")
apteryx_insert("/ip-reputation/categories/*/name",nil,nil)
apteryx_insert("/ip-reputation/categories/*/description",nil,nil)
apteryx_insert("/ip-reputation/categories/*/action",{["alert"]="1",["deny"]="2",["disabled"]="3"},"1")
apteryx_insert("/ip-reputation/categories/*/valid",{["invalid"]="0",["valid"]="1"},"0")
