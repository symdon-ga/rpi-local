RasberryPI: qemu-system-arm -kernel .vendor/kernel-qemu-4.19.50-buster -dtb .vendor/versatile-pb.dtb -m 256 -M versatilepb -cpu arm1176 -serial stdio  -append "rw console=ttyAMA0 root=/dev/sda2 rootfstype=ext4 loglevel=8 rootwait fsck.repair=yes memtest=1" -drive file=.vendor/2019-09-26-raspbian-buster-lite.img,format=raw -no-reboot

