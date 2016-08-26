apteryx_insert("/interface/if-alias/*",nil,nil)
apteryx_insert("/interface/interfaces/*/name",nil,nil)
apteryx_insert("/interface/interfaces/*/if-index",nil,nil)
apteryx_insert("/interface/interfaces/*/status/admin-status",{["admin-down"]="0",["admin-up"]="1"},nil)
apteryx_insert("/interface/interfaces/*/status/oper-status",nil,nil)
apteryx_insert("/interface/interfaces/*/status/flags",nil,nil)
apteryx_insert("/interface/interfaces/*/status/phys-address",nil,nil)
apteryx_insert("/interface/interfaces/*/status/promisc",{["promisc-off"]="0",["promisc-on"]="1"},nil)
apteryx_insert("/interface/interfaces/*/status/qdisc",nil,nil)
apteryx_insert("/interface/interfaces/*/status/mtu",nil,nil)
apteryx_insert("/interface/interfaces/*/status/speed",nil,nil)
apteryx_insert("/interface/interfaces/*/status/max-speed",nil,nil)
apteryx_insert("/interface/interfaces/*/status/master-ifindex",nil,nil)
apteryx_insert("/interface/interfaces/*/status/duplex",{["Auto"]="0",["Full"]="1",["Half"]="2"},nil)
apteryx_insert("/interface/interfaces/*/status/polarity",{["Auto"]="0",["MDI"]="1",["MDI-X"]="2"},nil)
apteryx_insert("/interface/interfaces/*/status/mru",nil,nil)
apteryx_insert("/interface/interfaces/*/status/arptype",nil,nil)
apteryx_insert("/interface/interfaces/*/status/rxq",nil,nil)
apteryx_insert("/interface/interfaces/*/status/txqlen",nil,nil)
apteryx_insert("/interface/interfaces/*/status/txq",nil,nil)
apteryx_insert("/interface/interfaces/*/status/ipv4/addresses/*/ip",nil,nil)
apteryx_insert("/interface/interfaces/*/status/ipv4/addresses/*/mask",nil,nil)
apteryx_insert("/interface/interfaces/*/status/ipv4/addresses/*/origin",{["Other"]="0",["Configured"]="1",["DHCP"]="2",["Link-Local"]="3",["Random"]="4"},nil)
apteryx_insert("/interface/interfaces/*/status/ipv4/addresses/*/secondary",{["secondary"]="1",["not"]="0"},"0")
apteryx_insert("/interface/interfaces/*/status/ipv4/addresses/*/remote",nil,nil)
apteryx_insert("/interface/interfaces/*/status/ipv4/addresses/*/type",{["broadcast"]="0",["point-to-point"]="1"},"0")
apteryx_insert("/interface/interfaces/*/status/ipv4/neighbours/*/ip",nil,nil)
apteryx_insert("/interface/interfaces/*/status/ipv4/neighbours/*/phys-address",nil,nil)
apteryx_insert("/interface/interfaces/*/status/ipv4/neighbours/*/l2-ifindex",nil,nil)
apteryx_insert("/interface/interfaces/*/status/ipv4/neighbours/*/state",{["incomplete"]="1",["reachable"]="2",["stale"]="4",["delay"]="8",["probe"]="16",["failed"]="32",["noarp"]="64",["permanent"]="128"},nil)
apteryx_insert("/interface/interfaces/*/status/ipv6/addresses/*/ip",nil,nil)
apteryx_insert("/interface/interfaces/*/status/ipv6/addresses/*/mask",nil,nil)
apteryx_insert("/interface/interfaces/*/status/ipv6/addresses/*/origin",{["Other"]="0",["Configured"]="1",["DHCP"]="2",["Link-Local"]="3",["Random"]="4"},nil)
apteryx_insert("/interface/interfaces/*/status/ipv6/addresses/*/remote",nil,nil)
apteryx_insert("/interface/interfaces/*/status/ipv6/addresses/*/type",{["broadcast"]="0",["point-to-point"]="1"},"0")
apteryx_insert("/interface/interfaces/*/status/ipv6/neighbours/*/ip",nil,nil)
apteryx_insert("/interface/interfaces/*/status/ipv6/neighbours/*/phys-address",nil,nil)
apteryx_insert("/interface/interfaces/*/settings/admin-status",{["admin-down"]="0",["admin-up"]="1"},nil)
apteryx_insert("/interface/interfaces/*/l2",{["l2-if"]="1"},"0")
apteryx_insert("/interface/interfaces/*/l3",{["l3-if"]="1"},"0")