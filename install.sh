#!/bin/bash

cd "$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

create_symlink() {
  local src=$1
  local dst=${2:-$HOME}

  ln -sfv "$src" "$dst"
}

set_up_git() {
  create_symlink "$PWD/git/.gitconfig"
}

main() {
  set_up_git
}

main
