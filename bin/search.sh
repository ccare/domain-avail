#!/bin/bash

WORDS_FILE=/usr/share/dict/words
PREFIX=med
SUFFIX_LEN=3
SUFFIX_PATTERN="^[aeiou][^aeiouA-Za-o][a-z]\{$SUFFIX_LEN\}$"

GENERATOR_PERL="chomp; print \"$PREFIX\$_.com\n\""

LOG=search.log

cat $WORDS_FILE | grep -e "$SUFFIX_PATTERN" | perl -n -e "$GENERATOR_PERL" | xargs -I {} `dirname $0`/test.sh {} | tee $LOG
