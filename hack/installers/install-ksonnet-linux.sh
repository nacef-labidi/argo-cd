#!/bin/bash
set -eux -o pipefail

[ -e $DOWNLOADS/ks.tar.gz ] || curl -sLf --retry 3 -o $DOWNLOADS/ks.tar.gz http://172.17.0.1:8000/ks.tar.gz
tar -C /tmp -xf $DOWNLOADS/ks.tar.gz
cp /tmp/ks $BIN/ks
chmod +x $BIN/ks
ks version
