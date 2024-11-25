#!/bin/bash

# Chemin vers le répertoire contenant les fichiers PDF
pdf_directory="."

for file in fig*.pdf; do
    filename=${file%.*}
    convert -density 300 -units PixelsPerInch "$filename.pdf" -quality 90 "$filename.svg"
    convert -density 300 -units PixelsPerInch "$filename.pdf" -quality 90 "$filename.png"
done
