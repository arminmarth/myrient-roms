#!/bin/bash
#
# scrape.sh - Web scraper for Myrient ROM links
#
# This script scrapes links from the Myrient ROM repository website
# and outputs them to stdout.
#
# Author: Armin Marth
# Version: 1.1.0
# Last Updated: 2025-03-22

set -e  # Exit immediately if a command exits with a non-zero status

# Default URL to scrape
DEFAULT_URL="https://myrient.erista.me/files/No-Intro/"
URL="${1:-$DEFAULT_URL}"

# Function to display usage information
show_help() {
    echo "Usage: $(basename "$0") [URL]"
    echo "Scrapes links from the specified URL (defaults to Myrient No-Intro repository)"
    echo ""
    echo "Example:"
    echo "  $(basename "$0") https://myrient.erista.me/files/Redump/"
    echo ""
    echo "Output can be redirected to a file:"
    echo "  $(basename "$0") > links.txt"
}

# Show help if requested
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    show_help
    exit 0
fi

echo "Scraping links from: $URL" >&2

# Check if curl is installed
if ! command -v curl &> /dev/null; then
    echo "Error: curl is not installed. Please install curl to use this script." >&2
    exit 1
fi

# Send an HTTP GET request to the URL and process the response
curl -s "$URL" | 
    grep -o '<a [^>]*href="[^"]*"' | 
    sed -n 's/.*href="\([^"]*\)".*/\1/p' |
    grep -v "^?" |  # Filter out links that start with ?
    sort

echo "Scraping completed." >&2
