#!/bin/bash
set -ev

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

if [ $(git branch|awk '{print $2}') == "master" ]; then
	curl --user streetvoice:ru,g/upm,4 http://54.250.122.204:5000/deploy/test_prod
else
	curl --user streetvoice:ru,g/upm,4 http://54.250.122.204:5000/deploy/test
fi