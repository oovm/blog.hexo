---
title: read
date: 2018-01-11 21:43:48
tags:
---
/next/_config.yml


scheme: Pisces

creative_commons: by-nc-sa

# 关闭愚蠢的淡入动画

motion:
  enable: false
  
  
## 惰性加载
lazyload: true

pace: true

# 文章tag样式

修改模板 
/themes/next/layout/_macro/post.swig，搜索 `rel="tag">#`，将 `#` 换成 `<i class="fa fa-tag"></i>`

在目录next/layout/_macro/下添加my-copyright.swig：




# 来个背景
canvas_lines: true


git commit --date="Dec 15 14:13:17 2017 +0800" -am "架构::修复配置错误"
![]()



# Automatically saving scroll position on each post/page in cookies.
save_scroll: false


## 书签

---

# 脚本级定制

## 折叠块

在main.js中添加折叠js
next主题的主要js位于themes/next/source/js/src/post-details.js,
在里面找合适的位置，添加如下代码：

```js
$(document).ready(function(){
    $(document).on('click', '.fold_hider', function(){
        $('>.fold', this.parentNode).slideToggle();
        $('>:first', this).toggleClass('open');
    });
    //默认情况下折叠
    $("div.fold").css("display","none");
});
```

自定义内建标签
在主题scripts下添加一个tags.js, 位于themes/next/scripts/tags.js

```js
/*
  @haohuawu
  修复 Nunjucks 的 tag 里写 ```代码块```，最终都会渲染成 undefined 的问题
  https://github.com/hexojs/hexo/issues/2400
*/
const rEscapeContent = /<escape(?:[^>]*)>([\s\S]*?)<\/escape>/g;
const placeholder = '\uFFFD';
const rPlaceholder = /(?:<|&lt;)\!--\uFFFD(\d+)--(?:>|&gt;)/g;
const cache = [];
function escapeContent(str) {
  return '<!--' + placeholder + (cache.push(str) - 1) + '-->';
}
hexo.extend.filter.register('before_post_render', function(data) {
  data.content = data.content.replace(rEscapeContent, function(match, content) {
    return escapeContent(content);
  });
  return data;
});
hexo.extend.filter.register('after_post_render', function(data) {
  data.content = data.content.replace(rPlaceholder, function() {
    return cache[arguments[1]];
  });
  return data;
});
```
再继续添加一个fold.js
```js
/* global hexo */
// Usage: {% fold ???? %} Something {% endfold %}
function fold (args, content) {
    var text = args[0];
    if(!text) text = "点击显/隐";
    return '<div><div class="fold_hider"><div class="close hider_title">' + text + '</div></div><div class="fold">\n' + hexo.render.renderSync({text: content, engine: 'markdown'}) + '\n</div></div>';
}
hexo.extend.tag.register('fold', fold, {ends: true});
```
最后，添加几个自定义样式，位置themes/next/source/css/_custom/custom.styl
```css
.hider_title{
    font-family: "Microsoft Yahei";
    cursor: pointer;
}
.close:after{
    content: "▼";
}
.open:after{
    content: "▲";
}
```
最后，在我们需要折叠的地方前后添加便签，示例用法：
```plain
{% fold [折叠按钮显示的文字] %}
需要折叠的内容, 支持代码块
{% endfold %}
```

{% fold 折叠按钮显示的文字 %}
需要折叠的内容, 支持代码块
{% endfold %}


