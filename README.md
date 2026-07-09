# Percona Xtrabackup (LoongArch64 Build)

[![Build Status](https://github.com/loongarch64-releases/percona-xtrabackup/actions/workflows/release.yml/badge.svg)](https://github.com/loongarch64-releases/percona-xtrabackup/actions)

This repository contains the LoongArch64 build configuration and scripts for **[percona-xtrabackup](https://github.com/percona/percona-xtrabackup)**, originally developed by **percona**.

## Quick Start

### Prerequisites
- A LoongArch64 environment (native or QEMU user emulation).
- Docker (optional, for containerized builds).

### Build from Source

1. **Clone this repository**:
   ```bash
   git clone https://github.com/loongarch64-releases/percona-xtrabackup.git
   cd percona-xtrabackup
   ```

2. **Get latest version**
   ```bash
   ./scripts/get_version.sh
   <version>
   ```

3. **Run the build script**:
   ```bash
   ./scripts/build.sh <version>
   ```
   *Or build inside a Docker container:*
   ```bash
   ./scripts/build_in_docker.sh <version>
   ```

4. **Get the binary**:
   The compiled binaries will be available in the `dists/<version>` directory.

## Development

- **Source Code**: The original source is managed upstream at [percona/percona-xtrabackup](https://github.com/percona/percona-xtrabackup).
- **Patches**: Any LoongArch-specific patches are stored in the `patches/` directory (if applicable).
- **CI/CD**: Automated builds are handled via GitHub Actions (see `.github/workflows/`).

## License

This build wrapper inherits the license of the original project: **percona/percona-xtrabackup**.

Please refer to the upstream repository for the full license text.

---
*Generated automatically from release-tools.*
