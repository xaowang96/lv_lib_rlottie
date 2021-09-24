
include $(LOTTIE_DIR)/$(LOTTIE_DIR_NAME)/rlottie/src/binding/c/c_bind.mk
include $(LOTTIE_DIR)/$(LOTTIE_DIR_NAME)/rlottie/src/lottie/lottie_core.mk
include $(LOTTIE_DIR)/$(LOTTIE_DIR_NAME)/rlottie/src/vector/vector_core.mk


CXXFLAGS += "-I$(LOTTIE_DIR)/$(LOTTIE_DIR_NAME)/rlottie/inc/"
CFLAGS += "-I$(LOTTIE_DIR)/$(LOTTIE_DIR_NAME)/rlottie/inc/"