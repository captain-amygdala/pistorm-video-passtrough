#sudo dtoverlay dummy-csi-sensor-overlay 2lanes
sudo dtoverlay dummy-csi-sensor-overlay
v4l2-ctl -v width=720,height=320
./yavta -c -m -T /dev/video0 > /dev/null
