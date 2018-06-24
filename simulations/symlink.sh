#!/bin/bash
# converts all symlinks from the current directory and below into real links
for f in $(find . -type l) ; do
    ft=$(dirname ${f})/$(readlink ${f})
    if [ -f ${ft} ] ; then
        mv ${f} ${f}.bak
        ln ${ft} ${f}
    else
        echo not a file: ${ft}
    fi
done