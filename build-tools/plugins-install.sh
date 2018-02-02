#!/usr/bin/env bash
cd .. &&
# 更新npm, 检查服务, 一键处理奇葩问题
npm cache verify &&
npm update -g &&
npm install &&
# 解决白板 Cannot GET /
npm install hexo-server --save &&
npm install hexo-renderer-ejs --save &&
npm install hexo-renderer-stylus --save &&
# 使用 KaTeX 方案
# npm uninstall hexo-renderer-marked --save &&
npm i hexo-renderer-markdown-it-plus --save &&
# npm install hexo-math --save &&
# Live 2D
npm install hexo-helper-live2d --save &&
npm install live2d-widget-model-koharu --save &&
# 字数统计
npm install hexo-symbols-count-time --save &&
# npm install hexo-wordcount --save
# git 部署
npm install hexo-deployer-git --save
