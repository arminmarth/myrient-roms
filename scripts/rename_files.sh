#!/bin/sh
find /mounted_dir -type f -exec sha256sum {} \; | while read -r checksum file; do
  extension="${file##*.}"
  mv "$file" "${checksum}.${extension}"
done
