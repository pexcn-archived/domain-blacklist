#!/bin/bash

# blacklist
sed '/^[[:space:]]*$/d' blacklist.txt | sed -e '/^#/!s/^/server=\//g' -e '/^#/!s/$/\//g' > blacklist.conf
# blacklist-exclude
sed '/^[[:space:]]*$/d' blacklist-exclude.txt | sed -e '/^#/!s/^/server=\//g' -e '/^#/!s/$/\/114.114.114.114/g' > blacklist-exclude.conf
