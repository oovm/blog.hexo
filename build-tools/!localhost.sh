#!/usr/bin/env bash
cd .. && hexo clean
"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" http://localhost:2333&&
hexo s -g -p 2333