#!/bin/bash
set -ev && \
cd ./_site && \
remote_repo=${"https://${GH_TOKEN}@${GH_REF}":-`git config remote.origin.url`} && \
remote_branch="gh-pages" && \
git init && \
git config user.name "zeospec" && \
git config user.email "www.aruntejathefriend@gmail.com" && \
git add . && \
git commit -m'Deployed to Github Pages' && \
git push --force --quiet $remote_repo master:$remote_branch > /dev/null 2>&1 && \
rm -fr .git && \
cd ../