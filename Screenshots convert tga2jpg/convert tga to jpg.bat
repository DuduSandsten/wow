mkdir jpg
mogrify -path "jpg" -format jpg -quality 96 "*.tga"
pause