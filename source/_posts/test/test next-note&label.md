---
title: NexT-note 测试
abbrlink: 5d25237
date: 2018-02-26 18:58:20
tags:
  - test
categories:
  - test
copyright: false
---

# 测试准备

### 功能描述

https://github.com/iissnan/hexo-theme-next/pull/1697

### 设置

`next/_config.yml`中寻找并修改以下关键词

```
note:
  style: flat
  icons: true
```

# 测试样例

## None

{% note %}
**Note header**
Content of note (without define class style).
```md
{% note %}
**Note header**
Content of note (without define class style).
{% endnote %}
```
{% endnote %}

## Default

{% note default %}
**Note Default header**
Content of default note.
```md
{% note default %}
**Note Default header**
Content of default note.
{% endnote %}
```
{% endnote %}

## Primary

{% note primary %}
**Note Primary header**
Content of primary note.
```md
{% note primary %}
**Note Primary header**
Content of primary note.
{% endnote %}
```
{% endnote %}

## Info

{% note info %}
**Note Info header**
Content of info note.
```md
{% note info %}
**Note Info header**
Content of info note.
{% endnote %}
```
{% endnote %}

## Success

{% note success %}
**Note Success header**
Content of success note.
```md
{% note success %}
**Note Success header**
Content of success note.
{% endnote %}
```
{% endnote %}

## Warning

{% note warning %}
**Note Warning header**
Content of warning note.
```md
{% note warning %}
**Note Warning header**
Content of warning note.
{% endnote %}
```
{% endnote %}

## Danger

{% note danger %}
**Note Danger header**
Content of danger note.
```md
{% note danger %}
**Note Danger header**
Content of danger note.
{% endnote %}
```
{% endnote %}