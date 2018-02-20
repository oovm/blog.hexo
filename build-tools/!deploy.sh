#!/usr/bin/env bash
# 不会丢失 commit history 的部署方式
cd .. && rm .deploy_git -r -f &&
hexo clean && hexo g --silent &&
git clone https://github.com/GalAster/Galaster.github.io .deploy_git &&
cd .deploy_git && git checkout master &&
cd ../ && mv .deploy_git/.git/ ./public/ &&
cd ./public && git add . &&
git commit -m "Site updated at  `date +"%Y-%m-%d %H:%M"` :octocat:" &&
git push --force https://github.com/GalAster/Galaster.github.io master:master