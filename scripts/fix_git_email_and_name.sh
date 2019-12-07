#!/bin/bash
# Created by ElasticTunnel
# https://elastictunnel.com
# License: MIT
# If you have any questions or suggestions please contact us via our official site.

if [ $# -ne 4 ] ; then
    echo " Usage:"
    echo "$0 old@email.com old_name new@email.com new_name"
    echo "$0 old@email.com \"Old Name\" new@email.com \"New Name\""
    exit 1
fi

export OLD_EMAIL="$1"
export OLD_NAME="$2"
export CORRECT_EMAIL="$3"
export CORRECT_NAME="$4"

echo "Old name: $OLD_NAME"
echo "Old email: $OLD_EMAIL"
echo "Correct name: $CORRECT_NAME"
echo "Correct email: $CORRECT_EMAIL"

git filter-branch -f --env-filter '
if [ "$GIT_COMMITTER_NAME" = "$OLD_NAME" ]; then
    if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]; then
        export GIT_COMMITTER_NAME="$CORRECT_NAME"
        export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
    fi
fi
if [ "$GIT_AUTHOR_NAME" = "$OLD_NAME" ]; then
    if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]; then
        export GIT_AUTHOR_NAME="$CORRECT_NAME"
        export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
    fi
fi
' --tag-name-filter cat -- --branches --tags