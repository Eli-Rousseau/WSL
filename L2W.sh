#!/bin/bash

# Check that the number of parameters is correct
if [ $# -ne 0 ]
then
    $(which echo) "Error: Incorrect number of parameters submitted. Please use the correct syntax:"
    $(which echo) "user@host:~$ L2W"
fi

# Define the source and destination folder
source=/home/source/folder
destination=/mnt/c/Users/user/destination/folder

# Define the log files
stdout=/home/source/folder/log/L2W_stdout.log
stderr=/home/source/folder/log/log/L2W_stderr.log

# Perform the synchronization with rsync tool
$(which rsync) -ravzh --progress --delete-during "$source" "$destination" > $stdout 2> $stderr

# Check the exit code
echo "Synchronization completed with exit code: $?"
echo "For more information, check changes and erros in the log-files."
echo "> Changes: $stdout"
echo "> Errors: $stderr"
