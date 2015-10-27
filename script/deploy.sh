#!/usr/bin/env sh
set -ev

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

BRANCH=$(git branch|sed '1d' |awk '{ print $1 }')

echo "$BRANCH"
echo "test $BRANCH == 'master'"
if test "$BRANCH" == master
then
	curl --user streetvoice:ru,g/upm,4 http://54.250.122.204:5000/deploy/test_prod
else
	curl --user streetvoice:ru,g/upm,4 http://54.250.122.204:5000/deploy/test
fi