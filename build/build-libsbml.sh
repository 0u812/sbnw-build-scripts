#/usr/bin/env bash

# exit on failure
set -e
# echo commands as they are run
set -o verbose

THIS_DIR="$( dirname "${BASH_SOURCE[0]}" )"

source $THIS_DIR/global/global-$PLATFORM.sh
source $THIS_DIR/libsbml/build.sh
