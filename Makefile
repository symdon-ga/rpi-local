QEMU_RPI_KERNEL_REV := 9f53718ba5b05ea4270671f4cfa6a1b5a0b67381

PHONY: all
all: .vendor/versatile-pb.dtb .vendor/kernel-qemu-4.19.50-buster
	pwd

.vendor:
	mkdir -p $(CURDIR)/.vendor


.vendor/2019-09-26-raspbian-buster-lite.img: .vendor
	if [ ! -e .vendor/2019-09-26-raspbian-buster-lite.img ]; then \
		echo "DOWNLOAD 2019-09-26-raspbian-buster-lite"; \
		echo "https://www.raspberrypi.org/downloads/raspbian/"
	fi


.vendor/kernel-qemu-4.19.50-buster: .vendor
	if [ ! -e .vendor/kernel-qemu-4.19.50-buster ]; then \
		echo "DOWNLOAD kernel-qemu-4.19.50-buster"; \
		curl -sL https://github.com/dhruvvyas90/qemu-rpi-kernel/raw/master/versatile-pb.dtb -o .vendor/kernel-qemu-4.19.50-buster; \
	fi


.vendor/versatile-pb.dtb: .vendor
	if [ ! -e .vendor/versatile-pb.dtb ]; then \
		echo "DOWNLOAD versatile-pb.dtb"; \
		curl -sL https://github.com/dhruvvyas90/qemu-rpi-kernel/raw/master/versatile-pb.dtb -o .vendor/versatile-pb.dtb; \
	fi
