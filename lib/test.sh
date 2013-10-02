#!/bin/bash
echo "Testing $1"
whois $1 >/dev/null || (echo "No domain record for $1"; echo "$1">>results.txt)

