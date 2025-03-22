# Contributing to Myrient ROMs Repository

Thank you for considering contributing to the Myrient ROMs Repository! This document provides guidelines for contributions.

## How to Contribute

1. **Fork the Repository**: Create your own fork of the repository
2. **Create a Branch**: Make your changes in a new branch
3. **Submit a Pull Request**: Once your changes are ready, submit a pull request

## Development Setup

### Prerequisites

- Linux/Unix environment
- wget
- curl
- rsync (for rsync.sh)
- Sufficient disk space for ROM collections

### Local Development

```bash
# Clone the repository
git clone https://github.com/arminmarth/myrient-roms.git
cd myrient-roms

# Make scripts executable
chmod +x scripts/*.sh

# Run a script
./scripts/scrape.sh
```

## Coding Standards

- Follow the [Google Shell Style Guide](https://google.github.io/styleguide/shellguide.html) for shell scripts
- Use meaningful variable and function names
- Add comments for complex logic
- Include error handling for all operations
- Comment out all wget commands by default to prevent accidental downloads

## Testing

Before submitting a pull request, please:

1. Test your changes with small test cases
2. Verify that all existing functionality still works
3. Run shellcheck on your scripts to ensure they follow best practices

## Pull Request Process

1. Update the README.md with details of changes if applicable
2. Update documentation for any new features or changes
3. Your pull request will be merged once it has been reviewed and approved

## Code of Conduct

- Be respectful and inclusive in all communications
- Focus on constructive feedback
- Respect the original author's design decisions

## Questions?

If you have questions about contributing, please open an issue in the repository.

Thank you for your contributions!
