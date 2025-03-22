#!/bin/bash
# Example script showing how to scrape links and save them to a file

# Change to the scripts directory
cd "$(dirname "$0")/../scripts" || exit 1

# Create output directory in data folder
OUTPUT_FILE="../data/scraped_links.txt"

# Run the scrape script and save output
./scrape.sh > "$OUTPUT_FILE"

echo "Scraping complete. Links saved to $OUTPUT_FILE"
echo "Found $(wc -l < "$OUTPUT_FILE") links"
