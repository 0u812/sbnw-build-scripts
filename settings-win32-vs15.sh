#/usr/bin/env bash

SRC_ROOT="C:/Users/libsbml/Documents/devel/src"
BUILD_ROOT="C:/Users/libsbml/Documents/devel/build"
ISNTALL_ROOT="C:/Users/libsbml/Documents/devel/install"

CMAKE="C:/Users/libsbml/Downloads/cmake-3.11.0-rc1-win64-x64/bin/cmake"

VCRUNTIME1="C:/Users/libsbml/Downloads/libsbml/libSBML_dependencies_vs14_release_x64/libSBML-Dependencies-1.0.0-b1-win64/bin/msvcp140.dll"
VCRUNTIME2="C:/Users/libsbml/Downloads/libsbml/libSBML_dependencies_vs14_release_x64/libSBML-Dependencies-1.0.0-b1-win64/bin/vcruntime140.dll"

# libSBML deps
LIBSBML_NAME="libsbml-5.16.0-experimental"
LIBSBML_DEP_DIR="C:/Users/libsbml/Downloads/libsbml-dep-win32-vs15-static"
LIBBZIP2="$LIBSBML_DEP_DIR/lib/libbz2.lib"
LIBBZIP2_INCLUDE="$LIBSBML_DEP_DIR/include"
LIBICONV="$LIBSBML_DEP_DIR/lib/libiconv.lib"
LIBXML2="$LIBSBML_DEP_DIR/lib/libxml2.lib"
LIBXML2_INCLUDE="$LIBSBML_DEP_DIR/include"
ZLIB="$LIBSBML_DEP_DIR/lib/zdll.lib"
ZLIB_INCLUDE="$LIBSBML_DEP_DIR/include"
CMAKE_ICONV_FLAGS=( -DLIBICONV_LIBRARY="$LIBICONV" )
