#!/bin/bash

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
DATAPACK_NAME=$(basename ${SCRIPT_DIR})
rm ${DATAPACK_NAME}.zip
zip -vr ${DATAPACK_NAME}.zip ./* -x "*.zip" -x "*compress.sh" -x "*~" -x "*.git*"
