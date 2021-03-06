DEVICE_TREE := device/samsung/ms01

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Board
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305
TARGET_BOOTLOADER_BOARD_NAME := MSM8226

# Bootloader
TARGET_NO_BOOTLOADER := true
BOARD_VENDOR := samsung

# Boot image
BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom msm_rtb.filter=0x37
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x1e00000
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_TREE)/mkbootimg.mk
BOARD_KERNEL_SEPARATED_DT := true

# Filesystems
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_SUPPRESS_SECURE_ERASE := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/samsung/msm8226
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm
TARGET_KERNEL_CONFIG := twrp_ms01_defconfig
KERNEL_TOOLCHAIN_PREFIX := arm-linux-androideabi-

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485248
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485248
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2411724288
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12843662336
BOARD_CACHEIMAGE_PARTITION_SIZE := 314572288
BOARD_FLASH_BLOCK_SIZE := 131072

# Ramdisk
LZMA_RAMDISK_TARGETS := boot,recovery

# Time services
BOARD_USES_QC_TIME_SERVICES := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

# TWRP
TW_DEVICE_VERSION := 1
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_EXFAT_FUSE := true
TW_MTP_DEVICE := "/dev/mtp_usb"
TW_EXCLUDE_TWRPAPP := true
BOARD_HAS_FLIPPED_SCREEN := true

# Init properties from bootloader version, ex. model info
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_ms01
TARGET_RECOVERY_DEVICE_MODULES := libinit_ms01
TARGET_LIBINIT_DEFINES_FILE := $(DEVICE_TREE)/init/init_ms01.cpp