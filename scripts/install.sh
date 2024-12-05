#!/bin/bash

SCRIPTS_DIR=$(dirname "$(realpath "${BASH_SOURCE[0]}")")

source "$SCRIPTS_DIR/utils/text_utils.sh"

install_scripts() {
  # ---------------------------------------------------------------------------
  # Description:
  # Prompts the user to choose between erasing the existing '~/scripts' folder
  # and replacing its content, or preserving the folder while updating it with
  # new files from the current working directory.
  # ---------------------------------------------------------------------------
  _prompt() {
    read -p "Choose an option:
    1. Erase: Content will be lost
    2. Preserve: Keep existing files
    Enter your choice (1/2) [default: 2]: " response
    
    echo "${response:-2}"
  }
  
  # -----------------------------------------------------------------------
  # Description:
  # Erases the existing content in the '~/scripts' folder and replaces it
  # with the content from the current working directory.
  # -----------------------------------------------------------------------
  _erase_content() {
    print_in_bold "Existing content will be replaced."
    ln -sf "$SCRIPTS_DIR" "$HOME/scripts"
  }
  
  # -----------------------------------------------------------------------
  # Description:
  # Preserves the existing content of the '~/scripts' folder and creates a
  # symlink to the current working directory.
  # -----------------------------------------------------------------------
  _preserve_content() {
    local backup_dir="$HOME/scripts_backup_$(date +%Y%m%d_%H%M%S)"
    mv "$HOME/scripts" "$backup_dir"
    
    ln -sf "$SCRIPTS_DIR" "$HOME/scripts"

    cp -r "$backup_dir"/* "$HOME/scripts"
    print_info "Existing content has been preserved"

    rm -rf "$backup_dir"
  }
  
  if [ -d "$HOME/scripts" ]; then
    print_warning "The 'scripts' folder already exists in your home directory."
  
    local response=$(_prompt)

    echo

    case "$response" in
    
      1)
        _erase_content
        ;;
      2)
        _preserve_content
        ;;
      *)
        print_error "Invalid input. Please enter '1' or '2'."
        exit 1
        ;;
    esac
  else
    ln -s "$SCRIPTS_DIR" "$HOME/scripts"
  fi

  print_in_bold "Created symlink: $HOME/scripts -> $SCRIPTS_DIR"

  sudo ln -sf "$SCRIPTS_DIR/system/remove_old_logs.sh" "/usr/local/bin/rm-logs"
  print_in_bold "Created symlink: /usr/local/bin/rm-logs -> $SCRIPTS_DIR/system/remove_old_logs.sh"
  
  sudo ln -sf "$SCRIPTS_DIR/video/convert/from_m2ts_to_mp4_lossless.sh" "/usr/local/bin/convert-tvr"
  print_in_bold "Created symlink: /usr/local/bin/convert-tvr -> $SCRIPTS_DIR/video/convert/from_m2ts_to_mp4_lossless.sh"

  print_success "Success ! Enjoy your scripts ;)"
}

