#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"

$ chmod +x entrypoint.sh

git add action.yml entrypoint.sh Dockerfile README.md
git commit -m "My first action is ready"
git tag -a -m "My first action release" v1
git push --follow-tags
