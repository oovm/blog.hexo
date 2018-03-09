---
title: 使用 Travis CI 自动发布
copyright: true
abbrlink: 47a3aed6
date: 2018-03-04 15:44:44
tags:
categories:
---
travis setup releases --force

```
travis setup releases
Username: galaster
Password for galaster: ***********
File to Upload: asdfgh
Deploy only from GalAster/Deus? |yes| yes
Encrypt API key? |yes| yes
```

Username: galaster
Password for galaster: ***********
File to Upload: a
Deploy only from GalAster/Geis? |yes| yes
Deploy from test branch? |yes| no
Encrypt API key? |yes| no



```
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@         WARNING: UNPROTECTED PRIVATE KEY FILE!          @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Permissions 0644 for '/home/travis/.ssh/git_rsa' are too open.
It is required that your private key files are NOT accessible by others.
This private key will be ignored.
bad permissions: ignore key: /home/travis/.ssh/git_rsa
Permission denied (publickey).
fatal: Could not read from remote repository.
```


sudo apt install ruby ruby-dev
sudo gem install travis