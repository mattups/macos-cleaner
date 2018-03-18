# macos-cleaner
A simple script to clean some junk.
Still working on it!

## Usage

First of all, make sure to made the script executable by giving:

`sudo chmod +x cleaner.sh`

Now you're ready to execute with:

`./cleaner.sh`

**_Important note_**

Don't execute the script as root. It will try to delete root user cache, not yours.

## Cache clearing
This is the path the script will search folders to delete
`~/Library/Caches`. 

Once done, you will still see the folder's structure, but everything inside will be deleted. This is the safest thing to do. System Caches will not be affected in any way.

## Features
Maybe other feature other than user's cache clearing will be added in future.