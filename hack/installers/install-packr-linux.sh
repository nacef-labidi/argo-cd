#!/bin/bash
set -eux -o pipefail

PACKR_VERSION=1.21.9
[ -e $DOWNLOADS/parkr.tar.gz ] || curl -sLf --retry 3 -o $DOWNLOADS/parkr.tar.gz http://172.17.0.1:8000/packr.tar.gz
tar -vxf $DOWNLOADS/parkr.tar.gz -C /tmp/
cp /tmp/packr $BIN/
chmod +x $BIN/packr
packr version
