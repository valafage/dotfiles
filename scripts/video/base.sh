#!/bin/bash

set -e

if [ "$#" -eq 0 ]; then
  echo "Error: You must provide a video" >&2
  exit 1
fi

if [ -z "$(command -v ffmpeg)" ]; then
  echo "Error: ffmpeg must be installed" >&2
  exit 1
fi

INPUT=$1
OUTPUT=$2

