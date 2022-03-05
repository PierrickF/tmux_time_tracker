#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/helpers.sh"

main() {

  SECONDS=0

  while [ $SECONDS -lt 5 ]
    do
      printf '%02d:%02d:%02d\n'   $((SECONDS/3600)) \
                                  $((SECONDS%3600/60)) \
                                  $((SECONDS%60))
      sleep 1
  done
}

main
