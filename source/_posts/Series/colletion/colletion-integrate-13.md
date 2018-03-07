---
title: '积分习题XIII:孪生积分(3)'
id: 561
categories:
  - 未完成
abbrlink: 60a19019
date: 2017-02-03 14:04:44
tags:
---
```

$$\begin{aligned}
P &= \int {\frac{{{{\cos }^2}x}}{{a\sin x + b\cos x}}\mathrm{d}x} \\
Q &= \int {\frac{{{{\sin }^2}x}}{{a\sin x + b\cos x}}\mathrm{d}x} \\
P + Q &= \int {\frac{{{{\sin }^2}x + {{\cos }^2}x}}{{a\sin x + b\cos x}}\mathrm{d}x} \\
&= \int {\frac{1}{{\sqrt {{a^2} + {b^2}} }}\frac{{\mathrm{d}x}}{{\tan (x + \varphi )}}} \\
&= \frac{1}{{\sqrt {{a^2} + {b^2}} }}\ln \left| {\tan \left( {\frac{x}{2} + \frac{1}{2}\arctan \frac{b}{a}} \right)} \right|\\
{a^2}Q - {b^2}P &= \int {\frac{{{a^2}\sin x - {b^2}\cos x}}{{a\sin x + b\cos x}}\mathrm{d}x} \\
&= \int {(a\sin x - b\cos x)\mathrm{d}x} \\
&= - (a\cos x + b\sin x)\\
\bigstar I &= \int {\frac{{c{{\sin }^2}x + d{{\cos }^2}x}}{{a\sin x + b\cos x}}\mathrm{d}x} \\
&= \frac{{d - c}}{{{a^2} + {b^2}}}(a\cos x + b\sin x) - \frac{{2\left( {{a^2}d + {b^2}c} \right)}}{{{{\left( {{a^2} + {b^2}} \right)}^{3/2}}}}{\tanh ^{ - 1}}\left( {\frac{{a - b\tan (x/2)}}{{\sqrt {{a^2} + {b^2}} }}} \right)
\end{aligned}$$

---

$$\begin{aligned}
P &= \int {\frac{{{{\sec }^2}x}}{{a\sec x + b\tan x}}\mathrm{d}x} \\
Q &= \int {\frac{{{{\tan }^2}x}}{{a\sec x + b\tan x}}\mathrm{d}x} \\
P - Q &= \int {\frac{1}{{a\sec x + b\tan x}}\mathrm{d}x} \\
&= \frac{1}{b}\ln \left| {a + b\sin x} \right|\\
{a^2}P - {b^2}Q &= \int {(a\sec x - b\tan x)\mathrm{d}x} \\
&= a\ln \left| {\sec x + \tan x} \right| + b\ln \left| {\cos x} \right|\\
I &= \int {\frac{{c{{\sec }^2}x + d{{\tan }^2}x}}{{a\sec x + b\tan x}}\mathrm{d}x} \\
&= \frac{{a(c + d)}}{{{a^2} - {b^2}}}\log |\tan x + \sec x| + \frac{{b(c + d)}}{{{a^2} - {b^2}}}\log |\cos x| - \frac{{{a^2}d + {b^2}c}}{{b({a^2} - {b^2})}}\log |a + b\sin x|
\end{aligned}$$

除零处理:

$${I_{a = b = 1}} =  - \frac{1}{2}\left( {\frac{{c + d}}{{\sin (x) + 1}} + (c + d)\log \left( {\cos \frac{x}{2} - \sin \frac{x}{2}} \right) - (c - 3d)\log \left( {\sin \frac{x}{2} + \cos \frac{x}{2}} \right)} \right)$$

极限法失效.

---

$$\begin{aligned}
P &= \int {\frac{{{{\csc }^2}x}}{{a\csc x + b\cot x}}\mathrm{d}x} \\
Q &= \int {\frac{{{{\cot }^2}x}}{{a\csc x + b\cot x}}\mathrm{d}x} \\
{a^2}P - {b^2}Q &= \int {(a\csc x - b\cot x)\mathrm{d}x} \\
&= a\ln \left| {\csc x - \cot x} \right| - b\ln \left| {\sin x} \right|\\
P - Q &= \int {\frac{{\mathrm{d}x}}{{a\csc x + b\cot x}}} \\
&= - \frac{1}{b}\ln \left| {a\csc x + b\cot x} \right|\\
\bigstar I &= \int {\frac{{c{{\csc }^2}x + d{{\cot }^2}x}}{{a\csc x + b\cot x}}\mathrm{d}x} \\
&= \frac{{{a^2}d + {b^2}c}}{{b({a^2} - {b^2})}}\log (a + b\cos x) + \frac{{c + d}}{{a + b}}\log \sin \frac{x}{2} - \frac{{c + d}}{{a - b}}\log \cos \frac{x}{2}
\end{aligned}$$

除零处理:

$${I_{a = b=1}} = \frac{1}{4}\left( {(c + d){{\sec }^2}\frac{x}{2} + 2(c + d)\log \sin \frac{x}{2} - 2(c - 3d)\log \cos \frac{x}{2}} \right)$$

---

$$\begin{aligned}
P &= \int {\frac{{{{\tan }^2}x}}{{a\tan x + b\cot x}}\mathrm{d}x} \\
Q &= \int {\frac{{{{\cot }^2}x}}{{a\tan x + b\cot x}}\mathrm{d}x} \\
{a^2}P - {b^2}Q &= \int {(a\tan x - b\cot x)\mathrm{d}x} \\
&= - (a\ln \left| {\cos x} \right| + b\ln \left| {\sin x} \right|)\\
{a^2}P + {b^2}Q &= \int {\frac{{{{(a\tan x + b\cot x)}^2} - 2ab}}{{a\tan x + b\cot x}}\mathrm{d}x} \\
&= \int {(a\tan x + b\cot x)\mathrm{d}x} - 2ab\int {\frac{{\mathrm{d}x}}{{a\tan x + b\cot x}}} \\
&= \frac{{ab}}{{b - a}}\log \left| {a{{\sin }^2}x + b{{\cos }^2}x} \right| - a\ln \left| {\cos x} \right| + b\ln \left| {\sin x} \right|\\
\bigstar I &= \int {\frac{{c{{\tan }^2}x + d{{\cot }^2}x}}{{a\tan x + b\cot x}}\mathrm{d}x} \\
&= \frac{d}{b}\log \sin x - \frac{c}{a}\log \cos x - \frac{{{a^2}d + {b^2}c}}{{2ab(a - b)}}\log ((a - b)\cos 2x - a - b)
\end{aligned}$$

除零处理:

$${I_{a = b=1}} = \frac{1}{4}(c + d)\cos 2x - c\log \cos x + d\log \sin x$$

---

$$\begin{aligned}
P &= \int {\frac{{{{\sec }^2}x}}{{a\sec x + b\csc x}}\mathrm{d}x} \\
Q &= \int {\frac{{{{\csc }^2}x}}{{a\sec x + b\csc x}}\mathrm{d}x} \\
aP + bQ &= x\\
P + Q &= \int {\frac{{\mathrm{d}x}}{{a{{\sin }^2}x + b{{\cos }^2}x}}} \\
&= \frac{1}{{\sqrt {ab} }}\arctan \left( {\sqrt {\frac{a}{b}} \tan x} \right)\\
\bigstar I &= \int {\frac{{c{{\sec }^2}x + d{{\csc }^2}x}}{{a\sec x + b\csc x}}\mathrm{d}x} \\
&= \frac{{c - d}}{{a - b}}x + \frac{{ad - bc}}{{\sqrt {ab} (a - b)}}\arctan \left( {\sqrt {\frac{a}{b}} \tan x} \right)
\end{aligned}$$

除零处理:

$${I_{a = b = 1}} = - \sqrt 2 (c + d){\tanh ^{ - 1}}\left( {\frac{{\sqrt 2 }}{2}\tan \frac{x}{2} - \frac{{\sqrt 2 }}{2}} \right) + 2c{\tanh ^{ - 1}}\tan \frac{x}{2} + d\log \tan \frac{x}{2}$$

好奇葩,无法通过极限法处理就算了,参数少反而更难....

---

各种奇葩除零问题,极限法无效,参数少俩形式更烦.....简直莫名其妙...

```