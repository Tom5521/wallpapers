#!/usr/bin/env bash

header=$(
  cat <<END
# My Wallpapers

Here are my wallpapers. Unfortunately, I don't have the sources 
for all of them, but in many cases, the file name reveals
where I got them from.
 
END
)

# Write header
echo "$header" | tee README.md

find . -type f \
  -name "*.png" -or \
  -name "*.jpg" -or \
  -name "*.gif" |
  sort |
  xargs -I % printf "![%](<%> '%')\n\n" |
  tee -a README.md
