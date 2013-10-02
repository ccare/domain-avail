#!/bin/bash

WORDS_FILE=/usr/share/dict/words
PREFIX=med
SUFFIX_LEN=4

GENERATOR_PERL='chomp; print "med$_.com\n"'

cat $WORDS_FILE | grep -e "^[a-z]\{$SUFFIX_LEN\}$" | perl -n -e "$GENERATOR_PERL" | xargs -I {} `dirname $0`/test.sh {} | tee search.log
