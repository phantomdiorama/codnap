# Set Variables
$config = "blog.yaml"
$folder = "public\images"

# create folder if not exist
if ( -Not (Test-Path $folder.trim() ))
{
 New-Item -Path $folder -ItemType Directory
}

# Copy files to public
Copy-Item *.css public\
Copy-Item *.xml public\
Copy-Item *.png public\images\
Copy-Item *.jpg public\images\

# Build website with Pandoc
foreach ($file in get-ChildItem *.md) {
  $str=$file.basename+".html"
  echo $str
  pandoc --defaults $config $file.name -o public\$str
 }
pause
