#!/usr/bin/env bash

# cod nap

# create output folder
mkdir -p ./public/posts

# copy images
cp ./images ./public/images

# Copy files to public
cp atom.xml ./public
cp style.css ./public
cp style.css ./public/posts

# build pages
for i in *.md
 do
name=$(echo "$i" | cut -f 1 -d '.')
pandoc --defaults blog.yaml $i -o ./public/$name.html
done

# swap to posts dir
cd posts

# build posts
for i in *.md
 do
name=$(echo "$i" | cut -f 1 -d '.')
pandoc --defaults blog.yaml $i -o ./public/posts/$name.html
done
