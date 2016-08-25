

rm -fr /tmp/apteryx* ; killall -9 apteryxd ; LD_LIBRARY_PATH=.. ../apteryxd &

# export alias apteryx='LD_LIBRARY_PATH=. ./apteryx'

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:.."
sleep 2
../apteryx -s /system/bootloader_version 0.01
../apteryx -s /system/current_software 5.4.6
../apteryx -s /system/ram/free 520
../apteryx -s /system/ram/total 2000
../apteryx -s /system/interface/eth0/link_mtu 1500
../apteryx -s /system/interface/eth0/default_ttl 500
../apteryx -s /system/interface/eth0/prefixes/01/prefix 192.1681.1.0/24
../apteryx -s /system/interface/eth0/wa/02/haha/03/type yes

../apteryx -s /system/interface/eth1/link_mtu 001
../apteryx -s /system/interface/eth1/default_ttl 002
