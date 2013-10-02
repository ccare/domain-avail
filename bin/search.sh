#!/bin/bash
cat /etc/dictionaries-common/words | grep -e '^[a-z]\{3\}$' | perl -n -e 'chomp; print "med$_.com\n"' | xargs -I {} ./test.sh {}
