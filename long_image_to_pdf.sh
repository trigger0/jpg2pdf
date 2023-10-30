#!/bin/bash


long_image_to_pdf() {
    basename=`basename ${1} .JPG`
    identify ${basename}.JPG
    width=`identify -format "%[w]" ${basename}.JPG`
    rm output*.JPG ${basename}.pdf
    
    convert -crop ${width}x$((width*2)) ${basename}.JPG output.JPG
    rename -e 's/\d+/sprintf("%02d",$&)/e' -- output-*.JPG
    convert "output-*.JPG" -quality 100 ${basename}.pdf
    
    rm output*.JPG
}

# Rename IMG_*.jpeg to IMG_*.JPG
ls IMG_*.jpeg |xargs -I @@ echo @@ |sed 's/.jpeg//' |xargs -I @@ mv @@.jpeg @@.JPG

for file in $(ls *.JPG)
do
    long_image_to_pdf ${file}
done

exit 0
