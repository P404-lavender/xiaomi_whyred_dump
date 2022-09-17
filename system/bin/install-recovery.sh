#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:33903950:dacc4b2a4cedefb04f0ce1f55072f7f31c89e817; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:27743562:2ec04575791210c02736efaf5258d3d07d6bd650 EMMC:/dev/block/bootdevice/by-name/recovery dacc4b2a4cedefb04f0ce1f55072f7f31c89e817 33903950 2ec04575791210c02736efaf5258d3d07d6bd650:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
