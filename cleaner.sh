#!/bin/bash
# macos-cleaner

# Getting cache's folders structure.
echo -e "\n--------------\n"
echo -e "Clearing user folder cache\n"
ls ~/Library/Caches/ > ~/folders.txt

# Gathering general infos.
user=$(whoami)
user_cache_path="/Users/$user/Library/Caches/"
free_disk_space=$(df -h | sed -n 2p | awk '{print $4}')

# Cleaning.
cat ~/folders.txt | while read folder
    do
        cd $user_cache_path$folder
        sudo rm -rf ./*
    done

rm ~/folders.txt

actual_free_disk_space=$(df -h | sed -n 2p | awk '{print $4}')

echo -e "\nDone!"
echo -e "\n--------------\n"

echo -e "Free space before operation: $free_disk_space"
echo -e "Free space after operation: $actual_free_disk_space"