# Dependencies

## imagemagick for identify and convert, rename for rename
sudo apt install imagemagick rename

## Remove ImageMagick-6's limit
sudo mv /etc/ImageMagick-6/policy.xml /etc/ImageMagick-6/policy.xmlout
