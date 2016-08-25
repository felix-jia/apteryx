apteryx_insert("/wireless-manager/admin-status",{["Disable"]="0",["Enable"]="1"},"0")
apteryx_insert("/wireless-manager/country-code",nil,nil)
apteryx_insert("/wireless-manager/management-ip",nil,nil)
apteryx_insert("/wireless-manager/network/*/network-id",nil,nil)
apteryx_insert("/wireless-manager/network/*/ssid",nil,nil)
apteryx_insert("/wireless-manager/network/*/vlan",nil,"1")
apteryx_insert("/wireless-manager/ap-profile/*/ap-prof-id",nil,nil)
apteryx_insert("/wireless-manager/ap-profile/*/name",nil,nil)
apteryx_insert("/wireless-manager/ap-profile/*/hardware-type",{["any"]="any",["tq3200"]="tq3200",["tq3400"]="tq3400",["tq4400"]="tq4400",["tq4600"]="tq4600"},"any")
apteryx_insert("/wireless-manager/ap-profile/*/radio/*/radio-id",{["radio1"]="1",["radio2"]="2"},nil)
apteryx_insert("/wireless-manager/ap-profile/*/radio/*/enable",{["Disable"]="0",["Enable"]="1"},nil)
apteryx_insert("/wireless-manager/ap-profile/*/radio/*/mode",{["bg"]="bg",["bg-n"]="bg-n",["n-only-g"]="n-only-g",["a"]="a",["a-n"]="a-n",["n-only-a"]="n-only-a",["a-n-ac"]="a-n-ac",["n-ac"]="n-ac"},nil)
apteryx_insert("/wireless-manager/ap-profile/*/radio/*/vap/*/vap-id",nil,nil)
apteryx_insert("/wireless-manager/ap-profile/*/radio/*/vap/*/enable",{["Disable"]="0",["Enable"]="1"},nil)
apteryx_insert("/wireless-manager/ap-profile/*/radio/*/vap/*/network-id",nil,nil)
apteryx_insert("/wireless-manager/ap-database/*/mac-address",nil,nil)
apteryx_insert("/wireless-manager/ap-database/*/location",nil,nil)
apteryx_insert("/wireless-manager/ap-database/*/ap-prof-id",nil,"1")
apteryx_insert("/wireless-manager/ap-admin/*/mac-address",nil,nil)
apteryx_insert("/wireless-manager/ap-admin/*/ip",nil,nil)
apteryx_insert("/wireless-manager/ap-admin/*/status/status",{["Unknown"]="Unknown",["Discovered"]="Discovered",["Authenticated"]="Authenticated",["Managed"]="Managed",["Failed"]="Failed"},"Unknown")
apteryx_insert("/wireless-manager/ap-admin/*/status/config-status",{["Unknown"]="Unknown",["Not-Configured"]="Not Configured",["In-Progress"]="In Progress",["Success"]="Success",["Failure"]="Failure"},"Unknown")
apteryx_insert("/wireless-manager/ap-admin/*/status/code-download-status",{["Unknown"]="Unknown",["Not-Started"]="Not Started",["Requested"]="Requested",["In-Progress"]="In Prorgess",["Failure"]="Failure",["Aborted"]="Aborted",["Waiting"]="Waiting",["Updating"]="Updating",["Timed-Out"]="Timed-Out"},"Unknown")
apteryx_insert("/wireless-manager/ap-admin/*/status/hardware-type",nil,nil)
apteryx_insert("/wireless-manager/ap-admin/*/status/software-version",nil,nil)
apteryx_insert("/wireless-manager/ap-admin/*/status/radio/*/radio-id",{["radio1"]="1",["radio2"]="2"},nil)
apteryx_insert("/wireless-manager/ap-admin/*/status/radio/*/authenticated-clients",nil,nil)
apteryx_insert("/wireless-manager/ap-admin/*/status/radio/*/transmit-power",nil,nil)
apteryx_insert("/wireless-manager/ap-admin/*/status/radio/*/manual-power-adj-status",{["not-started"]="Not Started",["requested"]="Requested",["in-progress"]="In Progress",["success"]="Success",["failure"]="Failure"},nil)
apteryx_insert("/wireless-manager/ap-admin/*/status/radio/*/channel",nil,nil)
apteryx_insert("/wireless-manager/ap-admin/*/status/radio/*/manual-channel-adj-status",{["not-started"]="Not Started",["requested"]="Requested",["in-progress"]="In Progress",["success"]="Success",["failure"]="Failure"},nil)
apteryx_insert("/wireless-manager/ap-admin/*/status/radio/*/supported-channels",nil,nil)
print("end of wireless")
