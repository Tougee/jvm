#!/bin/bash

cd `dirname $0`
find \( -type d -name .git -prune \) -o -type f -print0 | \
	xargs -0 sed -i  's|github.com/tougee/jvm|github.com/tougee/jvm|g'



