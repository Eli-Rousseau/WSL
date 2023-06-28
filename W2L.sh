#!/bin/bash

# Check that the number of parameters is correct
if [ $# -ne 0 ]
then
    $(which echo) "Error: Incorrect number of parameters submitted. Please use the correct syntax:"
    $(which echo) "user@host:~$ W2L"
fi

# Define the source and destination folder
source=/mnt/c/Users/rouss/Documents/Windows\ Subsystem\ for\ Linux\ \(WSL\)/
destination=/home/eli_rousseau/Windows_Subsystem_for_Linux/

# Define the log files
stdout=/home/eli_rousseau/Windows_Subsystem_for_Linux/BashScripting/WSL/log/W2L_stdout.log
stderr=/home/eli_rousseau/Windows_Subsystem_for_Linux/BashScripting/WSL/log/W2L_stderr.log

# Perform the synchronization with rsync tool
$(which rsync) -ravzh --progress --delete-during "$source" "$destination" > $stdout 2> $stderr

# Check the exit code
echo "Synchronization completed with exit code: $?"
echo "For more information, check changes and erros in the log-files."
echo "> Changes: $stdout"
echo "> Errors: $stderr"