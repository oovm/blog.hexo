#!/usr/bin/env bash
cd .. && hexo clean
npm uninstall hexo-renderer-marked --save
npm i hexo-renderer-markdown-it-plus --save
# npm install hexo-math --save &&
npm install markdown-it-katex