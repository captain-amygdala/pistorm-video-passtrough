alsaloop -C hw:2 -S 0 &
v4l2-ctl --set-dv-bt-timings query
./yavta -c -f UYVY -n 3 -m -T /dev/video0 > /dev/null
gst-launch-1.0 v4l2src ! "video/x-raw,framerate=30/1,format=UYVY" ! v4l2h264enc extra-controls="controls,h264_profile=4,h264_level=2,video_bitrate=50000;" ! video/x-h264,profile=high ! h264parse ! queue ! matroskamux name=mux ! filesink location=foo.mkv alsasrc device=hw:2 ! audio/x-raw,rate=48000,channels=2 ! audioconvert ! avenc_aac bitrate=44100 ! aacparse ! queue ! mux.
