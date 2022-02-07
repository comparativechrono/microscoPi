#!/bin/bash
DATE=$(date +"%Y-%m-%d_%H%M")
raspivid -o /home/pi/CircaMicroPi/Cam1/$DATE.h264 -t 60000
MP4Box -add /home/pi/CircaMicroPi/Cam1/$DATE.h264 /home/pi/CircaMicroPi/Cam1/$DATE.MP4
