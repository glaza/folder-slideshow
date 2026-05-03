#!/bin/bash

# Create a video slideshow from images in temp_images
# Each image displays for 5 seconds

ffmpeg -framerate 1/5 -i temp_images/%04d.jpg -c:v libx264 -r 30 -pix_fmt yuv420p slideshow.mp4

echo "Slideshow created: slideshow.mp4"