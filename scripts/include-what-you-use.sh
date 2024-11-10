#!/bin/bash

SCRIPTS_DIR=$(cd `dirname $0` && pwd)
RESOURCES_DIR=$(dirname $SCRIPTS_DIR)/resources
MAPPING_FILE=$RESOURCES_DIR/errno.imp

iwyu_tool -o clang -p build $@ -- -Xiwyu --mapping_file=$MAPPING_FILE
