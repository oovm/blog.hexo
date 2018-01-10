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
npm install hexo-renderer-marked --save &&
# Live 2D
npm install --save hexo-helper-live2d &&
# 字数统计
npm install hexo-wordcount --save