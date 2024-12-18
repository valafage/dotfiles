#!/bin/bash

RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
NC='\033[0m'

print_info() {
  echo -e "${BLUE}$1${NC}"
}

print_warning() {
  echo -e "${YELLOW}Warning: $1${NC}"
}

print_error() {
  echo -e "${RED}Error: $1${NC}" >&2
}

print_success() {
  echo -e "${GREEN}$1${NC}"
}

