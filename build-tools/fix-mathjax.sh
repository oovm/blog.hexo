#!/usr/bin/env bash
cd .. &&
npm uninstall hexo-renderer-marked --save &&
npm install hexo-renderer-kramed --save &&
npm install hexo-math --save &&
hexo clean