#!/bin/bash

SCRIPT_DIR=$(cd `dirname $0` && pwd)
ROOT_DIR=$(dirname $SCRIPT_DIR)
MAPPING_FILE=$ROOT_DIR/config/errno.imp

iwyu_tool -o clang -p build $@ -- -Xiwyu --mapping_file=$MAPPING_FILE
