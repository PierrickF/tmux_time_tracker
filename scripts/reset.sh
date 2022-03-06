#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
  pkill -f "timer.sh"
  rm "$CURRENT_DIR/counter"
}

main
