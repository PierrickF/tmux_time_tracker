#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

main() {
  if [ -f "$CURRENT_DIR/counter" ]; then
    SECONDS=$(<$CURRENT_DIR/counter)
  else
    SECONDS=0
  fi

  while :
  do
    printf '%02d:%02d:%02d\n'   $((SECONDS/3600)) \
                                $((SECONDS%3600/60)) \
                                $((SECONDS%60))
    echo "$SECONDS" > "$CURRENT_DIR/counter"
    sleep 1
  done
}

main
