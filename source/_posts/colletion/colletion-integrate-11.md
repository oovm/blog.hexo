---
title: '积分习题XI:孪生积分'
tags:
  - 孪生积分
  - 收集
  - 积分
categories:
  - 数学题集
date: 2017-01-15 21:20:06
---
```
所谓孪生积分就是一种积分技巧,就是一次性算两个积分.唔,这是很常用的积分技巧啦....教科书上基本都有.

一般用于三角函数积分.....就是用的多了会养成习惯....然后连简单的积分都用这个.....然后就没有然后了,因为简单的考试题用基本的积分技巧就能秒了,用这个不是找事情么....

---

我们来研究这样一个积分:

$$F(x) = \int {\frac{{c + d\;{\text{Tri}}(x)}}{{a + b\;{\text{Tri}}(x)}}\mathrm{d}x}$$

<!--more-->

其中$\text{Tri}(x)$表示三角函数,三角函数一共有8个,但是其中有俩没啥存在感,正矢和余矢能直接化归到正弦余弦,没啥好研究的.

所以我们发现这个其实就等价于求以下六个函数积分:

$$\begin{aligned}
\left\{ {\frac{{\sin (x)}}{{a + b\sin (x)}},\frac{{\cos (x)}}{{a + b\cos (x)}},\frac{{\tan (x)}}{{a + b\tan (x)}},\frac{{\cot (x)}}{{a + b\cot (x)}},\frac{{\sec (x)}}{{a + b\sec (x)}},\frac{{\csc (x)}}{{a + b\csc (x)}}} \right\}  \\
= \left\{ {\frac{1}{{a\csc (x) + b}},\frac{1}{{a\sec (x) + b}},\frac{1}{{a\cot (x) + b}},\frac{1}{{a\tan (x) + b}},\frac{1}{{a\cos (x) + b}},\frac{1}{{a\sin (x) + b}}} \right\}
\end{aligned}$$

等会儿,我想多了,余切,正割和余割也能化归,其实只要积前三个就行了:

$$\begin{aligned}
\left\{ {\frac{{c + d\cot (x)}}{{a + b\cot (x)}},\frac{{c + d\sec (x)}}{{a + b\sec (x)}},\frac{{c + d\csc (x)}}{{a + b\csc (x)}}} \right\}\\
= \left\{ {\frac{{c\tan (x) + d}}{{a\tan (x) + b}},\frac{{c\cos (x) + d}}{{a\cos (x) + b}},\frac{{c\sin (x) + d}}{{a\sin (x) + b}}} \right\}
\end{aligned}$$

---

我们知道这些积分总是可以积出来的,因为万能代换嘛,转化为多项式积分,多项式积分总是存在原函数的.但是简单情况还好,复杂情况比如这三道这么做的话........

所以就到孪生积分法的Show Time了:

设:

$$ \begin{aligned}
{P_1}(a,b) &= \int {\frac{{\sin x}}{{a + b\sin x}}\mathrm{d}x}\\
{Q_1}(a,b) &= \int {\frac{{\sin x}}{{a - b\sin x}}\mathrm{d}x}
\end{aligned}$$

两式相加:

$$\begin{aligned}
{f_1}(a,b) &= {P_1}(a,b) + {Q_1}(a,b) \\
&= \int {\frac{{\sin x}}{{a + b\sin x}}+\frac{{\sin x}}{{a - b\sin x}}\mathrm{d}x}\\
&= \int {\frac{{2a\sin x}}{{{a^2} - {b^2}{{\sin }^2}x}}\mathrm{d}x}\\
&= - \frac{{2a}}{b}\int {\frac{{\mathrm{d}(b\cos x)}}{{{a^2} - {b^2} + {b^2}{{\cos }^2}x}}}\\
&= \frac{{ - 2}}{{\sqrt {{a^2} - {b^2}} }}\frac{a}{b}\arctan \frac{{b\cos x}}{{\sqrt {{a^2} - {b^2}} }}
\end{aligned}$$

两式相减:

$$\begin{aligned}
{g_1}(a,b)&= {P_1}(a,b) - {Q_1}(a,b)\\
&= \int {\frac{{\sin x}}{{a + b\sin x}} - \frac{{\sin x}}{{a - b\sin x}}\mathrm{d}x} \\
&= \int {\frac{{ - 2b\sin x}}{{{a^2} - {b^2}{{\sin }^2}x}}\mathrm{d}x} \\
&= \frac{2}{b}\int {\frac{{{a^2} - {b^2}{{\sin }^2}x - {a^2}}}{{{a^2} - {b^2}{{\sin }^2}x}}\mathrm{d}x} \\
&= \frac{2}{b}\int {\mathrm{d}x} - \frac{{2{a^2}}}{b}\int {\frac{{\mathrm{d}x}}{{{a^2} - {b^2}{{\sin }^2}x}}} \\
&= \frac{2}{b}x + \frac{{2{a^2}}}{b}\int {\frac{{\mathrm{d}(\cot x)}}{{{a^2}{{\csc }^2}x - {b^2}}}} \\
&= \frac{2}{b}x + \frac{{2a}}{b}\int {\frac{{\mathrm{d}(a\cot x)}}{{{a^2} - {b^2} + {a^2}{{\cot }^2}x}}} \\
&= \frac{2}{b}\left( {x + \frac{a}{{\sqrt {{a^2} - {b^2}} }}\arctan \frac{{a\cot x}}{{\sqrt {{a^2} - {b^2}} }}} \right)
\end{aligned}$$

解个方程就能得到各自的积分了,比万能代换或者去凑三角恒等式快得多了.

Well,可是还缺了一半,再积一下吗?不用了,其实已经出来了:

$$\begin{aligned}
{P_1}(a,b) &= \int {\frac{{\sin x}}{{a + b\sin x}}\mathrm{d}x} \\
&= \frac{1}{b}\int {\frac{{a + b\sin x - a}}{{a + b\sin x}}\mathrm{d}x} \\
&= \frac{x}{b} - \frac{a}{b}\int {\frac{1}{{a + b\sin x}}\mathrm{d}x}
\end{aligned}$$

综上所述,最终化简后的结果是:

$$\begin{aligned}
{I_{\sin }} &= \int {\frac{{c + d\sin x}}{{a + b\sin x}}\mathrm{d}x} \\
&= d{P_1}(a,b) + \frac{c}{a}\left( {x - b{P_1}(a,b)} \right)\\
&= \frac{d}{b}x + \frac{{2(bc - ad)}}{{b\sqrt {{a^2} - {b^2}} }}\arctan \left( {\frac{{a\tan (x/2) + b}}{{\sqrt {{a^2} - {b^2}} }}} \right)\\
{I_{\csc }} &= \int {\frac{{c + d\csc x}}{{a + b\csc x}}\mathrm{d}x} \\
&= \int {\frac{{d + c\sin x}}{{b + a\sin x}}\mathrm{d}x} \\
&= \frac{c}{a}x + \frac{{2(ad - bc)}}{{a\sqrt {{b^2} - {a^2}} }}\arctan \left( {\frac{{a + b\tan (x/2)}}{{\sqrt {{b^2} - {a^2}} }}} \right)
\end{aligned}$$

---

设:

$$\begin{aligned}
{P_2}(a,b) &= \int {\frac{{\cos x}}{{a + b\cos x}}\mathrm{d}x}\\
{Q_2}(a,b) &= \int {\frac{{\cos x}}{{a - b\cos x}}\mathrm{d}x}
\end{aligned}$$

两式相加:

$$\begin{aligned}
{f_2}(a,b)&= {P_2}(a,b) + {Q_2}(a,b)\\
&= \int {\frac{{\cos x}}{{a + b\cos x}}\mathrm{d}x} + \int {\frac{{\cos x}}{{a - b\cos x}}\mathrm{d}x} \\
&= 2a\int {\frac{{\mathrm{d}x}}{{{a^2} - {b^2}{{\cos }^2}x}}} \\
&= 2a\int {\frac{1}{{{a^2}{{\sec }^2}x - {b^2}}}\frac{{\mathrm{d}x}}{{{{\cos }^2}x}}} \\
&= 2\int {\frac{{\mathrm{d}(a\tan x)}}{{{a^2} - {b^2} + {a^2}{{\tan }^2}x}}} \\
&= \frac{2}{{\sqrt {{a^2} - {b^2}} }}\arctan \frac{{a\tan x}}{{\sqrt {{a^2} - {b^2}} }}
\end{aligned}$$

两式相减:

$$\begin{aligned}
{g_2}(a,b) &= {P_2}(a,b) - {Q_2}(a,b)\\
&= \int {\frac{{\cos x}}{{a + b\cos x}}\mathrm{d}x} - \int {\frac{{\cos x}}{{a - b\cos x}}\mathrm{d}x} \\
&= -2 b \int \frac{\cos ^2(x) \text{d}x}{a^2-b^2 \cos ^2(x)} \\
&= - 2\int {\frac{{\mathrm{d}(b\sin x)}}{{{a^2} - {b^2} + {b^2}{{\sin }^2}x}}} \\
&= - \frac{2}{{\sqrt {{a^2} - {b^2}} }}\arctan \frac{{b\sin x}}{{\sqrt {{a^2} - {b^2}} }}
\end{aligned}$$

然后一样的步骤后可以得到:

$$\begin{aligned}
I_{\cos } &= \int {\frac{{c + d\cos x}}{{a + b\cos x}}\mathrm{d}x} = \frac{\mathrm{d}x}{b} + \frac{{2(ad - bc)}}{{b\sqrt {{b^2} - {a^2}} }}{\tanh ^{ - 1}}\left( {\frac{{(a - b)\tan (x/2)}}{{\sqrt {{b^2} - {a^2}} }}} \right)\\
I_{\sec } &= \int {\frac{{c + d\sec x}}{{a + b\sec x}}\mathrm{d}x} = \frac{{cx}}{a} + \frac{{2(bc - ad)}}{{a\sqrt {{a^2} - {b^2}} }}{\tanh ^{ - 1}}\left( {\frac{{(b - a)\tan (x/2)}}{{\sqrt {{a^2} - {b^2}} }}} \right)
\end{aligned}$$

---

这个反倒更加简单,设:

$$\begin{aligned}
{P_3}(a,b) &= \int {\frac{{\tan x}}{{a + b\tan x}}\mathrm{d}x}\\
{Q_3}(a,b) &= \int {\frac{1}{{a + b\tan x}}\mathrm{d}x}
\end{aligned}$$

两式相加:

$${f_3}(a,b) = a{Q_3}(a,b) + b{P_3}(a,b) = x$$

两式相减:

$$\begin{aligned}
{g_3}(a,b) &= b{Q_3}(a,b) - a{P_3}(a,b)\\
&= \int {\frac{{b - a\tan x}}{{a + b\tan x}}\mathrm{d}x} \\
&= \int {\frac{{\frac{b}{a} - \tan x}}{{1 + \frac{b}{a}\tan x}}\mathrm{d}x} \\
&= \int {\tan \left( {\arctan \frac{b}{a} - x} \right)\mathrm{d}x} \\
&= \ln \left| {\cos \left( {\arctan \frac{b}{a} - x} \right)} \right|
\end{aligned}$$

综上所述:

$$\begin{aligned}
{I_{\tan }} &= \int {\frac{{c + d\tan x}}{{a + b\tan x}}\mathrm{d}x} \\
&= d{P_3}(a,b) + c{Q_3}(a,b)\\
&= \frac{{ac + bd}}{{{a^2} + {b^2}}}x + \frac{{bc - ad}}{{{a^2} + {b^2}}}\log (a\cos x + b\sin x)\\
{I_{\cot }} &= \int {\frac{{c + d\cot x}}{{a + b\cot x}}\mathrm{d}x} \\
&= \int {\frac{{d + c\tan x}}{{b + a\tan x}}\mathrm{d}x} \\
&= \frac{{ac + bd}}{{{a^2} + {b^2}}}x + \frac{{ad - bc}}{{{a^2} + {b^2}}}\log (a\sin x + b\cos x)
\end{aligned}$$

---

还没完呢,是不是得考虑下$a = b$时的积分?此时下面的系数可以直接提出来,所以就是:

$$\begin{aligned}
{I_{\sin }} &= \int {\frac{{c + d\sin x}}{{1 + \sin x}}\mathrm{d}x} = \frac{{2(c - d)}}{{\cot (x/2) + 1}} + \mathrm{d}x\\
{I_{\csc }} &= \int {\frac{{c + d\csc x}}{{1 + \csc x}}\mathrm{d}x} = \frac{{2(d - c)}}{{\cot (x/2) + 1}} + cx\\
{I_{\cos }} &= \int {\frac{{c + d\cos x}}{{1 + \cos x}}\mathrm{d}x} = (c - d)\tan \left( {\frac{x}{2}} \right) + \mathrm{d}x\\
{I_{\sec }} &= \int {\frac{{c + d\sec x}}{{1 + \sec x}}\mathrm{d}x} = (d - c)\tan \left( {\frac{x}{2}} \right) + cx\\
{I_{\tan }} &= \int {\frac{{c + d\tan x}}{{1 + \tan x}}\mathrm{d}x} = \frac{{c - d}}{2}\log (\sin x + \cos x) + \frac{{c + d}}{2}x\\
{I_{\cot }} &= \int {\frac{{c + d\cot x}}{{1 + \cot x}}\mathrm{d}x} = \frac{{d - c}}{2}\log (\sin x + \cos x) + \frac{{c + d}}{2}x
\end{aligned}$$

其实吧,也不用重新积,一般这种情景下,除零错误是能通过求极限来化简的.

还算基础吧,实在不会的话,先令一个为1,然后在求另一个趋于1时候的极限.```