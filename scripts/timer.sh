#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#source "$CURRENT_DIR/helpers.sh"

main() {
  while :
  do
    if [ -f "$CURRENT_DIR/counter" ]; then
      SECONDS=$(<"$CURRENT_DIR/counter")
    fi
    printf '%02d:%02d:%02d\n'   $((SECONDS/3600)) \
                                $((SECONDS%3600/60)) \
                                $((SECONDS%60))
    sleep 1
    echo "$SECONDS" > "$CURRENT_DIR/counter"
  done
}

main
