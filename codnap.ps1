# create output folder
New-Item -name "public\posts" -type directory -force

# copy images
Copy-Item images\ public\ -recurse

# copy files to public
Copy-Item atom.xml public\
Copy-Item style.css public\
Copy-Item style.css public\posts\

# build pages
foreach ($file in get-ChildItem *.md) {
  $str=$file.basename+".html"
  echo $str
  pandoc --defaults blog.yaml $file.name -o public\$str
 }

# swap to posts dir
Set-Location posts

# build posts
foreach ($file in get-ChildItem *.md) {
  $str=$file.basename+".html"
  echo $str
  pandoc --defaults blog.yaml $file.name -o ..\public\posts\$str
 }

pause

