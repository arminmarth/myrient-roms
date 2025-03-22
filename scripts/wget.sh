#!/bin/bash
#
# wget.sh - Batch downloader for Myrient ROM collections
#
# This script downloads ROM collections from the Myrient repository
# using wget with optimized settings for reliable downloads.
#
# Author: Armin Marth
# Version: 1.1.0
# Last Updated: 2025-03-22

set -e  # Exit immediately if a command exits with a non-zero status

# Base URL for downloads
BASE_URL="https://myrient.erista.me/No-Intro"

# Common wget options
WGET_OPTIONS="-m -np -c -e robots=off -R \"index.html*\""

# Function to display usage information
show_help() {
    echo "Usage: $(basename "$0") [OPTIONS]"
    echo "Downloads ROM collections from Myrient repository."
    echo ""
    echo "Options:"
    echo "  -h, --help         Show this help message"
    echo "  -l, --list         List all available collections"
    echo "  -d, --download ID  Download a specific collection by ID"
    echo "  -a, --all          Download all collections (uncomment all lines)"
    echo "  -o, --output DIR   Specify output directory (default: current directory)"
    echo ""
    echo "Example:"
    echo "  $(basename "$0") --download 31  # Download Atari - 2600 collection"
    echo "  $(basename "$0") --all          # Download all collections"
}

# Function to uncomment all wget lines
uncomment_all() {
    sed -i 's/^# wget/wget/g' "$0"
    echo "All download lines have been uncommented. Run the script again to start downloads."
    exit 0
}

# Function to list all collections with IDs
list_collections() {
    echo "Available ROM Collections:"
    echo "=========================="
    grep -n "wget.*$BASE_URL" "$0" | sed 's/^/ID: /' | sed 's/:.* https:\/\/myrient.erista.me\/No-Intro\//\t/'
}

# Function to download a specific collection by line number
download_collection() {
    local id=$1
    local line
    
    # Extract the specific wget command
    line=$(sed -n "${id}p" "$0")
    
    # Check if the line contains a wget command
    if [[ $line == *"wget"* && $line == *"$BASE_URL"* ]]; then
        # Remove comment if present
        line=${line#"# "}
        echo "Executing: $line"
        eval "$line"
    else
        echo "Error: Invalid collection ID: $id"
        echo "Use --list to see available collections"
        exit 1
    fi
}

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case "$1" in
        -h|--help)
            show_help
            exit 0
            ;;
        -l|--list)
            list_collections
            exit 0
            ;;
        -a|--all)
            uncomment_all
            ;;
        -d|--download)
            if [[ -z "$2" || "$2" =~ ^- ]]; then
                echo "Error: --download requires a collection ID"
                exit 1
            fi
            download_collection "$2"
            exit 0
            ;;
        -o|--output)
            if [[ -z "$2" || "$2" =~ ^- ]]; then
                echo "Error: --output requires a directory path"
                exit 1
            fi
            OUTPUT_DIR="$2"
            mkdir -p "$OUTPUT_DIR"
            cd "$OUTPUT_DIR"
            shift
            ;;
        *)
            echo "Unknown option: $1"
            show_help
            exit 1
            ;;
    esac
    shift
done

# If no arguments provided, show help
if [[ $# -eq 0 ]]; then
    show_help
    exit 0
fi

# The following lines contain the wget commands for different ROM collections
# Use the --list option to see all available collections
# Use the --download option with the ID to download a specific collection

# wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/ACT%20-%20Apricot%20PC%20Xi
# wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/APF%20-%20Imagination%20Machine
# wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/APF%20-%20MP-1000
# wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Acorn%20-%20Archimedes%20%28ADF%29
# wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Acorn%20-%20Archimedes%20%28JFD%29
# wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Acorn%20-%20Atom%20%28Tapes%29%20%28UEF%29
# wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Acorn%20-%20Risc%20PC%20%28Pauline%29
# wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Acorn%20RISC%20OS%20-%20Flash%20Media%20%28Misc%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Amstrad%20-%20CPC%20%28FluxDumps%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Amstrad%20-%20CPC%20%28Misc%29
# wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Analogue%20-%20Analogue%20Pocket
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple%20-%20I%20%28Tapes%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple%20-%20II%20%28A2R%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple%20-%20II%20%28WOZ%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple%20-%20II%20%28Waveform%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple%20-%20II%20Plus%20%28Flux%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple%20-%20II%20Plus%20%28WOZ%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple%20-%20IIGS%20%28A2R%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple%20-%20IIGS%20%28WOZ%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple%20-%20IIe%20%28A2R%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple%20-%20IIe%20%28Kryoflux%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple%20-%20IIe%20%28WOZ%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple%20-%20Macintosh%20%28A2R%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple%20-%20Macintosh%20%28BETA%29%20%28Bitstreams%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple%20-%20Macintosh%20%28BETA%29%20%28FluxDumps%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple%20-%20Macintosh%20%28DC42%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple%20-%20Macintosh%20%28KryoFlux%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple%20-%20Macintosh%20%28Uncategorized%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple%20-%20Macintosh%20%28WOZ%29
# wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Apple-Bandai%20-%20Pippin%20%28Floppies%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Atari%20-%202600
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Atari%20-%205200
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Atari%20-%207800
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Atari%20-%208-bit%20Family
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Atari%20-%208-bit%20Family%20%28Kryoflux%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Atari%20-%20Jaguar%20%28J64%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Atari%20-%20Jaguar%20%28ROM%29
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Atari%20-%20Lynx
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Atari%20-%20ST
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Atari%20-%20ST%20%28Flux%29
# wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Bally%20-%20Astrocade
# wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Bally%20-%20Astrocade%20%28Tapes%29
# wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Bally%20-%20Astrocade%20%28Tapes%29%20%28WAV%29
# wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Bandai%20-%20Design%20Master%20Denshi%20Mangajuku
# wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Bandai%20-%20Gundam%20RX-78
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Bandai%20-%20WonderSwan
wget -m -np -c -e robots=off -R "index.html*" https://myrient.erista.me/No-Intro/Bandai%20-%20WonderSwan%20Color
