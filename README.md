# Myrient ROMs Repository

[![Bash](https://img.shields.io/badge/Bash-5.0%2B-green.svg)](https://www.gnu.org/software/bash/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/arminmarth/myrient-roms/validate-scripts.yml?branch=main&label=tests)](https://github.com/arminmarth/myrient-roms/actions)

A collection of scripts for downloading and managing ROM collections from the Myrient repository.

## Overview

This repository contains utilities for:
1. Scraping links from the Myrient ROM repository
2. Downloading ROM collections using wget
3. Organizing and renaming ROM files

## Directory Structure

- `scripts/` - Contains all shell scripts for downloading and managing ROMs
  - `scrape.sh` - Scrapes links from the Myrient repository
  - `wget.sh` - Downloads ROM collections with various options
  - `rename_files.sh` - Renames files based on checksums
  - `rsync.sh` - Syncs ROM collections using rsync
- `data/` - Contains data files and DAT files
- `docs/` - Documentation files
- `examples/` - Example usage scenarios

## Scripts

### scripts/scrape.sh

A utility to scrape links from the Myrient repository website.

```bash
# Basic usage
./scripts/scrape.sh

# Scrape a specific URL
./scripts/scrape.sh https://myrient.erista.me/files/Redump/

# Save results to a file
./scripts/scrape.sh > data/links.txt
```

### scripts/wget.sh

A comprehensive downloader for Myrient ROM collections with various options.

```bash
# Show help
./scripts/wget.sh --help

# List all available collections
./scripts/wget.sh --list

# Download a specific collection by ID
./scripts/wget.sh --download 31  # Downloads Atari 2600 collection

# Download to a specific directory
./scripts/wget.sh --output /path/to/roms --download 31

# Enable all download options
./scripts/wget.sh --all
```

### scripts/rename_files.sh

A utility to rename files based on their checksums.

### scripts/rsync.sh

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
