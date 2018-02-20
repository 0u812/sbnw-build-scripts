#/usr/bin/env bash

# exit on failure
set -e
# echo commands as they are run
set -o verbose

THIS_DIR="$( dirname "${BASH_SOURCE[0]}" )"

PLATFORM=win32-vs15-release

source $THIS_DIR/build/build-libsbml.sh
