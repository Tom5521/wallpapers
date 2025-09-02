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
echo "$header" >README.md

for file in $(find . -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.gif" \)); do
  printf "![%s](%s '%s')\n\n" "$file" "$file" "$file" >>README.md
done
