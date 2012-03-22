LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS := -O3

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../mupdf $(LOCAL_PATH)/../fitz
LOCAL_MODULE    := fitzdraw
LOCAL_SRC_FILES := \
    draw_affine.c  draw_device.c  draw_glyph.c  draw_paint.c  draw_scale.c         draw_unpack.c \
    draw_blend.c   draw_edge.c    draw_mesh.c   draw_path.c   draw_simple_scale.c arch_port.c arch_arm.c


LOCAL_MODULE_TAGS := optional

include $(BUILD_STATIC_LIBRARY)
