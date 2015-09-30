#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

REPO="https://github.com/seanhsu0102/travis-broken-example.git"
SKEY="~/.ssh/oohay-dev.pem"

ssh -i $SKEY ubuntu@54.178.203.37 git clone $REPO