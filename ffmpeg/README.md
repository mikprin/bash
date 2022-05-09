

# Cut video!
`ffmpeg -i $INPUT_VIDEO_FILE -ss $START_TIME -t $STOP_TIME -c:v copy -c:a copy $OUTPUT_VIDEO_FILE`
`ffmpeg -i $INPUT_VIDEO_FILE -ss 00:00:00 -t 00:51:45 -c:v copy -c:a copy $OUTPUT_VIDEO_FILE`