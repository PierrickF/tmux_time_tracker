#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
  pkill -f "tmux_timer.sh"
  rm "$CURRENT_DIR/counter"
}

main
