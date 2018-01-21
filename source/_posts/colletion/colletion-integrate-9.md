---
title: 积分习题IX
tags:
  - 巧合
  - 杂题
  - 积分
categories:
  - 数学题集
date: 2017-01-06 15:29:44
---

又到了喜闻乐见的杂题时间了,不过今天到场的有个重量级人物:

$$\int_0^1 {e^{i\pi x}} {x^x}{(1 - x)^{1 - x}}\;\mathrm{d}x = \frac{e}{2}\frac{\pi }{3}\frac{i}{4}$$

哈,牛逼的木有吧,神奇的把$0,1,2,3,4,i,e,\pi,x^x$结合在了一起.

<!--more-->

证明这个需要点复变函数:

取围道$C$为:

![](http://geis.xyz/wp-content/uploads/2017/01/Amazing.png)

```

$$\begin{aligned}
f(z) &= {e^{i\pi + z\ln z + (1 - z)\ln (1 - z)}}\\
I &= \int_0^1 {{e^{i\pi x}}{x^x}{{(1 - x)}^{1 - x}}\mathrm{d}x} = \frac{1}{2}\mathop{\int\mkern-20.8mu \circlearrowleft}\nolimits_C {f(z)\mathrm{d}z} \\
&= \frac{1}{2} \times 2\pi i\mathop {{\text{Res}}}\limits_{z = 0} \frac{1}{{{z^2}}}f\left( {\frac{1}{z}} \right) = {\color{Red}{\boxed{- \pi i}}}\mathop {{\text{Res}}}\limits_{z = \infty } f(z)\\
f({\left. z \right|_\infty }) &\mapsto - ez + \frac{e}{2} + \frac{e}{{24z}} + \frac{e}{{48{z^2}}} + \frac{{73e}}{{5760{z^3}}} + O\left( {\frac{1}{z^4}} \right)\\
Inv\;f({\left. z \right|_\infty }) &\mapsto - \frac{z}{e} + \frac{1}{2} {\color{Red}{\boxed{- \frac{e}{24z}}}} - \frac{{{e^3}}}{{1920{z^3}}} + O\left( {\frac{1}{z^5}} \right)\\
&{\color{Red}{\boxed{\bigstar I = ( - \pi i)\left( { - \frac{e}{{24}}} \right) = \frac{e}{2}\frac{\pi }{3}\frac{i}{4}}}}\\
\end{aligned}$$

PS:只有真正的粉丝才能懂得这个积分中蕴含的哲理!

---

$$I=\int_0^\infty \int_0^\infty \frac{\log x \log y}{\sqrt {xy}}\cos(x+y)\,\mathrm{d}x\,\mathrm{d}y$$

首先上个三角恒等式:

$$\cos(x+y)=\cos(x)\cos(y)-\sin(x)\sin(y)$$

分开积分,然后发现变量也是独立的所以也分开

$$\begin{aligned}
I=&\int_0^\infty \int_0^\infty \frac{\log x \log y}{\sqrt {xy}}\left(\cos(x)\cos(y)-\sin(x)\sin(y)\right)\,\mathrm{d}x\,\mathrm{d}y\\
=&\left(\int^\infty_0 \frac{\log x }{\sqrt {x}}\cos(x)\mathrm{d}x \right)^2-\left(\int^\infty_0 \frac{\log x }{\sqrt {x}}\sin(x)\mathrm{d}x \right)^2\\
\end{aligned} $$

考虑如下梅林变换

$$\begin{aligned}
\int^\infty_0 x^{s-1}\sin(x)\mathrm{d}x &= \Gamma (s) \sin\left( \frac{\pi s}{2} \right)\\
\int^\infty_0 x^{s-1}\cos(x)\mathrm{d}x &= \Gamma (s) \cos\left( \frac{\pi s}{2} \right)\\
\end{aligned} $$

积分号下取微分并令 $s=\frac{1}{2}$.

$$\begin{aligned}
\int^\infty_0 \frac{\log x }{\sqrt {x}}\cos(x)\mathrm{d}x &=-\frac{1}{2} \sqrt{\frac{π}{2}} \left(2 \gamma +π+\log(16) \right)\\
\int^\infty_0 \frac{\log x }{\sqrt {x}}\sin(x)\mathrm{d}x &=\frac{1}{2} \sqrt{\frac{π}{2}} (-2 \gamma +π- \log(16))\\
\end{aligned} $$

整理一下结果就能得到

$$I=(\gamma+2\log 2)\pi^2$$

---

调和级数的积分形式:

$$H_n=\sum _{k=1}^{n}{\frac {1}{k}}=\int _{0}^{1}{\frac {1-x^{n}}{1-x}}\mathrm{d}x$$

这个直接展开然后逐项积分就行:

$$\begin{aligned}
\int {\frac{{1 - {x^n}}}{{1 - x}}\mathrm{d}x} &= \int {(1 + x + {x^2} + + {x^{n - 1}})\mathrm{d}x}\\
\int_0^1 {\frac{{1 - {x^n}}}{{1 - x}}\mathrm{d}x} &= \left. {\left( {x + \frac{{{x^2}}}{2} + \frac{{{x^3}}}{3} + + \frac{{{x^n}}}{n}} \right)} \right|_0^1
\end{aligned}$$

于是我们可以把调和级数推广到实数上去.

$$H_x=\int _{0}^{1}{\frac {1-t^{x}}{1-t}}\mathrm{d}t$$

最后我们能得到这么个式子:

$$\begin{aligned}
\gamma &=-\int _{0}^{\infty }e^{-x}\ln x\mathrm{d}x\\
&=-4\int _{0}^{\infty }e^{-x^{2}}x\cdot \ln x\mathrm{d}x\\
&=-\int _{0}^{1}\ln \left(\ln {\frac {1}{x}}\right)\mathrm{d}x\\
&=\int _{0}^{\infty }\left({\frac {1}{e^{x}-1}}-{\frac {1}{x\cdot e^{x}}}\right)\mathrm{d}x\\
&=\int _{0}^{1}\left({\frac {1}{\ln x}}+{\frac {1}{1-x}}\right)\mathrm{d}x\\&=\int _{0}^{\infty }\left({\frac {1}{1+x^{k}}}-e^{-x}\right){\frac \mathrm{d}x{x}}\;\quad k>0\\
&=\int _{0}^{1}H_{x}\mathrm{d}x
\end{aligned}$$

有点意思,更一般的:

$$\bigstar\int _{0}^{n}H_{x}\mathrm{d}x=n\gamma +\ln {n!}$$

结合前面的一系列文章,我们现在有了一连串等式:

$$\begin{aligned}
\gamma &= \mathop {\lim }\limits_{n \to \infty } \left( { - \ln n + \sum\limits_{k = 1}^n {\frac{1}{k}} } \right)
&= \int_1^\infty {\left( {\frac{1}{{ \lfloor x \rfloor }} - \frac{1}{x}} \right)}\;\mathrm{d}x\\
&= \int_0^1 {{H_x}} \mathrm{d}x
&= - \int_0^1 {\ln } \left( {\ln \frac{1}{x}} \right)\mathrm{d}x\\
&= \int_0^1 {\int_0^1 {\frac{{(x - 1)\mathrm{d}x\;\mathrm{d}y}}{{(1 - xy)\ln xy}}} }
&= \sum\limits_{n = 1}^\infty  {\left( {\frac{1}{n} - \ln \left( {1 + \frac{1}{n}} \right)} \right)}
\end{aligned}$$```