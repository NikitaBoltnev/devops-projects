#!/bin/bash

function topFiveFoldersWithTheHighestWeight { 
number=0
find $1 -mindepth 1 -type d -exec du -b {} \; | 
sort -hr | head -n 5 |
while read -r size path
    do
    correctWeight=$(objectWeight "$size")
    printf "%d - %s/, %s\n" $((++number)) "$path" "$correctWeight"
    done
}


function topTenFilesMaximumSize {
number=0
find "$1" -type f -exec du -b {} \; |
sort -hr | head -n 10 |
while read -r size path
    do
    split=$(basename "$path")
    if [[ "$split" == *.* ]]
        then
        type="${split##*.}"
        else
            type="no type"
    fi
    correctWeight=$(objectWeight "$size")
    printf "%d - %s, %s, %s\n" $((++number)) "$path" "$correctWeight" "$type"
    done
}


function topTenFilesExecutable { 
number=0
find $1 -type f \( -name "*.exe" -o -executable \) -exec du -b {} \; | sort -hr | head -n 10 |
while read -r size path
    do
    hash=$(md5sum "$path" | awk '{print $1}')
    correctWeight=$(objectWeight "$size")
    printf "%d - %s, %s, %s\n" $((++number)) "$path" "$correctWeight" "$hash"
    done
}


function objectWeight {
     local size
    if [[ $1 -ge 1073741824 ]]
        then
        size=$(echo "scale=0; $1 / 1073741824" | bc)" GB"
    elif [[ $1 -ge 1048576 ]]
        then
        size=$(echo "scale=0; $1 / 1048576" | bc)" MB"
    elif [[ $1 -ge 1024 ]]
        then
        size=$(echo "scale=0; $1 / 1024" | bc)" KB"
    else
        size="$1 B"
    fi
    echo "$size"
}


totalNumberFolders=$(find $1 -mindepth 1 -type d | wc -l)
totalNumberFiles=$(find $1 -type f | wc -l)
configurationFiles=$(find $1 -type f -name "*.conf" | wc -l)
textFiles=$(find $1 -type f \( -name "*.txt" -o -name "*.md" -o -name "*.csv" -o -name "*.json" -o -name "*.xml" \) | wc -l)
executableFiles=$(find $1 -type f \( -name "*.exe" -o -executable \) | wc -l)
logFiles=$(find $1 -type f -name "*.log" | wc -l)
archiveFiles=$(find $1 -type f \( -name "*.zip" -o -name "*.rar" -o -name "*.7z" -o -name "*.xz" -o -name "*.gz" -o -name "*.bz2" \) | wc -l)
symbolicLinks=$(find $1 -type l | wc -l)


echo "Total number of folders (including all nested ones) = $totalNumberFolders"
echo "TOP 5 folders of maximum size arranged in descending order (path and size):"
topFiveFoldersWithTheHighestWeight $1
echo "Total number of files = $totalNumberFiles"
echo "Number of:"
echo "Configuration files (with the .conf extension) = $configurationFiles"
echo "Text files = $textFiles"
echo "Executable files = $executableFiles"
echo "Log files (with the extension .log) = $logFiles"
echo "Archive files = $archiveFiles"
echo "Symbolic links = $symbolicLinks"
echo "TOP 10 files of maximum size arranged in descending order (path, size and type):"
topTenFilesMaximumSize $1
echo "TOP 10 executable files of the maximum size arranged in descending order (path, size and MD5 hash of file):"
topTenFilesExecutable $1
timeSpent=$((SECONDS - start))
echo "Script execution time (in seconds) = $timeSpent"