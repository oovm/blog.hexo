---
title: gayhub 大佬认证
copyright: true
abbrlink: 5a8a6c8d
date: 2017-11-11 19:02:35
tags:
categories:
---

gpg --gen-key

Please select what kind of key you want:
   (1) RSA and RSA (default)
   (2) DSA and Elgamal
   (3) DSA (sign only)
   (4) RSA (sign only)
Your selection?

RSA keys may be between 1024 and 4096 bits long.
What keysize do you want? (2048) 4096

Please specify how long the key should be valid.
         0 = key does not expire
      <n>  = key expires in n days
      <n>w = key expires in n weeks
      <n>m = key expires in n months
      <n>y = key expires in n years
Key is valid for? (0)
0


years


GalAster
galaster@foxmail.com
From 2018-2-22-18:24

O

然后需要一个密码, 输入是看不见的, 要输两遍


gpg --list-keys 


/.gnupg/pubring.gpg
---------------------------------
pub   4096R/9E91A3EF 2018-02-22
uid                  GalAster (From 2018-2-22-18:24) <galaster@foxmail.com>

gpg --armor --export pub 9E91A3EF

-----BEGIN PGP PUBLIC KEY BLOCK-----，结尾：-----END PGP PUBLIC KEY BLOCK-----

https://github.com/settings/gpg/new

接下来强制启用commit签名

```sh
git config --global commit.gpgsign true
git config --global user.signingkey 9E91A3EF
git config --global alias.commit commit -S
```

如果某个项目不要签名, 那就单独取消

```sh
git config commit.gpgsign false
```

## IDE 配置

Well, 如果你使用IDE就超麻烦了, 如果你使用 Win 那就 $$\small{麻烦×2, 麻烦^2, 麻烦^{麻烦^{麻烦^\cdots}}}$$ 了...

我看了好多 Linux 的教程, 外加一个 Mac 唯独没有 win 的...

看了两个小时原理才摸索出一个方法来...

### Win 用户

我把这个问题里的一大串过程看了一遍

https://stackoverflow.com/questions/46863981/how-to-sign-git-commits-from-within-an-ide-like-intellij

首先需要把 `tty` 关掉, 输入`echo 'no-tty' >> ~/.gnupg/gpg.conf`, tty 大概就是终端(teletypewriter)模式的意思.

其次需要一个 `gpg-agent`, 这个可以由某种加密软件来充当, 这我只知道putty自带的那个, 还拎不清到底谁是加密用的... 

我又搜了搜 gpg+win 找到一个 gpg4win 这名字... 那就它了!


Gpg4win 3

https://gpg4win.org/get-gpg4win.html

下载速度很慢...天生慢, 因为挂代理都没用...

毕竟win用户从来没有加密需求...


然后git指向这个可执行文件

git config --global gpg.program "C:\\Program Files (x86)\\GnuPG\\bin\\gpg.exe"

还没完, 打开那个 Kleopatra 软件, 导入你的秘钥.

然后你可以去你的 IDE 里点push了


### Linux 用户

虽然 Linux 动手能力很强, 但是这个还是不太好找的

https://youtrack.jetbrains.com/oauth?state=%2Fissue%2FIDEA-127802

git config --global gpg.program /usr/local/bin/gpg

然后新建一个bash脚本放在 `/usr/local/bin/gpg`

```sh
#!/bin/bash
/usr/bin/gpg --batch --no-tty "$@"
```

### Mac 用户

本来对 Mac 用户要收费的, 但我干掉了这个难题心情不错...

https://stackoverflow.com/questions/39494631/gpg-failed-to-sign-the-data-fatal-failed-to-write-commit-object-git-2-10-0

```sh
brew install pinentry-mac
echo "no-tty" >> ~/.gnupg/gpg.conf
echo $(which pinentry-mac) >> ~/.gnupg/gpg-agent.conf
```

Kleopatra