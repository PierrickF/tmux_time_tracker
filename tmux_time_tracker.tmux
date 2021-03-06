#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/scripts/helpers.sh"

timer="#($CURRENT_DIR/scripts/tmux_timer.sh)"
timer_interpolation="\#{timer}"

set_reset_binding() {
  tmux bind-key "R" run-shell "$CURRENT_DIR/scripts/reset.sh"
}

set_tmux_option() {
  local option="$1"
  local value="$2"
  tmux set-option -gq "$option" "$value"
}

do_interpolation() {
  local string=$1
  local string=${string/$timer_interpolation/$timer}
  echo "$string"
}

update_tmux_option() {
  local option="$1"
  local option_value="$(get_tmux_option "$option")"
  local new_option_value="$(do_interpolation "$option_value")"
  set_tmux_option "$option" "$new_option_value"
}

main() {
  set_reset_binding
  update_tmux_option "status-right"
  update_tmux_option "status-left"
}

main
