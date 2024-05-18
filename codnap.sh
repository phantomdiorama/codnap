#!/usr/bin/env bash

# cod nap

# create folder if not exist
mkdir -p ./public/images

# Copy files to public
cp {*.css,*.xml} ./public
cp {*.png,*.jpg} ./public/images

# Build website with Pandoc
for i in *.md
 do
name=$(echo "$i" | cut -f 1 -d '.')
pandoc --defaults blog.yaml "$i" -o ./public/"$name".html
done
