#!/bin/bash
# macos-cleaner

# Clearing user's cache.
echo -e "\n -------------- \n"
echo -e "Clearing user folder cache\n"
ls ~/Library/Caches/ > ~/folders.txt

# Getting current user to build path.
user=$(whoami)
user_cache_path="/Users/$user/Library/Caches/"

# Cleaning.
cat ~/folders.txt | while read folder
    do
        cd $user_cache_path$folder
        sudo rm -rf ./*
    done

rm ~/folders.t

echo -e "\n Done!"
echo -e "\n -------------- \n"