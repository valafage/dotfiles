#!/bin/bash

UTILS_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

source "$UTILS_DIR/color_utils.sh"

print_in_bold() {
  echo -e "\033[1m$1\033[0m"
}

