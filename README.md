
# Introduction
This tools is to convert long image to a pdf, splitted images to the output pdf.

# Dependencies

## imagemagick for identify and convert, rename for rename
```
sudo apt install imagemagick rename
```

## Remove ImageMagick-6's limit
```
sudo mv /etc/ImageMagick-6/policy.xml /etc/ImageMagick-6/policy.xmlout
```

# Usage
```
cd jpg2pdf/
cp IMG_*.jpeg ./
sh -x long_image_to_pdf.sh
```
