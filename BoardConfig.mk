USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lenovo/a820/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mtk6589
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_PREBUILT_KERNEL := device/lenovo/a820/kernel
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

TARGET_BOOTLOADER_BOARD_NAME := a820

BOARD_HAS_NO_SELECT_BUTTON := true


# Recovery
TARGET_RECOVERY_FSTAB := device/lenovo/a820/recovery/recovery.fstab
TARGET_RECOVERY_INITRC := device/lenovo/a820/recovery/recovery.rc
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/lenovo/a820/recovery/recovery_keys.c
CWM_EMMC_BOOT_DEVICE_NAME := /dev/bootimg
CWM_EMMC_BOOT_DEVICE_SIZE := 0x00600000
CWM_EMMC_RECOVERY_DEVICE_NAME := /dev/recovery
CWM_EMMC_RECOVERY_DEVICE_SIZE := 0x00600000
CWM_EMMC_UBOOT_DEVICE_NAME := /dev/uboot
CWM_EMMC_UBOOT_DEVICE_SIZE := 0x00060000
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/gadget/lun%d/file


# fix this up by examining /proc/mtd on a running device
#cat /proc/dumchar_info: bootimg      0x0000000000600000   0x0000000002180000   2   /dev/block/mmcblk0
BOARD_BOOTIMAGE_PARTITION_SIZE := 6291456
#cat /proc/dumchar_info: recovery     0x0000000000600000   0x0000000002780000   2   /dev/block/mmcblk0
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6291456
#cat /proc/dumchar_info: android      0x0000000025800000   0x0000000004180000   2   /dev/block/mmcblk0p5
#fdisk -l /dev/block/mmcblk0p5: Disk /dev/block/mmcblk0p5: 629 MB, 629145600 bytes
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 629145600
#cat /proc/dumchar_info: usrdata      0x000000002a800000   0x0000000031980000   2   /dev/block/mmcblk0p7
#fdisk -l /dev/block/mmcblk0p7: Disk /dev/block/mmcblk0p7: 713 MB, 713031680 bytes
BOARD_USERDATAIMAGE_PARTITION_SIZE := 713031680
BOARD_FLASH_BLOCK_SIZE := 131072


