
LOTTIE_DIR = $(LVGL_DIR)/lv_lib_rlottie
LOTTIE_DIR_NAME = rlottie_lib

CSRCS += $(LOTTIE_DIR)/lv_rlottie.c

DEPPATH += --dep-path $(LOTTIE_DIR)/
VPATH += :$(LOTTIE_DIR)/

CXXEXT = .cpp

CXXFLAGS += "-I$(LOTTIE_DIR)"
CFLAGS += "-I$(LOTTIE_DIR)"

CXXFLAGS += -fpermissive
# CFLAGS += -fpermissive

include $(LOTTIE_DIR)/$(LOTTIE_DIR_NAME)/rlottie.mk
