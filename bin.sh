# -c:v libx264 -qp 0 -map 0:0 -preset ultrafast

# ffmpeg -probesize 100M -video_size 640x480 -framerate 25  -vsync 2 -f avfoundation -i 1:none # for mac

ffmpeg -probesize 100M -video_size 1920x1080 -framerate 25  -vsync 2 -f x11grab -i :0.0 \
  -hls_time 9 \
  -hls_segment_filename "%d.ts" \
  -pix_fmt yuv420p \
  index.m3u8
