LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

ifeq ($(TARGET_ARCH), x86)
LOCAL_CFLAGS := -O3
else
LOCAL_CFLAGS := -O3 -DARCH_ARM
LOCAL_ARM_MODE := arm
endif

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../mupdf $(LOCAL_PATH)/../fitz
LOCAL_MODULE    := fitzdraw

LOCAL_SRC_FILES := \
        draw_device.c \
        arch_port.c \
        draw_blend.c \
        draw_glyph.c \
        draw_affine.c \
        draw_scale.c \
        draw_unpack.c \
        draw_mesh.c \
        draw_path.c \
        draw_paint.c \
        draw_edge.c

LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)
