#!/bin/bash
set -eux -o pipefail

AWS_IAM_AUTHENTICATOR_VERSION=0.4.0-alpha.1
[ -e $DOWNLOADS/aws-iam-authenticator ] || curl -sLf --retry 3 -o $DOWNLOADS/aws-iam-authenticator http://172.17.0.1:8000/aws-iam-authenticator
cp $DOWNLOADS/aws-iam-authenticator $BIN/
chmod +x $BIN/aws-iam-authenticator
aws-iam-authenticator version
