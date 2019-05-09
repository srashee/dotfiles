#!/usr/bin/env bash
# installer script
### OPTIONS AND VARIABLES ###

# if no arguments print welcome message
if [ $# -eq 0 ]
  then
    echo "Hi, this script installs all of my dot-files on a fresh arch install"
    echo "Pleae run this again with the -h flag for usage instructions"
    exit
fi

while getopts ":h" o; do case "${o}" in
	h) printf "Optional arguments for custom use:\\n  -r: Dotfiles repository (local file or url)\\n  -p: Dependencies and programs csv (local file or url)\\n  -a: AUR helper (must have pacman-like syntax)\\n  -h: Show this message\\n" && exit ;;
	*) printf "Invalid option: -%s\\n" "$OPTARG" && exit ;;
esac done

