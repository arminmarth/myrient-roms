#!/bin/sh

# Check if a directory was provided as an argument
if [ -z "$1" ]; then
  echo "Error: No directory provided."
  exit 1
fi

# Find all files in the provided directory and its subdirectories
find "$1" -type f | while read file; do
  # Calculate the SHA256 checksum of the file
  checksum=$(sha256sum "$file" | awk '{print $1}')
  # Convert the checksum to all capital letters
  checksum=$(echo "$checksum" | tr '[:lower:]' '[:upper:]')

  # Use exiftool to get the file extension of the file
  extension=$(exiftool -ext "$file" | awk '{print $2}')

  # Rename the file to its SHA256 checksum with the file extension appended
  # The `-i` flag is used to ignore any errors caused by special characters or spaces in the file name
  mv -i "$file" "${checksum}.${extension}"
done

