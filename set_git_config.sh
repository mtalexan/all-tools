#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ] ; then
    echo "USAGE:"
    echo " $0 \"My Name\" \"MyEmail@email.com\""
    echo ""
    echo "Finds all dirs starting from the current that contain"
    echo "a .git folder or file (including the current one), goes"
    echo "into each of the repos or submodules and sets the "
    echo "user.name and user.email"
    echo ""
    exit 1
fi

NAME="$1"
EMAIL="$2"

# submodules have a .git file instead of a .git dir
SUBDIRS=$(dirname $(find -name ".git"))

for D in $SUBDIRS ; do
    pushd $D &>/dev/null

    echo $(pwd)
    # if we're changing the name, we need to unset all locals first
    git config --unset-all user.name &>/dev/null
    git config user.name "$NAME"
        # if we're changing the email, we need to unset all locals first
    git config --unset-all user.email &>/dev/null
    git config user.email "$EMAIL"

    popd &>/dev/null
done
