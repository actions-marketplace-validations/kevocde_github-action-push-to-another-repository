#!/bin/sh -l

set -e  # if a command fails it stops the execution
set -u  # script fails if trying to access to an undefined variable

echo "[+] Starting action"

REPOSITORY_URI=$1
USERNAME=$2
TOKEN=$3
BRANCH=$4

# Setup git
echo "[+] Pushing $BRANCH to repository $REPOSITORY_URI"
git remote add gitlab "https://$USERNAME:$TOKEN@$REPOSITORY_URI"
git push origin gitlab $BRANCH
