---
title: '积分习题VIII:真·伪参积分'
categories:
  - 未完成
date: 2017-01-03 20:25:31
tags:
---
```
"真-伪参积分就是比伪参积分还要伪的参积分,真正的伪参积分,伪伪得真吗....

好吧其实就是那个参数根本没啥卵用,直接咔嚓一下就消掉了的意思.

比方说这个,为啥明明有a,b,k三个参数但是叫I(a,b)呢,就是因为k在这里就是个打酱油的.

$$I(a,b) = \int_0^\infty  {\ln } \left( {\frac{{{x^2} + 2kx\cos b + {k^2}}}{{{x^2} + 2kx\cos a + {k^2}}}} \right)\;\frac{{\mathrm{d}x}}{x}\quad 0 \leqslant a,b \leqslant \pi ,k > 0$$

直接换元$x \mapsto kx$这娃就没了...

$$I(a,b) = \int_0^\infty  {\log } \left( {\frac{{{x^2} + 2kx\cos (a) + {k^2}}}{{{x^2} + 2kx\cos (b) + {k^2}}}} \right)\frac{{\mathrm{d}x}}{x} = \int_0^\infty  {\log } \left( {\frac{{{x^2} + 2x\cos (a) + 1}}{{{x^2} + 2x\cos (b) + 1}}} \right)\frac{{\mathrm{d}x}}{x}$$

然后留下一个烂摊子要去积....

再次换元$u = \frac{x}{k}$,然后就重新引入了k,不过此k和彼k一点关系都没了,然后就又没了....

$$\begin{aligned}
I(a,b) &= \int_0^\infty {\log } \left( {\frac{{{u^2} + 2u\cos (b) + 1}}{{{u^2} + 2u\cos (a) + 1}}} \right)\frac{{du}}{u}\\
&= 2\int_0^1 {\log \left( {\frac{{{u^2} + 2u\cos (b) + 1}}{{{u^2} + 2u\cos (a) + 1}}} \right)\frac{{du}}{u}} \\
&= 4\int_0^1 {\frac{1}{u}} \sum\limits_{k = 1}^\infty {{{( - u)}^k}} \frac{{\cos (ka) - \cos (kb)}}{k}\\
&= 4\sum\limits_{k = 1}^\infty {{{( - 1)}^k}} \frac{{\cos (ka) - \cos (kb)}}{k}\int_0^1 {{u^{k - 1}}} \;du\\
&= 4\sum\limits_{k = 1}^\infty {{{( - 1)}^k}} \frac{{\cos (ka) - \cos (kb)}}{{{k^2}}}\\
&= 4\left( {\frac{{{a^2}}}{4} - \frac{{{b^2}}}{4}} \right)\\
&= {a^2} - {b^2}
\end{aligned}$$

用到了一个傅里叶变换:

$$\sum\limits_{k = 1}^\infty  {{{( - 1)}^k}} \frac{{\cos (ka)}}{{{k^2}}} = \frac{{{a^2}}}{4} - \frac{{{\pi ^2}}}{{12}}\quad |a| < \pi $$

<!--more-->

---

比较常见的就是一堆涉及年份的积分,反正里面的年份就是个萌萌哒,并没有什么卵用...

比如说在2016年计算这个东西:

$$\int_{ - \pi /2}^{\pi /2} {\frac{{{{\sin }^{2016}}x}}{{{{\sin }^{2016}}x + {{\cos }^{2016}}x}}} dx$$

考虑参积分:

$$I = \int_{ - \pi /2}^{\pi /2} {\frac{{{{\sin }^{2a}}x}}{{{{\sin }^{2a}}x + {{\cos }^{2a}}x}}} dx$$

$$\begin{aligned}
I &= \int_0^{\pi /2} {\frac{{{{\sin }^{2a}}x}}{{{{\sin }^{2a}}x + {{\cos }^{2a}}x}}} dx + \int_{ - \pi /2}^0 {\frac{{{{\sin }^{2a}}x}}{{{{\sin }^{2a}}x + {{\cos }^{2a}}x}}} \mathrm{d}x\\
&= \int_0^{\pi /2} {\frac{{{{\sin }^{2a}}x}}{{{{\sin }^{2a}}x + {{\cos }^{2a}}x}}} dx - \int_{\pi /2}^0 {\frac{{{{\sin }^{2a}}x}}{{{{\sin }^{2a}}x + {{\cos }^{2a}}x}}} \mathrm{d}x\\
&= 2\int_0^{\pi /2} {\frac{{{{\sin }^{2a}}x}}{{{{\sin }^{2a}}x + {{\cos }^{2a}}x}}} \mathrm{d}x\\
I &= 2\int_{ - \pi /2}^0 {\frac{{{{\cos }^{2a}}t}}{{{{\sin }^{2a}}t + {{\cos }^{2a}}t}}} dt\quad x \to t - \pi /2\\
I &= 2\int_0^{\pi /2} {\frac{{{{\cos }^{2a}}x}}{{{{\sin }^{2a}}x + {{\cos }^{2a}}x}}} dx\quad t \to - x\\
2I &= 2\int_0^{\pi /2} {\frac{{{{\sin }^{2a}}x + {{\cos }^{2a}}x}}{{{{\sin }^{2a}}x + {{\cos }^{2a}}x}}} dx = 2\int_0^{\pi /2} d x = \pi
\end{aligned}$$

可惜这里有个限定要求偶数.

---

嗯,我觉得上面这个还不够强,还需要威力加强版:

$$I = \int_{ - \pi /2}^{\pi /2} {\frac{1}{{{{2016}^x} + 1}}\left( {\frac{{{{\sin }^{2016}}x}}{{{{\sin }^{2016}}x + {{\cos }^{2016}}x}}} \right)dx}$$

好吧,这只是个常用积分技巧:

$$\begin{aligned}
f(x) &= \frac{{{{\sin }^{2016}}x}}{{{{\sin }^{2016}}x + {{\cos }^{2016}}x}} \Rightarrow f(x) = f( - x)\\
I &= \int_{ - a}^a {\frac{{f(x)}}{{1 + {{2016}^x}}}} dx = \int_{ - a}^a {\frac{{f( - x)}}{{1 + {{2016}^{ - x}}}}} dx = \int_{ - a}^a {\frac{{f(x)}}{{1 + {{2016}^{ - x}}}}} \\
\Rightarrow 2I &= \int_{ - a}^a f (x)\left( {\frac{1}{{1 + {{2016}^x}}} + \frac{1}{{1 + {{2016}^{ - x}}}}} \right)dx = \int_{ - a}^a f (x)\mathrm{d}x\\
\therefore I &= \frac{\pi }{2}\quad \square
\end{aligned}$$

---

话说我之前说过要有点想象力,以函数作为参数也不是不可以,于是我这里又找到了一个例子:

$$I(f(x)) = \iint_R {\frac{{f(t)}}{{1 + {{(x + g(t))}^2}}}{\text{dt}}\;\mathrm{d}x}$$

$$\begin{aligned}
I(f(x)) &= \int_{ - \infty }^\infty {\int_{ - \infty }^\infty {\frac{{f(t)}}{{1 + {{(x + g(t))}^2}}}{\text{dt}}} \;\mathrm{d}x} \\
&= \int_{ - \infty }^\infty {\int_{ - \infty }^\infty {\frac{{f(t)}}{{1 + {{(x + g(t))}^2}}}\mathrm{d}x} \;{\text{dt}}} \\
&= \int_{ - \infty }^\infty {\left[ {f(t){{\tan }^{ - 1}}(x + g(t))} \right]_{ - \infty }^\infty {\text{dt}}} \;\\
&= \pi \int_{ - \infty }^\infty {f(t)\;\mathrm{d}x}
\end{aligned}$$

---

又找到一个年份积分:

$$\int_0^\infty  {\frac{{\sin (2017x)}}{{x(\cos x + \cosh x)}}} dx = \frac{\pi }{4}$$

怎么着就猜想:

$$I(n) = \int_0^\infty  {\frac{{\sin ((2n - 1)x)}}{{x(\cos x + \cosh x)}}} dx = \frac{\pi }{4}$$

$$\begin{aligned}
I(n) &= \int_0^\infty {\frac{{\sin ((2n - 1)x)}}{{x(\cos (x) + \cosh (x))}}} \mathrm{d}x\\
&= \frac{1}{2}\int_{ - \infty - i}^{\infty - i} {\frac{{\sin ((2n - 1)x)}}{{x(\cos (x) + \cosh (x))}}} \mathrm{d}x\\
&= \frac{1}{{4i}}\int_{{\gamma ^ + }} {\frac{{{e^{(2n - 1)iz}}}}{{z(\cos (z) + \cosh (z))}}} \mathrm{d}z - \frac{1}{{4i}}\int_{{\gamma ^ - }} {\frac{{{e^{(1 - 2n)iz}}}}{{z(\cos (z) + \cosh (z))}}} \mathrm{d}z\\
&= \frac{{2\pi i}}{{4i}}\frac{1}{2} + 2\frac{{2\pi i}}{{4i}} \times 0 = \frac{\pi }{4}
\end{aligned}$$

---

$$\mathop \smallint \nolimits_0^\infty  \frac{\mathrm{d}x}{{\sqrt x [{x^2} + 7x + 1][1 - x + {x^2} - {x^3} +  \cdots  + {x^{2016}}]}} = \frac{\pi }{3}$$

后面的2016肯定没用.所以有用的参数就是7了.

$$\begin{aligned}
I(a) &= \int_0^\infty {{{\left[ {\sqrt x (1 + ax + {x^2})\left( {\sum\limits_{k = 0}^n {{{( - x)}^k}} } \right)} \right]}^{ - 1}}\mathrm{d}x} \quad {\color{Blue} {x \mapsto 1/x}}\\
&= \int_0^\infty {\frac{{{{( - 1)}^n}{x^{n + 1}}\mathrm{d}x}}{{\sqrt x (1 + ax + {x^2})(\sum\limits_{k = 0}^n {{{( - x)}^k}} )}}} \\
2I(a) &= \int_0^\infty {\frac{{(1 + x)\mathrm{d}x}}{{\sqrt x (1 + ax + {x^2})}}} \\
&= 2\int_0^\infty {\frac{{(1 + {t^2})\mathrm{d}x}}{{1 + a{t^2} + {t^4}}}} \quad {\color{Blue} {t - 1/t \mapsto u}}\\
I(a) &= \int_{ - \infty }^\infty {\frac{{\mathrm{d}u}}{{2 + a + {u^2}}}} = \frac{\pi }{{\sqrt {2 + a} }}
\end{aligned}$$

这儿有个公式来自[这篇文章](http://129.81.170.14/~vhm/papers_html/3param.pdf)的一系列推导:

$$\boxed{\begin{aligned}
&\bigstar{I_b}(p,a,c) &&= \int_0^\infty {{{\left[ {{{(ax + \frac{b}{x})}^2} + c} \right]}^{ - (p + 1)}}\mathrm{d}x} \; &&= \frac{{\sqrt \pi \Gamma (p + 1/2)}}{{2a{c^{p + 1/2}}\Gamma (p + 1)}}\\
&\bigstar I(r,a,b,c) &&= \int_0^\infty {{{\left( {\frac{{{x^2}}}{{b{x^4} + 2a{x^2} + c}}} \right)}^r}\mathrm{d}x} &&= \frac{{B(r - \frac{1}{2},\frac{1}{2})}}{{{2^{r + 1/2}}\sqrt b {{(a + \sqrt {bc} )}^{r - 1/2}}}}\\
&\bigstar{I_b}(r,a) &&= \int_0^\infty {{{\left( {\frac{{{x^2}}}{{{x^4} + 2a{x^2} + 1}}} \right)}^r}\frac{{{x^2} + 1}}{{{x^b} + 1}}\;\frac{{\mathrm{d}x}}{{{x^2}}}} &&= \frac{{B(r - \frac{1}{2},\frac{1}{2})}}{{{2^{r - 1/2}}{{(1 + a)}^{r - 1/2}}}}
\end{aligned}}$$

注意到

$$\begin{aligned}
&\quad\ 1 - x + {x^2} - {x^3} + \cdots + {x^{2016}}\quad {\color{Blue} {x \mapsto - y}} \\
&= 1 + y + {y^2} + {y^3} + \cdots + {y^{2016}} = \frac{{1 - {y^{2017}}}}{{1 - y}}
\end{aligned}$$

用第三个公式,做代换${x^2} \mapsto x$重写一下就能秒杀本题了."```