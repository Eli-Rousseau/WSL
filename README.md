# Folder Synchronization Scripts

## Table of Contents

- [Introduction](#introduction)
- [W2L.sh](#w2lsh)
  - [Usage](#usage)
- [L2W.sh](#l2wsh)
  - [Usage](#usage-1)
- [Requirements](#requirements)
- [Configuration](#configuration)
- [Synchronization Process](#synchronization-process)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This project encompasses two bash scripts, namely `W2L.sh` and `L2W.sh`, which serve the purpose of facilitating folder synchronization between a Windows machine and an Ubuntu system through the utilization of Windows Subsystem for Linux (WSL). These scripts empower users to establish a seamless and automated synchronization process, ensuring that changes made in a specific folder on either the Windows machine or the Ubuntu system are promptly and accurately replicated in the corresponding folder on the other platform.

## W2L.sh

The `W2L.sh` script facilitates the bi-directional synchronization of a folder between an Windows machine and an Ubuntu system. Specifically, it ensures that any modifications made within a designated folder on the Windows machine are accurately replicated in the corresponding folder on the Ubuntu system.

### Usage

```bash
$ ./W2L.sh
```

Make sure to adjust the paths in the script to match your specific setup.

## L2W.sh

The `L2W.sh` script facilitates the bi-directional synchronization of a folder between an Ubuntu system and a Windows machine. Specifically, it ensures that any modifications made within a designated folder on the Ubuntu system are accurately replicated in the corresponding folder on the Windows machine.

### Usage

```bash
$ ./L2W.sh
```

Make sure to adjust the paths in the script to match your specific setup.

## Requirements

- Bash shell
- `rsync` tool (should be available by default in most Linux distributions)

## Configuration

Before using the scripts, you need to configure the following variables in each script according to your setup:

- `source`: The path to the source folder on the Windows machine.
- `destination`: The path to the destination folder on the Ubuntu system or Windows machine.
- `stdout`: The path to the log file for standard output.
- `stderr`: The path to the log file for standard error.

Ensure that the destination folder exists and has appropriate permissions for read and write operations.

## Synchronization Process

The scripts use the `rsync` tool to perform the synchronization. `rsync` is a powerful utility that efficiently transfers and synchronizes files between directories or across networks.

The scripts are configured to perform the synchronization recursively (`-r`), preserving file attributes and permissions (`-a`), showing verbose output (`-v`), displaying progress information (`--progress`), and deleting files in the destination folder that are no longer present in the source folder (`--delete-during`).

After running the synchronization, the scripts display the exit code indicating the success or failure of the process, as well as the paths to the log files where you can find more detailed information about the changes and any errors that occurred.

## Contributing

Feel free to modify the content according to your preferences, and don't forget to add a license file (e.g., `LICENSE`) to your project if you haven't already.

## License

This project is licensed under the [MIT License](LICENSE).
