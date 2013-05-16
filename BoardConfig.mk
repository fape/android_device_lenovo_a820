USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lenovo/a820/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := a820

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 6291456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 6291456
#fdisk -l /dev/block/mmcblk0p5: Disk /dev/block/mmcblk0p5: 629 MB, 629145600 bytes
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 629145600
#fdisk -l /dev/block/mmcblk0p7: Disk /dev/block/mmcblk0p7: 713 MB, 713031680 bytes
BOARD_USERDATAIMAGE_PARTITION_SIZE := 713031680
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/lenovo/a820/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
