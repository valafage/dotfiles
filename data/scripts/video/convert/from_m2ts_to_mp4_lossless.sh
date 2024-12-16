#!/bin/bash

source "$HOME/scripts/video/base.sh"

if [ -z "$OUTPUT" ]; then
  OUTPUT="$HOME/Desktop/output.mp4"
fi


ffmpeg -i "$INPUT" -vcodec copy -acodec copy -f mp4 "$OUTPUT" > /dev/null 2>&1 &
echo "Trying to convert '$INPUT' as '$OUTPUT'"
wait
if [[ $? -ne 0 ]]; then
  echo "Error: Failed to convert to '.mp4'" >&2
  exit 1
else
  echo "Done !"
fi

