/**
 * @file lv_rlottie.h
 *
 */

#ifndef LV_RLOTTIE_H
#define LV_RLOTTIE_H

#ifdef __cplusplus
extern "C" {
#endif

/*********************
 *      INCLUDES
 *********************/
#if LV_LVGL_H_INCLUDE_SIMPLE
#include <lvgl.h>
#else
#include <lvgl/lvgl.h>
#endif

#include <rlottie_capi.h>

/*********************
 *      DEFINES
 *********************/

/**********************
 *      TYPEDEFS
 **********************/
typedef struct {
    lv_img_t img_ext;
    Lottie_Animation* animation;
    lv_timer_t* task;
    lv_img_dsc_t imgdsc;
    size_t total_frames;
    size_t current_frame;
    size_t framerate;
    uint32_t* allocated_buf;
    size_t allocated_buffer_size;
    size_t scanline_width;
}lv_rlottie_t;

extern const lv_obj_class_t lv_rlottie_class;

/**********************
 * GLOBAL PROTOTYPES
 **********************/

lv_obj_t * lv_rlottie_create_from_file(lv_obj_t * parent,lv_coord_t width, lv_coord_t height, const char * path);

lv_obj_t* lv_rlottie_create_from_raw(lv_obj_t* parent, lv_coord_t width, lv_coord_t height, const char* rlottie_desc);

void lv_rlottie_pause(lv_obj_t* obj);
void lv_rlottie_resume(lv_obj_t* obj);

/**********************
 *      MACROS
 **********************/

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif /*LV_RLOTTIE_H*/
