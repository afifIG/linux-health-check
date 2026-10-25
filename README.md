# System Health Check Tool

A simple Bash script that prints a readable health report of a Linux machine in the terminal. I built it step by step while learning Bash scripting on Kali Linux.

## Features

The report shows:

- Current date and time
- Current username
- Hostname
- Kernel version
- CPU architecture
- System uptime
- Disk usage of the root filesystem
- Memory usage (total, used, free, available)
- Network interfaces and their IP addresses

If the `ip` command is missing, the script prints a clear message instead of failing silently.

## How to run

Give the script permission to execute, then run it:

    chmod +x sysinfo.sh
    ./sysinfo.sh

To see the report as root:

    sudo ./sysinfo.sh

## What I learned

- Creating files and folders in the terminal, and editing scripts with nano
- How file permissions work, and why `chmod +x` is needed
- What the shebang line (`#!/bin/bash`) does
- Command substitution with `$( )` and storing results in variables
- The difference between double quotes and single quotes
- Exit status (`$?`), and using `if / then / else / fi`
- Checking if a command exists with `command -v`
- Hiding output with `> /dev/null` and errors with `2> /dev/null`

## Limitations

- Tested only on Kali Linux (ARM64) inside VirtualBox, as a normal user and as root
- Linux only; it will not work on macOS
- Shows disk usage for the root filesystem (`/`) only
- Only the `ip` command has an error check; the other commands are not checked
- Long IPv6 addresses can wrap onto a second line in a narrow terminal
- The report is only printed on screen, not saved to a file
