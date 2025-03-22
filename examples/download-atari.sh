#!/bin/bash
# Example script showing how to download a specific ROM collection

# Set the output directory
OUTPUT_DIR="./downloaded_roms"
mkdir -p "$OUTPUT_DIR"

# Change to the scripts directory
cd "$(dirname "$0")/../scripts" || exit 1

# Download Atari 2600 collection (ID 31)
./wget.sh --output "$OUTPUT_DIR" --download 31

echo "Download complete. Files saved to $OUTPUT_DIR"
