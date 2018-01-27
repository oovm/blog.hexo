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
npm install hexo-renderer-kramed --save &&
npm install hexo-math --save &&
# Live 2D
npm install hexo-helper-live2d --save &&
npm install live2d-widget-model-koharu --save&&
# 字数统计
npm install hexo-symbols-count-time --save
# npm install hexo-wordcount --save