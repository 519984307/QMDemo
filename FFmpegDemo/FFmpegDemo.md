# FFmpeg多媒体框架开发Demo

[toc]

---

## 1、说明

| 类名        | 功能                                           |
| ----------- | ---------------------------------------------- |
| VideoPlay   | 使用ffmpeg音视频库【软解码】实现的视频播放器； |
| VideoPlayHW | 使用ffmpeg音视频库【硬解码】实现的视频播放器； |




## 2、相关博客

* [CSDN](https://blog.csdn.net/qq_43627907/category_11660518.html?spm=1001.2014.3001.5482)

## 3、实现效果

### 1.1 VideoPlay

> 1. 使用ffmpeg音视频库【软解码】实现的视频播放器；
> 2. 支持打开本地视频文件（如mp4、mov、avi等）、网络视频流（rtsp、rtmp、http等）；
> 3. 支持视频【匀速播放】；
> 4. 采用QPainter进行显示，支持【自适应】窗口缩放；
> 5. 视频播放支持实时【开始/关闭、暂停/继续】播放；
> 6. 视频解码、线程控制、显示各部分功能分离，【低耦合度】。
> 7. 采用最新的【5.1.2版本】ffmpeg库进行开发，【超详细注释信息】，将所有踩过的坑、解决办法、注意事项都得很写清楚。

* 这里上传的gif图片经过压缩，效果较差，实际为高清

![VideoPlay-tuya](FFmpegDemo.assets/VideoPlay-tuya.gif)

### 1.2 VideoPlayHW

> 1. 使用ffmpeg音视频库【硬解码】实现的视频播放器，采用GPU解码， 大幅降低对CPU的暂用率；
> 2. 支持打开本地视频文件（如mp4、mov、avi等）、网络视频流（rtsp、rtmp、http等）；
> 3. 支持视频匀速播放；
> 4. 采用QPainter进行显示，支持自适应窗口缩放；
> 5. 视频播放支持实时开始/关闭、暂停/继续播放；
> 6. 视频解码、线程控制、显示各部分功能分离，低耦合度。
> 7. 采用最新的5.1.2版本ffmpeg库进行开发，超详细注释信息，将所有踩过的坑、解决办法、注意事项都得很写清楚；
> 8. 展示了9路视频播放。

* 由于测试的电脑硬件性能过低，所以看起来效果不是很明显

![VideoPlayHW-tuya](FFmpegDemo.assets/VideoPlayHW-tuya.png)