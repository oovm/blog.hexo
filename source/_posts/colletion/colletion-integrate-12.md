---
title: '积分习题XII:孪生积分(2)'
categories:
  - 未完成
date: 2017-01-26 14:03:20
tags:
---
```
孪生积分最广为人知的就是这个积分:

$$I = \int {\frac{{c\sin x + d\cos x}}{{a\sin x + b\cos x}}\mathrm{d}x}$$

如果你不知道这个怎么算的话的话......你可能买到了假参考书,你可能用的是假课本,你可能遇到了假老师,你可能选的是假课,你可能上了假学校,你可能是个假人.....

* * *

不过我们想知道的是,这是唯一一种情况吗?

也就是问其他组合行不行?谁知道呢,得测试一下:
<pre class="lang:default decode:true ">subs=Subsets[{Sin,Cos,Tan,Cot,Sec,Csc},{2}];
funs=FullSimplify[1/(a #1[x]+b #2[x])&@@@subs];
anses=FullSimplify[Integrate[1/(a #1[x]+b #2[x]),x]&@@@subs];
Join[subs,List/@funs,List/@anses,2]//TableForm</pre>
显然我说的不是手算...$C(6,2) = 15$种情况...我又不是自虐狂...而且就算计算机都要跑好久...

看看这俩反人类的积分,$\int {\frac{{\mathrm{d}x}}{{a\sin (x) + b\sec (x)}}} ,\int {\frac{{\mathrm{d}x}}{{a\cos (x) + b\csc (x)}}} $,这是给人积的吗....

不对......我是不是拿错剧本了....不好意思输错了.....

* * *

<pre class="lang:default decode:true">subs=Subsets[{Sin,Cos,Tan,Cot,Sec,Csc},{2}];
mod=(c #1[x]+d #2[x])/(a #1[x]+b #2[x])&;
anses=FullSimplify[Integrate[mod@@@subs,x]];
Join[subs,FullSimplify[List/@mod@@@subs],List/@anses,2]//TableForm</pre>
从上到下编号,$I_3,I_6,I_{12},I_{13}$这四个,也就是

$$\left\{ {\frac{{c\sin x + d\cot x}}{{a\sin x + b\cot x}},\frac{{c\cos x + d\tan x}}{{a\cos x + b\tan x}},\frac{{c\tan x + d\csc x}}{{a\tan x + b\csc x}},\frac{{c\cot x + d\sec x}}{{a\cot x + b\sec x}}} \right\}$$

这些反人类积分不研究了.

$$\begin{aligned}
I_2 &= \frac{{c\sin x + d\tan x}}{{a\sin x + b\tan x}} = \frac{{d + c\cos x}}{{b + a\cos x}}\\
I_7 &= \frac{{c\cos x + d\cot x}}{{a\cos x + b\cot x}} = \frac{{d + c\sin x}}{{b + a\sin x}}\\
I_{11} &= \frac{{c\tan x + d\sec x}}{{a\tan x + b\sec x}} = \frac{{d + c\sin x}}{{b + a\sin x}}\\
I_{14} &= \frac{{c\cot x + d\csc x}}{{a\cot x + b\csc x}} = \frac{{d + c\cos x}}{{b + a\cos x}}
\end{aligned}$$

这四个上次算过了也可以Pass了.

还是很多....嗯,这三个也不用算了..

$$\begin{aligned}
I_4 &= I_9 = \frac{{d + c\sin x\cos x}}{{b + a\sin x\cos x}} = \frac{{d + \frac{c}{2}\sin 2x}}{{b + \frac{a}{2}\sin 2x}}\\
I_{15} &= \frac{{c\sec x + d\csc x}}{{a\sec x + b\csc x}} = \frac{{c\sin x + d\cos x}}{{a\sin x + b\cos x}} = I_1
\end{aligned}$$

那最终这15个里就这四个要算:

$$\begin{aligned}
I_1 &= \int {\frac{{c\sin x + d\cos x}}{{a\sin x + b\cos x}}\mathrm{d}x} \\
I_5 &= \int {\frac{{c\sin x + d\csc x}}{{a\sin x + b\csc x}}\mathrm{d}x} = \int {\frac{{d + c{{\sin }^2}x}}{{b + a{{\sin }^2}x}}\mathrm{d}x} \\
I_8 &= \int {\frac{{c\cos x + d\sec x}}{{a\cos x + b\sec x}}\mathrm{d}x} = \int {\frac{{d + c{{\cos }^2}x}}{{b + a{{\cos }^2}x}}\mathrm{d}x} \\
I_{10} &= \int {\frac{{c\tan x + d\cot x}}{{a\tan x + b\cot x}}\mathrm{d}x} = \int {\frac{{c + d{{\cot }^2}x}}{{a + b{{\cot }^2}x}}\mathrm{d}x}
\end{aligned}$$

* * *

话说这题我都快背出来了:

$$\begin{aligned}
P &= \int {\frac{{\cos x}}{{a\sin x + b\cos x}}\mathrm{d}x}\\
Q &= \int {\frac{{\sin x}}{{a\sin x + b\cos x}}\mathrm{d}x}
bP + aQ &= x\\
aP - bQ &= \int {\frac{{a\cos x - b\sin x}}{{a\sin x + b\cos x}}\mathrm{d}x} \\
&= \int {\frac{{\mathrm{d}(a\sin x + b\cos x)}}{{a\sin x + b\cos x}}} \\
&= \ln \left| {a\sin x + b\cos x} \right|\\
I_1 &= \int {\frac{{c\sin x + d\cos x}}{{a\sin x + b\cos x}}\mathrm{d}x} = dP + cQ\\
&= \frac{{ac + bd}}{{{a^2} + {b^2}}}x + \frac{{ad - bc}}{{{a^2} + {b^2}}}\ln \left| {a\sin x + b\cos x} \right|
\end{aligned}$$

* * *

然后是
```