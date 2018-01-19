---
title: '积分习题X:格拉瑟主定理'
tags:
  - 姿势水平
  - 猎奇
  - 积分
categories:
  - 数学题集
  - 理宅异闻录
date: 2017-01-09 20:31:15
---
```
格拉瑟主定理(Glasser's Master Theorem)的标准表述如下:

恒等式$PV\int_{ - \infty }^{ + \infty } {F(\phi (x)){\rm{dx}}}  = PV\int_{ - \infty }^{ + \infty } {F(x){\rm{dx}}} $对任意可积函数$F(x)$和$\phi (x) = |a|x - \sum\limits_{n = 1}^N {\frac{{|{\alpha _n}|}}{{x - {\beta _n}}}} $成立.

其中$a,\left\{ {{\alpha _n}} \right\}_{n = 1}^N,\left\{ {{\beta _n}} \right\}_{n = 1}^N$可以是任意常数,PV是柯西主值(Cauchy Principal Value)不可以两边约掉的啊魂淡可我怎么总是有种两边划掉的强烈冲动怎么办才好啊好烦啊要控制不住了的说....

So....这玩意儿有什么用呢?

叫你证仨积分,汝敢答应否?

$$\begin{aligned}
{I_1} &= \int_{ - \infty }^{ + \infty } {\frac{{{x^8} + 12{x^7} + 58{x^6} + 144{x^5} + 193{x^4} + 132{x^3} + 36{x^2}}}{{{x^{10}} + 12{x^9} + 51{x^8} + 72{x^7} - 81{x^6} - 300{x^5} - 43{x^4} + 576{x^3} + 664{x^2} + 264x + 36}}{\rm{d}}x} = \pi \\
{I_2} &= \int_{ - \infty }^{ + \infty } {\frac{{{x^8} + 4{x^7} + 6{x^6} + 4{x^5} + {x^4}}}{{{x^{12}} + 4{x^{11}} - 2{x^{10}} - 24{x^9} - 10{x^8} + 56{x^7} + 48{x^6} - 40{x^5} - 49{x^4} + 4{x^3} + 20{x^2} + 8x + 1}}{\rm{d}}x = \frac{\pi }{{\sqrt 2 }}} \\
{I_3} &=\int_0^\infty \frac{x^{14}-15x^{12}+82x^{10}-190x^8+184x^6-60x^4+16x^2}{x^{16}-20x^{14}+156x^{12}-616x^{10}+1388x^8-1792x^6+1152x^4-224x^2+16}\; dx = \frac{\pi}{2}
\end{aligned}$$

<!--more-->

吾尝闻,多项式除以多项式的积分总是可以计算的,然后你就去慢慢算吧,反正积分软件不用数值积分也基本积不出来.....

不过你看下上面格拉瑟主定理的形式就知道其实就是这么个玩意儿而已:

$$\bigstar \int_{ - \infty }^\infty {{{\left[ {{{\left( {x - \sum\limits_{i = 0}^b {\frac{1}{{i + x}}} } \right)}^{2a}} + 1} \right]}^{ - 1}}{\rm{dx}}} = \int_{ - \infty }^\infty {\frac{1}{{{x^{2a}} + 1}}{\rm{dx}}} = \frac{\pi }{{a}}\csc \left( {\frac{\pi }{{2a}}} \right)\quad a,b \in + $$

---

求证:

$$\int_{ - \infty }^{ + \infty } {{e^{ - \pi {x^2}{{\left( {\frac{{\alpha  + x}}{{\beta  + x}}} \right)}^2}}}{\rm{dx}}}  = 1$$

格拉瑟主定理多取一阶就有:

$$\int_{ - \infty }^{ + \infty } f \left( {x - \frac{a}{{x - b}}} \right)dx = \int_{ - \infty }^{ + \infty } f (x)dx\quad a > 0$$

来,凑配一下秒了...

$$\begin{aligned}
\int_{ - \infty }^\infty {{e^{ - \pi {x^2}{{\left( {\frac{{\alpha + x}}{{\beta + x}}} \right)}^2}}}{\rm{dx}}}
&= \int_{ - \infty }^\infty {{e^{ - \pi {{\left( {x - \frac{{(\alpha - \beta )\beta }}{{x + \beta }} + \alpha - \beta } \right)}^2}}}{\rm{dx}}} \\
&= \int_{ - \infty }^\infty {{e^{ - \pi {{\left( {x + \alpha - \beta } \right)}^2}}}{\rm{dx}}} \\
&= \int_{ - \infty }^\infty {{e^{ - \pi {x^2}}}{\rm{dx}}} \\
&= 1
\end{aligned}$$

引论:

$$\bigstar I(a,b) = \int_{ - \infty }^{ + \infty } {xf\left( {x - \frac{a}{{x - b}}} \right){\rm{dx}}}  = \int_{ - \infty }^{ + \infty } {xf\left( x \right){\rm{dx}}}$$

引证:

还是取这个:

$$S=\int_{ - \infty }^{ + \infty } f \left( {x - \frac{a}{{x - b}}} \right)dx = \int_{ - \infty }^{ + \infty } f (x)dx\quad a > 0$$

求偏导:

$$\begin{aligned}
\frac{{\partial S}}{{\partial a}} &= \int_{ - \infty }^{ + \infty } {\frac{1}{{x - b}}} f'\left( {x - \frac{a}{{x - b}}} \right)dx = 0\\
\frac{{\partial S}}{{\partial b}} &= \int_{ - \infty }^{ + \infty } {\frac{{ - a}}{{{{(x - b)}^2}}}} f'\left( {x - \frac{a}{{x - b}}} \right)dx = 0\\
\frac{{\partial S}}{{\partial x}} &= \int_{ - \infty }^{ + \infty } {f'} \left( {x - \frac{a}{{x - b}}} \right)dx = 0
\end{aligned}$$

另一边也求偏导,然后把结果代进去.

$$\begin{aligned}
\frac{{\partial I}}{{\partial a}}
&= - \int_{ - \infty }^{ + \infty } {\frac{x}{{x - b}}f'\left( {x - \frac{a}{{x - b}}} \right){\rm{dx}}} - \int_{ - \infty }^{ + \infty } {\left( {1 + \frac{b}{{x - b}}} \right)f'\left( {x - \frac{a}{{x - b}}} \right){\rm{dx}}} \\
&= - \int_{ - \infty }^{ + \infty } {\frac{{2x}}{{x - b}}f'\left( {x - \frac{a}{{x - b}}} \right){\rm{dx}}} = 0\\
\frac{{\partial I}}{{\partial b}}
&= - \int_{ - \infty }^{ + \infty } {\frac{x}{{{{(x - b)}^2}}}f'\left( {x - \frac{a}{{x - b}}} \right)} {\rm{dx}} - \int_{ - \infty }^{ + \infty } {\left( {\frac{1}{{x - b}} + \frac{b}{{{{(x - b)}^2}}}} \right)f'\left( {x - \frac{a}{{x - b}}} \right){\rm{dx}}} \\
&= - \int_{ - \infty }^{ + \infty } {\frac{{2x}}{{{{(x - b)}^2}}}f'\left( {x - \frac{a}{{x - b}}} \right)} {\rm{dx = 0}}
\end{aligned}$$

证毕,得到强力武器一个:

用来解题,求证上一题的威力加强版:

$$\int_{ - \infty }^\infty  {x{e^{ - \pi {x^2}{{\left( {\frac{{a + x}}{{b + x}}} \right)}^2}}}{\rm{dx}}}  = b - a$$

对于$\alpha>\beta$继续强化武器:

$$\begin{aligned}
\int_{-\infty}^{+\infty}xf\left(x\frac{\alpha +x}{\beta +x}\right){d}x&=\int_{-\infty}^{+\infty}xf\left(x-\frac{(\alpha-\beta)\beta}{x+\beta}+\alpha-\beta\right)dx\\
&=\int_{-\infty}^{+\infty}(x+\beta-\alpha)f\left(x-\frac{(\alpha-\beta)\beta}{x+2\beta-\alpha}\right)dx\\
&=I((\alpha-\beta)\beta,\alpha-2\beta)+(\beta-\alpha)\cdot \int_{-\infty}^{+\infty} f(x)dx
\end{aligned}$$

取$f(x) = {e^{ - \pi {x^2}}}$秒了:

$$\begin{aligned}
\int_{ - \infty }^\infty {x{e^{ - \pi {x^2}{{\left( {\frac{{a + x}}{{b + x}}} \right)}^2}}}{\rm{dx}}}
&= \int_{ - \infty }^\infty {x{e^{ - \pi {x^2}}}{\rm{dx}}} + (b - a)\int_{ - \infty }^\infty {{e^{ - \pi {x^2}}}{\rm{dx}}} \\
&= 0 + (b - a) \times 1\\
&= b - a
\end{aligned}$$

所谓工欲善其事必先利其器,讲的就是这个道理.```