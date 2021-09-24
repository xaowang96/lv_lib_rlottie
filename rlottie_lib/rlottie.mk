# c binding
RLOTTIE_LIB_C_BIND_DIR = $(LOTTIE_DIR)/$(LOTTIE_DIR_NAME)/rlottie/src/binding/c
CXXSRCS += $(RLOTTIE_LIB_C_BIND_DIR)/lottieanimation_capi.cpp
DEPPATH += --dep-path $(RLOTTIE_LIB_C_BIND_DIR)
VPATH += :$(RLOTTIE_LIB_C_BIND_DIR)

CXXFLAGS += "-I$(RLOTTIE_LIB_C_BIND_DIR)"

# lottie core
RLOTTIE_LIB_CORE = $(LOTTIE_DIR)/$(LOTTIE_DIR_NAME)/rlottie/src/lottie
CXXSRCS += $(RLOTTIE_LIB_CORE)/lottieitem.cpp
CXXSRCS += $(RLOTTIE_LIB_CORE)/lottieitem_capi.cpp
CXXSRCS += $(RLOTTIE_LIB_CORE)/lottieloader.cpp
CXXSRCS += $(RLOTTIE_LIB_CORE)/lottiemodel.cpp
CXXSRCS += $(RLOTTIE_LIB_CORE)/lottieproxymodel.cpp
CXXSRCS += $(RLOTTIE_LIB_CORE)/lottieparser.cpp
CXXSRCS += $(RLOTTIE_LIB_CORE)/lottieanimation.cpp
CXXSRCS += $(RLOTTIE_LIB_CORE)/lottiekeypath.cpp

DEPPATH += --dep-path $(RLOTTIE_LIB_CORE)
VPATH += :$(RLOTTIE_LIB_CORE)

CXXFLAGS += "-I$(RLOTTIE_LIB_CORE)"

# vector
RLOTTIE_LIB_VECTOR_CORE = $(LOTTIE_DIR)/$(LOTTIE_DIR_NAME)/rlottie/src/vector

CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vrect.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vdasher.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vbrush.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vbitmap.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vpainter.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vdrawhelper_common.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vdrawhelper.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vdrawhelper_sse2.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vdrawhelper_neon.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vrle.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vpath.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vpathmesure.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vmatrix.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/velapsedtimer.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vdebug.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vinterpolator.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vbezier.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vraster.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vdrawable.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/vimageloader.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE)/varenaalloc.cpp


DEPPATH += --dep-path $(RLOTTIE_LIB_VECTOR_CORE)
VPATH += :$(RLOTTIE_LIB_VECTOR_CORE)

CXXFLAGS += "-I$(RLOTTIE_LIB_VECTOR_CORE)"

# freetype---------------------
RLOTTIE_LIB_VECTOR_CORE_FREETYPE = $(RLOTTIE_LIB_VECTOR_CORE)/freetype/

CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE_FREETYPE)/v_ft_math.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE_FREETYPE)/v_ft_raster.cpp
CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE_FREETYPE)/v_ft_stroker.cpp


DEPPATH += --dep-path $(RLOTTIE_LIB_VECTOR_CORE_FREETYPE)
VPATH += :$(RLOTTIE_LIB_VECTOR_CORE_FREETYPE)

CXXFLAGS += "-I$(RLOTTIE_LIB_VECTOR_CORE_FREETYPE)"

# pixman-----------------------------

ifeq ($(ARCH),arm)
ASRCS += pixman-arm-neon-asm.S

DEPPATH += --dep-path $(LOTTIE_DIR)/$(LOTTIE_DIR_NAME)/rlottie/src/vector/pixman
VPATH += :$(LOTTIE_DIR)/$(LOTTIE_DIR_NAME)/rlottie/src/vector/pixman

CXXFLAGS += "-I$(LOTTIE_DIR)/$(LOTTIE_DIR_NAME)/rlottie/src/vector/pixman"
endif
# stb----------------------------
RLOTTIE_LIB_VECTOR_CORE_STB = $(RLOTTIE_LIB_VECTOR_CORE)/stb/

CXXSRCS += $(RLOTTIE_LIB_VECTOR_CORE_STB)/stb_image.cpp


DEPPATH += --dep-path $(RLOTTIE_LIB_VECTOR_CORE_STB)
VPATH += :$(RLOTTIE_LIB_VECTOR_CORE_STB)

CXXFLAGS += "-I$(RLOTTIE_LIB_VECTOR_CORE_STB)"

# include
CXXFLAGS += "-I$(LOTTIE_DIR)/$(LOTTIE_DIR_NAME)/rlottie/inc/"
CFLAGS += "-I$(LOTTIE_DIR)/$(LOTTIE_DIR_NAME)/rlottie/inc/"