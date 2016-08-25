-- Persistent Data
local multiRefObjects = {

} -- multiRefObjects
local obj1 = {
	["tunnel"] = {
		["settings"] = {
			["defaults"] = {
				["__l2tpv3_port"] = {
					["path"] = "/tunnel/settings/defaults/l2tpv3-port";
					["default"] = "1701";
				};
			};
			["__debug"] = {
				["path"] = "/tunnel/settings/debug";
				["default"] = "0";
				["value"] = {
					["enable"] = "1";
					["disable"] = "0";
				};
			};
		};
		["vti"] = nil --[[functions with upvalue not supported]];
	};
	["atmf"] = {
		["state"] = {
			["__safe_mode"] = {
				["path"] = "/atmf/state/safe-mode";
				["value"] = {
					["enabled"] = "1";
					["disabled"] = "0";
				};
			};
			["__master"] = {
				["path"] = "/atmf/state/master";
				["value"] = {
					["enabled"] = "1";
					["disabled"] = "0";
				};
			};
		};
		["recover"] = {
			["__hostname"] = {
				["path"] = "/atmf/recover/hostname";
			};
		};
		["recovery"] = {
			["__recovery_device"] = {
				["path"] = "/atmf/recovery/recovery-device";
			};
			["__recovery_type"] = {
				["path"] = "/atmf/recovery/recovery-type";
				["value"] = {
					["recover-from-controller"] = "1";
					["recover-from-unknown"] = "3";
					["recover-from-master"] = "0";
					["recover-from-unknown-master"] = "2";
				};
			};
			["__node_name"] = {
				["path"] = "/atmf/recovery/node-name";
			};
			["__status"] = {
				["path"] = "/atmf/recovery/status";
			};
			["__state"] = {
				["path"] = "/atmf/recovery/state";
				["value"] = {
					["recovering"] = "1";
					["idle"] = "0";
				};
			};
		};
		["backups"] = {
			["__scheduled_time"] = {
				["path"] = "/atmf/backups/scheduled-time";
			};
			["__enabled"] = {
				["path"] = "/atmf/backups/enabled";
				["value"] = {
					["enabled"] = "1";
					["disabled"] = "0";
				};
			};
			["locations"] = nil --[[functions with upvalue not supported]];
			["__frequency"] = {
				["path"] = "/atmf/backups/frequency";
			};
			["nodes"] = nil --[[functions with upvalue not supported]];
		};
		["topology"] = {
			["areas"] = nil --[[functions with upvalue not supported]];
			["__name"] = {
				["path"] = "/atmf/topology/name";
			};
			["__enabled"] = {
				["path"] = "/atmf/topology/enabled";
				["value"] = {
					["enabled"] = "1";
					["disabled"] = "0";
				};
			};
		};
		["group"] = {
			["user_defined"] = nil --[[functions with upvalue not supported]];
			["automatic"] = nil --[[functions with upvalue not supported]];
		};
		["proxy"] = {
			["nodes"] = nil --[[functions with upvalue not supported]];
			["areas"] = nil --[[functions with upvalue not supported]];
		};
		["provision"] = nil --[[functions with upvalue not supported]];
	};
	["licensing"] = {
		["__stored_features_initialized"] = {
			["path"] = "/licensing/stored-features-initialized";
		};
		["entitled_features_stored"] = nil --[[functions with upvalue not supported]];
		["entitled_features"] = nil --[[functions with upvalue not supported]];
	};
	["ip"] = {
		["v4"] = {
			["icmp"] = {
				["__send_destination_unreachable"] = {
					["path"] = "/ip/v4/icmp/send-destination-unreachable";
					["default"] = "1";
					["value"] = {
						["enable"] = "1";
						["disable"] = "0";
					};
				};
				["__error_ratelimit"] = {
					["path"] = "/ip/v4/icmp/error-ratelimit";
					["default"] = "1000";
				};
			};
		};
		["v6"] = {
			["icmp"] = {
				["__send_destination_unreachable"] = {
					["path"] = "/ip/v6/icmp/send-destination-unreachable";
					["default"] = "1";
					["value"] = {
						["enable"] = "1";
						["disable"] = "0";
					};
				};
				["__error_ratelimit"] = {
					["path"] = "/ip/v6/icmp/error-ratelimit";
					["default"] = "1000";
				};
			};
		};
	};
	["l2tp"] = {
		["__debug"] = {
			["path"] = "/l2tp/debug";
			["value"] = {
				["yes"] = "1";
				["no"] = "0";
			};
		};
		["tunnel"] = {
			["settings"] = nil --[[functions with upvalue not supported]];
			["status"] = nil --[[functions with upvalue not supported]];
		};
	};
	["ip_reputation"] = {
		["providers"] = nil --[[functions with upvalue not supported]];
		["__status"] = {
			["path"] = "/ip-reputation/status";
			["default"] = "0";
			["value"] = {
				["unset"] = "0";
				["disabled"] = "1";
				["loading"] = "2";
				["running"] = "3";
				["unlicensed"] = "4";
			};
		};
		["settings"] = {
			["__update_interval"] = {
				["path"] = "/ip-reputation/settings/update-interval";
				["default"] = "60";
			};
			["__protect"] = {
				["path"] = "/ip-reputation/settings/protect";
				["default"] = "0";
				["value"] = {
					["enable"] = "1";
					["disable"] = "0";
				};
			};
		};
		["categories"] = nil --[[functions with upvalue not supported]];
	};
	["ipsec"] = {
		["counters"] = nil --[[functions with upvalue not supported]];
		["policy"] = nil --[[functions with upvalue not supported]];
		["sa"] = nil --[[functions with upvalue not supported]];
		["profile"] = nil --[[functions with upvalue not supported]];
	};
	["domain_lists"] = nil --[[functions with upvalue not supported]];
	["aaa"] = {
		["services"] = nil --[[functions with upvalue not supported]];
		["__accounting_update"] = {
			["path"] = "/aaa/accounting-update";
			["default"] = "0";
		};
		["interfaces"] = nil --[[functions with upvalue not supported]];
	};
	["valid"] = nil --[[functions with upvalue not supported]];
	["dns"] = {
		["relay_settings"] = {
			["__timeout"] = {
				["path"] = "/dns/relay-settings/timeout";
				["default"] = "3";
			};
			["__source_interface_name"] = {
				["path"] = "/dns/relay-settings/source-interface-name";
			};
			["__relay"] = {
				["path"] = "/dns/relay-settings/relay";
				["default"] = "0";
				["value"] = {
					["enabled"] = "1";
					["disabled"] = "0";
				};
			};
			["__debug"] = {
				["path"] = "/dns/relay-settings/debug";
				["default"] = "0";
				["value"] = {
					["enable"] = "1";
					["disable"] = "0";
				};
			};
			["__cache_timeout"] = {
				["path"] = "/dns/relay-settings/cache-timeout";
				["default"] = "1800";
			};
			["__cache_size"] = {
				["path"] = "/dns/relay-settings/cache-size";
				["default"] = "0";
			};
			["__max_retry"] = {
				["path"] = "/dns/relay-settings/max-retry";
				["default"] = "2";
			};
			["__dead_time"] = {
				["path"] = "/dns/relay-settings/dead-time";
				["default"] = "3600";
			};
		};
	};
	["applications"] = nil --[[functions with upvalue not supported]];
	["web_control"] = {
		["settings"] = {
			["__default_action"] = {
				["path"] = "/web-control/settings/default-action";
				["default"] = "2";
				["value"] = {
					["deny"] = "2";
					["permit"] = "1";
				};
			};
			["__protect"] = {
				["path"] = "/web-control/settings/protect";
				["default"] = "0";
				["value"] = {
					["enable"] = "1";
					["disable"] = "0";
				};
			};
			["da"] = {
				["__address"] = {
					["path"] = "/web-control/settings/da/address";
				};
				["__password"] = {
					["path"] = "/web-control/settings/da/password";
				};
				["__username"] = {
					["path"] = "/web-control/settings/da/username";
				};
				["__enable"] = {
					["path"] = "/web-control/settings/da/enable";
					["default"] = "0";
					["value"] = {
						["enable"] = "1";
						["disable"] = "0";
					};
				};
			};
		};
		["statistics"] = {
			["__category_total"] = {
				["path"] = "/web-control/statistics/category-total";
			};
			["__rule_total"] = {
				["path"] = "/web-control/statistics/rule-total";
			};
			["__cache_hit"] = {
				["path"] = "/web-control/statistics/cache-hit";
			};
			["__rule_miss"] = {
				["path"] = "/web-control/statistics/rule-miss";
			};
			["__category_miss"] = {
				["path"] = "/web-control/statistics/category-miss";
			};
			["__cache_miss"] = {
				["path"] = "/web-control/statistics/cache-miss";
			};
			["__cache_size"] = {
				["path"] = "/web-control/statistics/cache-size";
			};
		};
		["rules"] = nil --[[functions with upvalue not supported]];
		["__licensed"] = {
			["path"] = "/web-control/licensed";
			["default"] = "0";
			["value"] = {
				["licensed"] = "1";
				["unlicensed"] = "0";
			};
		};
		["categories"] = nil --[[functions with upvalue not supported]];
	};
	["routing"] = {
		["ipv4"] = {
			["__next_index"] = {
				["path"] = "/routing/ipv4/next-index";
			};
			["rib"] = nil --[[functions with upvalue not supported]];
			["fib"] = nil --[[functions with upvalue not supported]];
		};
		["ipv6"] = {
			["__next_index"] = {
				["path"] = "/routing/ipv6/next-index";
			};
			["rib"] = nil --[[functions with upvalue not supported]];
			["fib"] = nil --[[functions with upvalue not supported]];
		};
	};
	["ovs"] = {
		["interfaces"] = nil --[[functions with upvalue not supported]];
	};
	["pppoe_ac"] = {
		["server_counters"] = nil --[[functions with upvalue not supported]];
		["routes"] = nil --[[functions with upvalue not supported]];
		["__debug"] = {
			["path"] = "/pppoe-ac/debug";
			["value"] = {
				["yes"] = "1";
				["no"] = "0";
			};
		};
		["memory"] = {
			["__dynamic_in_use"] = {
				["path"] = "/pppoe-ac/memory/dynamic-in-use";
			};
		};
		["service"] = nil --[[functions with upvalue not supported]];
	};
	["url_filter"] = {
		["settings"] = {
			["provider"] = {
				["__entry_count"] = {
					["path"] = "/url-filter/settings/provider/entry-count";
				};
				["__update_interval"] = {
					["path"] = "/url-filter/settings/provider/update-interval";
					["default"] = "60";
				};
				["__version"] = {
					["path"] = "/url-filter/settings/provider/version";
				};
				["__name"] = {
					["path"] = "/url-filter/settings/provider/name";
					["value"] = {
						["kaspersky"] = "kaspersky";
					};
				};
			};
			["__protect"] = {
				["path"] = "/url-filter/settings/protect";
				["default"] = "0";
				["value"] = {
					["enable"] = "1";
					["disable"] = "0";
				};
			};
			["whitelists"] = nil --[[functions with upvalue not supported]];
			["blacklists"] = nil --[[functions with upvalue not supported]];
		};
		["status"] = {
			["__engine"] = {
				["path"] = "/url-filter/status/engine";
				["default"] = "0";
				["value"] = {
					["unset"] = "0";
					["disabled"] = "1";
					["running"] = "3";
					["installing"] = "2";
				};
			};
			["__provider"] = {
				["path"] = "/url-filter/status/provider";
				["default"] = "1";
				["value"] = {
					["disabled"] = "1";
					["unlicensed"] = "3";
					["enabled"] = "2";
				};
			};
		};
	};
	["system"] = {
		["flash"] = {
			["__total"] = {
				["path"] = "/system/flash/total";
			};
			["__available"] = {
				["path"] = "/system/flash/available";
			};
			["__use"] = {
				["path"] = "/system/flash/use";
			};
			["__used"] = {
				["path"] = "/system/flash/used";
			};
		};
		["__bootloader_version"] = {
			["path"] = "/system/bootloader-version";
		};
		["ram"] = {
			["__total"] = {
				["path"] = "/system/ram/total";
			};
			["__free"] = {
				["path"] = "/system/ram/free";
			};
		};
		["__cpu_load"] = {
			["path"] = "/system/cpu-load";
		};
		["__reboot"] = {
			["path"] = "/system/reboot";
			["value"] = {
				["now"] = "1";
			};
		};
		["__build_date"] = {
			["path"] = "/system/build-date";
		};
		["__current_software"] = {
			["path"] = "/system/current-software";
		};
		["configuration"] = {
			["__state"] = {
				["path"] = "/system/configuration/state";
				["default"] = "0";
				["value"] = {
					["unknown"] = "0";
					["saved"] = "1";
					["unsaved"] = "2";
				};
			};
		};
		["__software_version"] = {
			["path"] = "/system/software-version";
		};
		["__system_name"] = {
			["path"] = "/system/system-name";
		};
	};
	["ips"] = {
		["settings"] = {
			["__protect"] = {
				["path"] = "/ips/settings/protect";
				["default"] = "0";
				["value"] = {
					["enable"] = "1";
					["disable"] = "0";
				};
			};
			["__provider"] = {
				["path"] = "/ips/settings/provider";
				["value"] = {
					["emerging-threats"] = "emerging-threats";
				};
			};
			["__update_interval"] = {
				["path"] = "/ips/settings/update-interval";
				["default"] = "60";
			};
		};
		["__status"] = {
			["path"] = "/ips/status";
			["default"] = "0";
			["value"] = {
				["unset"] = "0";
				["disabled"] = "1";
				["running"] = "3";
				["loading"] = "2";
			};
		};
		["__version"] = {
			["path"] = "/ips/version";
		};
		["categories"] = nil --[[functions with upvalue not supported]];
	};
	["assert"] = nil --[[functions with upvalue not supported]];
	["gui"] = {
		["__status"] = {
			["path"] = "/gui/status";
			["value"] = {
				["enable"] = "1";
				["disable"] = "0";
			};
		};
		["__filename"] = {
			["path"] = "/gui/filename";
		};
	};
	["telnet"] = {
		["server"] = {
			["__mode"] = {
				["path"] = "/telnet/server/mode";
				["default"] = "0";
				["value"] = {
					["ipv4"] = "1";
					["ipv6"] = "2";
					["none"] = "0";
					["all"] = "3";
				};
			};
			["__port"] = {
				["path"] = "/telnet/server/port";
				["default"] = "23";
			};
		};
	};
	["malware_protection"] = {
		["__status"] = {
			["path"] = "/malware-protection/status";
			["default"] = "0";
			["value"] = {
				["unset"] = "0";
				["disabled"] = "1";
				["installing"] = "2";
				["running"] = "3";
				["unlicensed"] = "4";
			};
		};
		["__version"] = {
			["path"] = "/malware-protection/version";
		};
		["settings"] = {
			["__protect"] = {
				["path"] = "/malware-protection/settings/protect";
				["default"] = "0";
				["value"] = {
					["enable"] = "1";
					["disable"] = "0";
				};
			};
			["__provider"] = {
				["path"] = "/malware-protection/settings/provider";
				["value"] = {
					["kaspersky"] = "kaspersky";
				};
			};
			["__update_interval"] = {
				["path"] = "/malware-protection/settings/update-interval";
				["default"] = "60";
			};
		};
	};
	["record_generator"] = {
		["records"] = nil --[[functions with upvalue not supported]];
	};
	["log"] = {
		["destinations"] = {
			["buffered"] = {
				["filters"] = nil --[[functions with upvalue not supported]];
				["__default"] = {
					["path"] = "/log/destinations/buffered/default";
					["value"] = {
						["yes"] = "1";
						["no"] = "0";
					};
				};
				["__enabled"] = {
					["path"] = "/log/destinations/buffered/enabled";
					["value"] = {
						["yes"] = "1";
						["no"] = "0";
					};
				};
			};
			["permanent"] = {
				["filters"] = nil --[[functions with upvalue not supported]];
				["__default"] = {
					["path"] = "/log/destinations/permanent/default";
					["value"] = {
						["yes"] = "1";
						["no"] = "0";
					};
				};
				["__enabled"] = {
					["path"] = "/log/destinations/permanent/enabled";
					["value"] = {
						["yes"] = "1";
						["no"] = "0";
					};
				};
			};
			["console"] = {
				["filters"] = nil --[[functions with upvalue not supported]];
				["__default"] = {
					["path"] = "/log/destinations/console/default";
					["value"] = {
						["yes"] = "1";
						["no"] = "0";
					};
				};
				["__enabled"] = {
					["path"] = "/log/destinations/console/enabled";
					["value"] = {
						["yes"] = "1";
						["no"] = "0";
					};
				};
			};
		};
		["messages"] = {
			["buffered"] = {
				["__tail"] = {
					["path"] = "/log/messages/buffered/tail";
				};
				["__all"] = {
					["path"] = "/log/messages/buffered/all";
				};
			};
			["permanent"] = {
				["__tail"] = {
					["path"] = "/log/messages/permanent/tail";
				};
				["__all"] = {
					["path"] = "/log/messages/permanent/all";
				};
			};
		};
	};
	["radius"] = {
		["servers"] = nil --[[functions with upvalue not supported]];
		["defaults"] = {
			["__retries"] = {
				["path"] = "/radius/defaults/retries";
				["default"] = "3";
			};
			["__key"] = {
				["path"] = "/radius/defaults/key";
			};
			["__timeout"] = {
				["path"] = "/radius/defaults/timeout";
				["default"] = "5";
			};
			["__deadtime"] = {
				["path"] = "/radius/defaults/deadtime";
				["default"] = "0";
			};
		};
		["groups"] = nil --[[functions with upvalue not supported]];
	};
	["cellular"] = {
		["interfaces"] = nil --[[functions with upvalue not supported]];
		["devices"] = nil --[[functions with upvalue not supported]];
		["mode_switch_configs"] = nil --[[functions with upvalue not supported]];
	};
	["traffic_control"] = {
		["interfaces"] = nil --[[functions with upvalue not supported]];
		["status"] = {
			["interfaces"] = nil --[[functions with upvalue not supported]];
		};
		["red_curves"] = nil --[[functions with upvalue not supported]];
		["rules"] = nil --[[functions with upvalue not supported]];
		["settings"] = {
			["__enable"] = {
				["path"] = "/traffic-control/settings/enable";
				["default"] = "0";
				["value"] = {
					["enable"] = "1";
					["disable"] = "0";
				};
			};
			["__debug_enable"] = {
				["path"] = "/traffic-control/settings/debug-enable";
				["default"] = "0";
				["value"] = {
					["enable"] = "1";
					["disable"] = "0";
				};
			};
		};
		["policies"] = nil --[[functions with upvalue not supported]];
	};
	["wireless_manager"] = {
		["__admin_status"] = {
			["path"] = "/wireless-manager/admin-status";
			["default"] = "0";
			["value"] = {
				["Enable"] = "1";
				["Disable"] = "0";
			};
		};
		["__management_ip"] = {
			["path"] = "/wireless-manager/management-ip";
		};
		["ap_profile"] = nil --[[functions with upvalue not supported]];
		["ap_database"] = nil --[[functions with upvalue not supported]];
		["network"] = nil --[[functions with upvalue not supported]];
		["__country_code"] = {
			["path"] = "/wireless-manager/country-code";
		};
		["ap_admin"] = nil --[[functions with upvalue not supported]];
	};
	["l2tp_memory"] = {
		["__dynamic_in_use"] = {
			["path"] = "/l2tp-memory/dynamic-in-use";
		};
	};
	["boot"] = {
		["system"] = {
			["__state"] = {
				["path"] = "/boot/system/state";
				["default"] = "1";
				["value"] = {
					["invalid"] = "2";
					["good"] = "1";
					["synchronizing"] = "5";
					["write-error"] = "3";
					["sync-failure"] = "4";
				};
			};
			["__name"] = {
				["path"] = "/boot/system/name";
			};
		};
		["system_backup"] = {
			["__state"] = {
				["path"] = "/boot/system-backup/state";
				["default"] = "1";
				["value"] = {
					["invalid"] = "2";
					["good"] = "1";
					["synchronizing"] = "5";
					["write-error"] = "3";
					["sync-failure"] = "4";
				};
			};
			["__name"] = {
				["path"] = "/boot/system-backup/name";
			};
		};
		["config_backup"] = {
			["__state"] = {
				["path"] = "/boot/config-backup/state";
				["default"] = "1";
				["value"] = {
					["invalid"] = "2";
					["good"] = "1";
					["synchronizing"] = "5";
					["write-error"] = "3";
					["sync-failure"] = "4";
				};
			};
			["__name"] = {
				["path"] = "/boot/config-backup/name";
			};
		};
		["config"] = {
			["__state"] = {
				["path"] = "/boot/config/state";
				["default"] = "1";
				["value"] = {
					["invalid"] = "2";
					["good"] = "1";
					["synchronizing"] = "5";
					["write-error"] = "3";
					["sync-failure"] = "4";
				};
			};
			["__name"] = {
				["path"] = "/boot/config/name";
				["default"] = "flash:/default.cfg";
			};
		};
	};
	["interface"] = {
		["if_alias"] = nil --[[functions with upvalue not supported]];
		["interfaces"] = nil --[[functions with upvalue not supported]];
	};
	["policy_based_routing"] = {
		["settings"] = {
			["__enable"] = {
				["path"] = "/policy-based-routing/settings/enable";
				["default"] = "0";
				["value"] = {
					["enable"] = "1";
					["disable"] = "0";
				};
			};
			["__debug_enable"] = {
				["path"] = "/policy-based-routing/settings/debug-enable";
				["default"] = "0";
				["value"] = {
					["enable"] = "1";
					["disable"] = "0";
				};
			};
		};
		["rules"] = nil --[[functions with upvalue not supported]];
	};
	["updatable_resource"] = {
		["resources"] = nil --[[functions with upvalue not supported]];
	};
	["fiber_monitor"] = {
		["status"] = nil --[[functions with upvalue not supported]];
		["config"] = nil --[[functions with upvalue not supported]];
	};
	["ntp"] = {
		["associations"] = nil --[[functions with upvalue not supported]];
		["settings"] = {
			["servers"] = nil --[[functions with upvalue not supported]];
			["restrictions"] = nil --[[functions with upvalue not supported]];
			["discard"] = {
				["__average"] = {
					["path"] = "/ntp/settings/discard/average";
					["default"] = "3";
				};
				["__minimum"] = {
					["path"] = "/ntp/settings/discard/minimum";
					["default"] = "2";
				};
			};
			["__authenticate"] = {
				["path"] = "/ntp/settings/authenticate";
				["value"] = {
					["Disabled"] = "0";
					["Enabled"] = "1";
				};
			};
			["__prefered_source"] = {
				["path"] = "/ntp/settings/prefered-source";
			};
			["keys"] = nil --[[functions with upvalue not supported]];
			["master"] = {
				["__vcs"] = {
					["path"] = "/ntp/settings/master/vcs";
				};
				["__user"] = {
					["path"] = "/ntp/settings/master/user";
				};
			};
			["__broadcast_delay"] = {
				["path"] = "/ntp/settings/broadcast-delay";
				["default"] = "0";
			};
		};
		["status"] = {
			["__reference_time"] = {
				["path"] = "/ntp/status/reference-time";
			};
			["__ref_id"] = {
				["path"] = "/ntp/status/ref-id";
			};
			["__precision"] = {
				["path"] = "/ntp/status/precision";
			};
			["__root_delay"] = {
				["path"] = "/ntp/status/root-delay";
			};
			["__status"] = {
				["path"] = "/ntp/status/status";
			};
			["__root_dispersion"] = {
				["path"] = "/ntp/status/root-dispersion";
			};
			["statistics"] = {
				["__auth_failed"] = {
					["path"] = "/ntp/status/statistics/auth-failed";
				};
				["__current_version"] = {
					["path"] = "/ntp/status/statistics/current-version";
				};
				["__bad_length"] = {
					["path"] = "/ntp/status/statistics/bad-length";
				};
				["__kod_responses"] = {
					["path"] = "/ntp/status/statistics/kod-responses";
				};
				["__older_version"] = {
					["path"] = "/ntp/status/statistics/older-version";
				};
				["__sent"] = {
					["path"] = "/ntp/status/statistics/sent";
				};
				["__rate_limited"] = {
					["path"] = "/ntp/status/statistics/rate-limited";
				};
				["__received"] = {
					["path"] = "/ntp/status/statistics/received";
				};
				["__processed"] = {
					["path"] = "/ntp/status/statistics/processed";
				};
				["__restrictions"] = {
					["path"] = "/ntp/status/statistics/restrictions";
				};
			};
			["__offset"] = {
				["path"] = "/ntp/status/offset";
			};
			["__frequency_offset"] = {
				["path"] = "/ntp/status/frequency-offset";
			};
			["__stratum"] = {
				["path"] = "/ntp/status/stratum";
			};
		};
	};
	["dpi"] = {
		["__version"] = {
			["path"] = "/dpi/version";
		};
		["__state"] = {
			["path"] = "/dpi/state";
			["default"] = "0";
			["value"] = {
				["unknown"] = "-1";
				["disabled"] = "0";
				["running"] = "5";
				["unloading"] = "4";
				["loading"] = "2";
				["failed"] = "3";
				["unlicensed"] = "1";
			};
		};
		["__statistics"] = {
			["path"] = "/dpi/statistics";
		};
		["settings"] = {
			["__provider"] = {
				["path"] = "/dpi/settings/provider";
				["value"] = {
					["procera"] = "procera";
				};
			};
			["__enable"] = {
				["path"] = "/dpi/settings/enable";
				["default"] = "0";
				["value"] = {
					["enable"] = "1";
					["disable"] = "0";
				};
			};
			["__update_interval"] = {
				["path"] = "/dpi/settings/update-interval";
				["default"] = "60";
			};
		};
	};
	["crypto"] = {
		["verify"] = nil --[[functions with upvalue not supported]];
		["__secure_mode"] = {
			["path"] = "/crypto/secure-mode";
		};
		["__running_sw_verify"] = {
			["path"] = "/crypto/running-sw-verify";
			["value"] = {
				["pass"] = "1";
				["fail"] = "0";
			};
		};
	};
	["isakmp"] = {
		["sa"] = nil --[[functions with upvalue not supported]];
		["__dynamic"] = {
			["path"] = "/isakmp/dynamic";
			["default"] = "default";
		};
		["counters"] = nil --[[functions with upvalue not supported]];
		["peers"] = nil --[[functions with upvalue not supported]];
		["debug"] = {
			["__net"] = {
				["path"] = "/isakmp/debug/net";
				["default"] = "0";
			};
			["__job"] = {
				["path"] = "/isakmp/debug/job";
				["default"] = "0";
			};
			["__ike"] = {
				["path"] = "/isakmp/debug/ike";
				["default"] = "0";
			};
			["__dmn"] = {
				["path"] = "/isakmp/debug/dmn";
				["default"] = "0";
			};
			["__mgr"] = {
				["path"] = "/isakmp/debug/mgr";
				["default"] = "0";
			};
			["__chd"] = {
				["path"] = "/isakmp/debug/chd";
				["default"] = "0";
			};
			["__knl"] = {
				["path"] = "/isakmp/debug/knl";
				["default"] = "0";
			};
			["__cfg"] = {
				["path"] = "/isakmp/debug/cfg";
				["default"] = "0";
			};
			["__enc"] = {
				["path"] = "/isakmp/debug/enc";
				["default"] = "0";
			};
		};
		["profile"] = nil --[[functions with upvalue not supported]];
	};
	["proxies"] = nil --[[functions with upvalue not supported]];
	["overtemp_monitor"] = {
		["__shutdown_essential_services"] = {
			["path"] = "/overtemp-monitor/shutdown-essential-services";
			["value"] = {
				["yes"] = "1";
				["no"] = "0";
			};
		};
		["__status"] = {
			["path"] = "/overtemp-monitor/status";
			["value"] = {
				["all-clear"] = "0";
				["on-alert"] = "1";
			};
		};
		["__shutdown_nonessential_services"] = {
			["path"] = "/overtemp-monitor/shutdown-nonessential-services";
			["value"] = {
				["yes"] = "1";
				["no"] = "0";
			};
		};
		["__shutdown_device"] = {
			["path"] = "/overtemp-monitor/shutdown-device";
			["value"] = {
				["yes"] = "1";
				["no"] = "0";
			};
		};
	};
	["entities"] = nil --[[functions with upvalue not supported]];
	["firewall"] = {
		["nat_rules"] = nil --[[functions with upvalue not supported]];
		["connection_rules"] = nil --[[functions with upvalue not supported]];
		["fw_rules"] = nil --[[functions with upvalue not supported]];
		["settings"] = {
			["__nat_enable"] = {
				["path"] = "/firewall/settings/nat-enable";
				["default"] = "0";
				["value"] = {
					["enable"] = "1";
					["disable"] = "0";
				};
			};
			["__protect"] = {
				["path"] = "/firewall/settings/protect";
				["default"] = "0";
				["value"] = {
					["enable"] = "1";
					["disable"] = "0";
				};
			};
			["__state"] = {
				["path"] = "/firewall/settings/state";
				["default"] = "0";
				["value"] = {
					["unknown"] = "-1";
					["disabled"] = "0";
					["running"] = "2";
					["loading"] = "1";
				};
			};
		};
	};
	["l2tp_profile"] = nil --[[functions with upvalue not supported]];
	["antivirus"] = {
		["statistics"] = {
			["__scan_failed"] = {
				["path"] = "/antivirus/statistics/scan-failed";
			};
			["__scan_total"] = {
				["path"] = "/antivirus/statistics/scan-total";
			};
			["__scan_skipped"] = {
				["path"] = "/antivirus/statistics/scan-skipped";
			};
			["__limit_exceeded"] = {
				["path"] = "/antivirus/statistics/limit-exceeded";
			};
			["__virus_found"] = {
				["path"] = "/antivirus/statistics/virus-found";
			};
		};
		["__status"] = {
			["path"] = "/antivirus/status";
			["default"] = "0";
			["value"] = {
				["unset"] = "0";
				["disabled"] = "1";
				["running"] = "3";
				["loading"] = "2";
				["failed"] = "4";
				["unlicensed"] = "5";
			};
		};
		["settings"] = {
			["__provider"] = {
				["path"] = "/antivirus/settings/provider";
				["value"] = {
					["kaspersky"] = "kaspersky";
				};
			};
			["__update_interval"] = {
				["path"] = "/antivirus/settings/update-interval";
				["default"] = "60";
			};
			["__limit_exceeded_action"] = {
				["path"] = "/antivirus/settings/limit-exceeded-action";
				["default"] = "0";
				["value"] = {
					["permit"] = "1";
					["deny"] = "0";
				};
			};
			["__protect"] = {
				["path"] = "/antivirus/settings/protect";
				["default"] = "0";
				["value"] = {
					["enable"] = "1";
					["disable"] = "0";
				};
			};
			["__scan_fail_action"] = {
				["path"] = "/antivirus/settings/scan-fail-action";
				["default"] = "0";
				["value"] = {
					["permit"] = "1";
					["deny"] = "0";
				};
			};
		};
		["__version"] = {
			["path"] = "/antivirus/version";
		};
	};
}
return obj1
