#!/usr/bin/env bash
# 不会丢失 commit history 的部署方式
cd .. && rm .deploy -r -f &&
hexo clean && hexo g --silent &&
mkdir .deploy && cd .deploy &&
git clone --depth 1 --branch master --single-branch https://github.com/GalAster/Galaster.github.io.git . &&
rm -rf ./* && cp -r ../public/* . &&
git add -A . && git commit -m ":octocat:Site updated at  `date +"%Y-%m-%d %H:%M"`." &&
git branch -m master && git push -q -u origin master