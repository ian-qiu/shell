```Shell
ffmpeg -i "concat:1-1.mp4|1-2.mp4|1-3.mp4" -c copy -bsf:a aac_adtstoasc -movflags +faststart 01.mp4
```

```Shell
ffmpeg -f concat -safe 0 -i merge.txt -c copy 1.mp4
```

merge.txt
```text
file '1-1.mp4'
file '1-2.mp4'
file '1-3.mp4'
file '1-4.mp4'
file '1-5.mp4'
file '1-6.mp4'
file '1-7.mp4'
file '1-8.mp4'
```

# 参考

[FFMpeg无损合并视频的多种方法](https://www.cnblogs.com/x_wukong/p/12692122.html)