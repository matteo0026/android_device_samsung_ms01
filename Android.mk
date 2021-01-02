LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),ms01)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
