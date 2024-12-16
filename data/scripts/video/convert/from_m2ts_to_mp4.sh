#!/bin/bash

source "$HOME/scripts/video/base.sh"

if [ -z "$OUTPUT" ]; then
  OUTPUT="$HOME/Desktop/output.mp4"
fi

ffmpeg -i "$INPUT" -vcodec libx264 -crf 20 -acodec ac3 -vf "yadif" "$OUTPUT" > /dev/null 2>&1 &
echo "Trying to re-encode '$INPUT' as '$OUTPUT'"
wait
if [[ $? -ne 0 ]]; then
  echo "Error: Encoding failed" >&2
  exit 1
else
  echo "Done !"
fi

