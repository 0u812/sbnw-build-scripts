#/usr/bin/env bash

# exit on failure
set -e
# echo commands as they are run
set -o verbose

THIS_DIR="$( dirname "${BASH_SOURCE[0]}" )"

SRC_ROOT=$SRC_ROOT/sbnw
INSTALL_DIR="$SBNW_INSTALL_DIR"
BUILD_DIR="$BUILD_ROOT/$SBNW_INSTNAME"

rm -rf $BUILD_DIR
mkdir -p $BUILD_DIR
cd $BUILD_DIR
"$CMAKE" "$CMAKE_GEN" -DCMAKE_BUILD_TYPE=$BUILD_TYPE -DCMAKE_INSTALL_PREFIX="$INSTALL_DIR" -DLIBSBML_DIR=$LIBSBML_INSTALL_DIR -DLIBXML2_DIR="$LIBSBML_DEP_DIR" $SRC_ROOT
eval $CMAKE_BUILD_CMD
