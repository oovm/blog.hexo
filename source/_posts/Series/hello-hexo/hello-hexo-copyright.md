---
title: Hello Hexo — 版权声明
abbrlink: 5a8a6c8d
date: 2018-02-22 16:55:18
tags:
nocopyright: true
---

```
post_copyright:
  enable: false
```

下面的设定不要了, 删了好了

`themes\next\layout\_macro\post.swig`

```html
{% if not post.nocopyright %}

<ul class="post-copyright">
  <span style="font-weight:blod">版权声明</span>
  <img src="/images/Copyright_CC.png" >

  <!--li class="post-copyright-link">
    <strong>本文作者：</strong>
    <a href="/" title="欢迎访问 {{ theme.author }} 的个人博客">{{ theme.author }}</a>
  </li-->

  <!--li class="post-copyright-link">
    <strong>本文标题：</strong>
    <a href="{{ url_for(post.permalink) }}" title="{{ post.title }}">{{ post.title }}</a>
  </li-->

  <li class="post-copyright-link">
    <strong>本文链接：</strong><a href="{{url_for(post.permalink) }}" title="{{ post.title }}">{{ post.permalink }}</a>
    <br>
    <strong>发布时间：</strong>{{ post.date.format("YYYY年M月D日 - HH时MM分") }}
  </li>

  <strong>版权声明： </strong>
  <li class="post-copyright-license"><p>
    本文由 <a href="/" title="欢迎访问 {{ theme.author }} 的个人博客">{{ theme.author }}</a> 创作，采用
    <a href="https://creativecommons.org/licenses/by-nc-nd/4.0/deed.zh" rel="license" target="_blank">Creative Commons BY-NC-ND 4.0 International License</a>
    协议授权, 如需转载, 请使用页面左边分享功能. <strong>转载请保留以上声明信息, 谢谢合作!</strong>
  </p></li>
</ul>
{% endif %}
```

然后把你的版权图片扔进 `/images/Copyright_CC.png` 即可, 如果还有其他的样式需求, 可以使用自定义css实现.

### css配置

我的 css 配置如下:
```css
// 版权大框
.post-copyright {
    margin: 2em 0 0;
    padding: 0.5em 1em;
    border-left: 3px solid #FF1700;
    background-color: #F9F9F9;
    list-style: none;
    border: 1px solid black
    margin-left:10px
}
//超链接颜色
.post-copyright a {
    color:#258FC6
}
//首行缩进
.post-copyright-license p {
  text-indent:2em;
}
```