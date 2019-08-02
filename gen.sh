#!/bin/bash

# date tag
cat << EOF > blacklist.conf
#
# Update: $(date +'%Y-%m-%d %T')
#

EOF

# blacklist
cat << EOF >> blacklist.conf
#
# Block the harmful domains
#

EOF
sed '/^[[:space:]]*$/d' blacklist.txt | sed -e '/^#/!s/^/server=\//g' -e '/^#/!s/$/\//g' >> blacklist.conf

echo >> blacklist.conf
echo >> blacklist.conf
echo >> blacklist.conf

# blacklist-exclude
cat << EOF >> blacklist.conf
#
# Exclude some subdomains
#

EOF
sed '/^[[:space:]]*$/d' blacklist-exclude.txt | sed -e '/^#/!s/^/server=\//g' -e '/^#/!s/$/\/114.114.114.114/g' >> blacklist.conf
