#!/bin/bash

# Define source folder
DOWNLOADS="/mnt/c/Users/lenovo/Downloads"

# Define destination folders
IMAGES="$DOWNLOADS/images"
DOCUMENTS="$DOWNLOADS/documents"
ARCHIVES="$DOWNLOADS/archives"
MISC="$DOWNLOADS/misc"

# Create folders
mkdir -p "$IMAGES" "$DOCUMENTS" "$ARCHIVES" "$MISC"

echo " Organizing files in: $DOWNLOADS"

# Loop through files
for file in "$DOWNLOADS"/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        extension="${filename##*.}"

        case "$extension" in
            jpg|jpeg|png|gif|bmp)
                echo " Moving $filename to images/"
                mv "$file" "$IMAGES"
                ;;
            pdf|doc|docx|txt|xls|xlsx|ppt|pptx)
                echo " Moving $filename to documents/"
                mv "$file" "$DOCUMENTS"
                ;;
            zip|rar|7z|tar|gz)
                echo " Moving $filename to archives/"
                mv "$file" "$ARCHIVES"
                ;;
            exe|msi|dll|bat)
                echo " Skipping system/install file: $filename"
                ;;
            *)
                echo " Moving $filename to misc/"
                mv "$file" "$MISC"
                ;;
        esac
    fi
done

echo " Done organizing!"
