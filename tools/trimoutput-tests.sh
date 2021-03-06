#!/usr/bin/env bash

tmpfile=$(mktemp "/tmp/bono-$(basename $0).XXXXX")
cat > $tmpfile

grep '\*\* BUILD SUCCEEDED \*\*' $tmpfile > /dev/null
if [ $? -eq 0 ]; then
    cat $tmpfile \
        | awk '/Running /,/--DONT-FIND-THIS-AND-PRINT-TILL-EOF--/' \
        | sed -e "s/^OK$/$(echo -e '\033[0;32m')OK/" \
        | sed -e "s/^OK, /$(echo -e '\033[0;33m')OK, /" \
        | sed -e "s/^FAILURES!$/$(echo -e '\033[0;31m')FAILURES/"
    echo -n -e '\033[0m'
else
    cat $tmpfile
fi

rm $tmpfile
