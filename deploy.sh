#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub, please enter the commit...\033[0m\n"

read msg
git add .
git commit -m "$msg"
git push

hugo

cd public
git add .
git commit -m "$msg"
git push