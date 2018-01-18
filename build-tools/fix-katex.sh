#!/usr/bin/env bash
cd .. &&
npm uninstall hexo-renderer-marked --save &&
npm i hexo-renderer-markdown-it-plus --save &&
npm install hexo-math --save &&
hexo clean