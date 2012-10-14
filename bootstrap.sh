#!/bin/bash
function do_link ()
{
    for dotfile in $(find .* -maxdepth 0 -type f)
    do
        echo "Linking '${dotfile}' file"
        ln -sf $PWD/${dotfile} ~/.
    done
    echo "Linking done."
}

cd "$(dirname "$0")"
git pull

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    do_link
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
	do_link
    fi
fi

unset do_link
