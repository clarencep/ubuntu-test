#!/bin/sh

docker build --no-cache -t clarencep/ubuntu-test .

docker run --rm clarencep/ubuntu-test date > last_updated_time.txt

git add -A .

git commit -m "auto build"

git push origin master

