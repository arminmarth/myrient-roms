# Myrient ROMs Repository

A collection of scripts for downloading and managing ROM collections from the Myrient repository.

## Overview

This repository contains utilities for:
1. Scraping links from the Myrient ROM repository
2. Downloading ROM collections using wget
3. Organizing and renaming ROM files

## Scripts

### scrape.sh

A utility to scrape links from the Myrient repository website.

```bash
# Basic usage
./scrape.sh

# Scrape a specific URL
./scrape.sh https://myrient.erista.me/files/Redump/

# Save results to a file
./scrape.sh > links.txt
```

### wget.sh

A comprehensive downloader for Myrient ROM collections with various options.

```bash
# Show help
./wget.sh --help

# List all available collections
./wget.sh --list

# Download a specific collection by ID
./wget.sh --download 31  # Downloads Atari 2600 collection

# Download to a specific directory
./wget.sh --output /path/to/roms --download 31

# Enable all download options
./wget.sh --all
```

### rename_files.sh

A utility to rename files based on their checksums.

### rsync.sh

A utility for syncing ROM collections using rsync.

## Usage Notes

- These scripts are designed for personal archival purposes
- Be mindful of bandwidth usage when downloading large collections
- Some collections may be very large (multiple GB)
- The scripts support resuming interrupted downloads

## Requirements

- Linux/Unix environment
- wget
- curl
- rsync (for rsync.sh)
- Sufficient disk space for ROM collections

## Legal Considerations

This repository contains only scripts for downloading content, not the content itself. Users are responsible for ensuring they have the legal right to download any content they access using these scripts.

## License

This project is released under the MIT License. See the LICENSE file for details.
