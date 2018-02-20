#/usr/bin/env bash

# exit on failure
set -e
# echo commands as they are run
set -o verbose

THIS_DIR="$( dirname "${BASH_SOURCE[0]}" )"

# get user settings
source $THIS_DIR/../settings-$PLATFORM.sh

CMAKE_GEN=-G"Visual Studio 15 2017"
CMAKE_BUILD_CMD="\"$CMAKE\" --build . --target install --config Release"

# libSBML
LIBSBML_INSTNAME=$LIBSBML_NAME-$PLATFORM
LIBSBML_INSTALL_DIR="$INSTALL_ROOT/$LIBSBML_INSTNAME"
LIBSBML=$LIBSBML_INSTALL_DIR/lib/libsbml.lib
LIBSBML_STATIC=$LIBSBML_INSTALL_DIR/lib/libsbml-static.lib
LIBSBML_INCLUDE=$LIBSBML_INSTALL_DIR/include
LIBSBML_EXTRA_LIBS="$LIBXML2;$LIBBZIP2;$ZLIB;$LIBICONV;ws2_32.lib"

# sbnw
SBNW_INSTNAME=sbnw-$PLATFORM
SBNW_INSTALL_DIR="$INSTALL_ROOT/$SBNW_INSTNAME"
LIBSBNW=$SBNW_INSTALL_DIR/lib/libsbnw.lib
