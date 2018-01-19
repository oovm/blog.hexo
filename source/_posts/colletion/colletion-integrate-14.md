---
title: '积分习题XIV:幂塔积分'
tags:
  - 姿势水平
  - 幂塔
  - 积分
categories:
  - 数学题集
  - 理宅异闻录
date: 2017-01-31 19:08:43
---
```
> $$\int_0^1 {x\;\mathrm{d}x}  = \frac{1}{2}$$
这个式子不会算的...来,我们谈谈人生.

接下来我们推广下计算这个:
> $$\int_0^1 {\int_0^1 {{x^y}\;\mathrm{d}x} } \;\mathrm{d}y = \ln 2$$
不会算的我觉得也得来谈谈人生.

<!--more-->

$$\begin{aligned}
\int_0^1 {{x^y}\;\mathrm{d}x} &= \left. {\frac{{{x^{y + 1}}}}{{y + 1}}} \right|_0^1 = \frac{1}{{1 + y}}\\
\int_0^1 {{x^y}\;\mathrm{d}y} &= \left. {\frac{{{x^y}}}{{\ln x}}} \right| _0^1 = \frac{{x - 1}}{{\ln x}}\\
\end{aligned}$$

两个路线都能算出来,但是如果选下面那种就要用到特殊函数了...这不找事情吗.

---

真正的麻烦在于这个积分:

$$\int_0^1 {\int_0^1 {\int_0^1 {{x^{{y^z}}}\mathrm{d}x} } \;\mathrm{d}y} \;\mathrm{d}z$$

我手上有一大把的吊死方案,看起来像能解的就有这么多:

$$\begin{aligned}
{I_3} &= \int_0^1 {\int_0^1 {\int_0^1 {{x^{{y^z}}}\mathrm{d}x} } \;\mathrm{d}y} \;\mathrm{d}z\\
&= 1 + \sum\limits_{k = 1}^\infty {\frac{{{{( - 1)}^k}}}{k}} \ln (k + 1)\\
&= \int_0^1 {{{\log }_y}(2y) - {{\log }_y}(y + 1)} \; \mathrm{d}y\\
&= 1 + \int_{ - \infty }^0 { \frac{{{e^w}}}{w}\left( {\ln 2 - \ln \left( {{e^w} + 1} \right)} \right)} \; \mathrm{d}w\\
&= \int_1^\infty {\frac{{{\psi ^{(0)}}\left( {\frac{{r + 1}}{2}} \right) - {\psi ^{(0)}}\left( {\frac{r}{2}} \right)}}{{2r}}} \; \mathrm{d}r\\
\end{aligned} $$
<pre class="lang:mathematica decode:true" title="各种吊死方案">NIntegrate[x^y^z, {x, 0, 1}, {y, 0, 1}, {z, 0, 1}]
1+NSum[(-1)^k Log[1+k]/k,{k,1,Infinity}]
NIntegrate[Log[y,2y] - Log[y,y + 1], {y, 0, 1}]
NIntegrate[E^w + (E^w (Log[2] - Log[1 + E^w]))/w, {w, -Infinity, 0}]
NIntegrate[(-PolyGamma[0, r/2] + PolyGamma[0, (1 + r)/2])/(2*r), {r, 1, Infinity}]</pre>
反数值计算毫无反应...那多半是无法显式的写出结果了.

不过一次积分还是很容易的.
> $$\int {{x^{{y^z}}}} \mathrm{d}x = \frac{{{x^{{y^z} + 1}}}}{{{y^z} + 1}}$$
不知道为什么的举个爪. Hint: $y^z \mapsto a$.

积分变量积$y$的话就有点难了,做代换$y^z \mapsto u$

$$\begin{aligned}
y &= u^{1/z}\\
\mathrm{d}y &= \frac{{{u^{\frac{1}{z} - 1}}}}{z}\mathrm{d}u\\
\int {{x^{{y^z}}}} \mathrm{d}y &= \int {{x^u}} \frac{{{u^{1/z - 1}}}}{z}\mathrm{d}u\\
&= \frac{1}{z}\int {{u^{\frac{1}{z} - 1}}{e^{u\ln x}}} \mathrm{d}u \\
\end{aligned} $$

嗯...不过这有什么用呢,这个积分还是不会积啊.

唔,不完全Gamma函数的定义式是这样的:

$$\Gamma (a,z) = \int_z^\infty  {{t^{a - 1}}{e^{ - t}}\mathrm{d}t} $$

思考题:$\int {{t^{a - 1}}{e^{ - t}}\mathrm{d}t} $是多少?$\Gamma (a,z)$?你觉得可能吗...哪来的$z$...

是$-\Gamma (a,t)$

更一般的

$$\begin{aligned}
\int {{t^{a - 1}}} {e^{ - bt}}\;\mathrm{d}t &= - {b^{ - a}}\Gamma (a,bt)\\
\int {{x^u}} {u^{\frac{1}{z} - 1}}\;\mathrm{d}u &= - {( - \ln x)^{ - \frac{1}{z}}}\Gamma \left( {\frac{1}{z}, - u\ln x} \right)\\
\end{aligned} $$

然后代回去就能得到:
> $$\int {{x^{{y^z}}}} \mathrm{d}y =  - \frac{{{{( - \ln x)}^{ - 1/z}}}}{z}\Gamma \left( {\frac{1}{z}, - {y^z}\ln x} \right)$$
接下来如果积$z$.

还是代换$y^z \mapsto u$

$$\begin{aligned}
z &= \frac{{\ln u}}{{\ln y}}\\
\mathrm{d}z &= \frac{{\mathrm{d}u}}{{u\ln y}}\\
\int {{x^{{y^z}}}\mathrm{d}z} &= \int {{x^u}\frac{{\mathrm{d}u}}{{u\ln y}}} \\
&= \frac{1}{{\ln y}}\int {\frac{{{e^{u\ln x}}}}{u}\mathrm{d}u} \\
\end{aligned} $$

又只能上特殊函数了咯.

$$\begin{aligned}
{\text{Ei}}(z) &= - \int_{ - z}^\infty {\frac{{{e^{ - t}}}}{t}\mathrm{d}t} \\
\int {\frac{{{e^{at}}}}{t}} \; \mathrm{d}t &= {\text{Ei}}(at)\\
\int {\frac{{{e^{u\ln x}}}}{u}\mathrm{d}u} &= {\text{Ei}}(u\ln x)\\
\end{aligned} $$

然后代回就得到:
> $$\int {{x^{{y^z}}}} \mathrm{d}z = \frac{{{\text{Ei}}\left( {{y^z}\ln x} \right)}}{{\ln y}}$$
当然其实积分积$y$的时候也能这么代换,那样的话积分结果就是:
> $$\int {{x^{{y^z}}}} \mathrm{d}z =  - \frac{y}{z}{E_{1 - \frac{1}{z}}}\left( { - {y^z}\ln x} \right)$$

---

其实再接下去也是这种死法:

$$\begin{aligned}
&\quad\;\int_{{{[0,1]}^4}} {x_1^{x_2^{x_3^{{x_4}}}}} \mathrm{d}{x_1}\;\mathrm{d}{x_2}\;\mathrm{d}{x_3}\;\mathrm{d}{x_4}\\
&= \iiint\limits_{{{[0,1]}^3}} {\frac{{\mathrm{d}{x_2}\;\mathrm{d}{x_3}\;\mathrm{d}{x_4}}}{{x_2^{x_3^{{x_4}}} + 1}}}\\
&= \iint\limits_{{{[0,1]}^2}} {\frac{1}{2}x_3^{ - {x_4}}\left( {{\psi ^{(0)}}\left( {\frac{1}{2}\left( {x_3^{ - {x_4}} + 1} \right)} \right) - {\psi ^{(0)}}\left( {\frac{{x_3^{ - {x_4}}}}{2}} \right)} \right)}\mathrm{d}{x_4}\;\mathrm{d}{x_3}\\
&= - \frac{1}{2}\int_0^1 {\frac{{2\log \Gamma \left( {\frac{1}{2} + \frac{1}{{2{x_3}}}} \right) - 2\log \Gamma \left( {\frac{1}{{2{x_3}}}} \right) + \log \pi }}{{\log {x_3}}}} \mathrm{d}{x_3}
\end{aligned}$$

从上面的推导可以看出,第一类幂塔函数的积分大概只能积到三重:

$$\begin{aligned}
\int x \;\mathrm{d}x &= \frac{{{x^2}}}{2}\\
\int {{a^x}} \mathrm{d}x &= \frac{{{a^x}}}{{\ln a}}\\
\int {{a^{{a^x}}}} \mathrm{d}x &= \frac{{{\text{Ei}}({a^x}\ln a)}}{{\ln a}}\\
\int {{a^{{a^{{a^x}}}}}} \mathrm{d}x &= ???\\
\end{aligned} $$

第二类幂塔函数的积分么,众所周知这个是没法积的:

$$\int {{x^x}} \mathrm{d}x$$

第三类幂塔函数的积分...

$$\int {{x^{{x^ {\mathinner{\mkern2mu\raise1pt\hbox{.}\mkern2mu
\raise4pt\hbox{.}\mkern2mu\raise7pt\hbox{.}\mkern1mu}} }}}\mathrm{d}x} = \int {\frac{{W( - \ln x)}}{{ - \ln x}}\mathrm{d}x} $$

这个也不见得能积...

第零类幂塔函数...不说了,我已经无视了这家伙很久了...

实数上良定义都没有的东西...基本没法拿来做运算的.```