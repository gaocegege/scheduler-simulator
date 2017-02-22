#!/bin/bash

# The script cleans up the output.
#
# Usage:
#   cleanup.sh

# Timestamped log, e.g. log "cluster created".
#
# Input:
#   $1 Log string.
function log {
  echo -e "[`TZ=Asia/Shanghai date`] ${1}"
}

ROOT=$(dirname "${BASH_SOURCE}")/..

cd $ROOT
rm *.data *_tasks_*
cd - > /dev/null
