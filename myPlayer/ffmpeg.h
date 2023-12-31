//
//  ffmpeg.h
//  myPlayer
//
//  Created by lsmiao on 2023/8/3.
//

#ifndef ffmpeg_h
#define ffmpeg_h

#include <stdio.h>
#include <libavutil/avutil.h>
#include <libavformat/avformat.h>
#include <libavutil/dict.h>
#include <libavutil/dict.h>
/*
 是否启用debug日志
 */
#if DEBUG
int LOG_LEVEL_DEBUG = 1;
#else
int LOG_LEVEL_DEBUG = 0;
#endif

/*
 读取音频文件数据
 返回的 AVFormatContext *指针
 需要在外部函数用avformat_close_input及时释放
 */
AVFormatContext *  open_audio_file_fmt_ctx(const char *filename);
/*
 读取音频文件中的内嵌专辑图片
 返回 AVPacket *指针
 */
AVPacket * get_album_cover_image(const char *filename);
/*
 初始化一个dict结构体指针
 */
AVDictionary * new_dict(void);
#endif /* ffmpeg_h */
