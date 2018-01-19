---
title: '积分习题XV:超重积分'
categories:
  - 数学题集
date: 2017-03-22 21:42:37
tags:
---
```
超重积分就是那种看上去很重很重的积分......嗯?这个字读Chóng来着....那就是n重积分的意思了....

发明一个约定:

$$I(n) = \int_{{{[0,1]}^n}} {\mathop f\limits_{i \in 1\sim n} [{x_i}]\mathrm{d}{x_i}}  = \int_0^1 {\int_0^1 . } ..\int_0^1 {f({x_1},{x_2},...,{x_n})\mathrm{d}{x_1}\mathrm{d}{x_2}...\mathrm{d}{x_n}}$$

Well....你以为打一大堆积分号不累啊...

来试验一下,求证:$$\boxed{\bigstar I(n) = \int_{{{[0,1]}^n}} {\mathop {\min }\limits_{i \in 1\sim n} [{x_i}]\mathrm{d}{x_i}}  = \frac{1}{{n + 1}}}$$

<!--more-->

然后实际操作中发现这个约定并没有什么卵用.....推导的时候还不是得展开:

$$\begin{aligned}
I(n) &= \int_{{{[0,1]}^n}} {\mathop {\min }\limits_{i \in 1\sim n} [{x_i}]\mathrm{d}{x_i}} \\
&= \int_0^1 \cdots \int_0^1 {\min } \{ {x_1}, \cdots ,{x_n}\} \mathrm{d}{x_n} \cdots \mathrm{d}{x_1}\\
&= \mathbb{E}(\min \{ {U_1}, \cdots ,{U_n}\} )\\
&= \int_0^1 \mathbb{P} (\min \{ {U_1}, \cdots ,{U_n}\} > x)\mathrm{d}x\\
&= \int_0^1 \mathbb{P} ({U_1} > x, \cdots ,{U_n} > x)\mathrm{d}x\\
&= \int_0^1 \mathbb{P} {({U_1} > x)^n}\mathrm{d}x\\
&= \int_0^1 {{{(1 - x)}^n}} \mathrm{d}x\\
&= \frac{1}{{n + 1}}\\
\end{aligned}$$

用概率的角度看这个问题就是一个在n维服从均匀分布$U\sim{[0,1]^n}$的随机变量里各个正交分量最小值的期望.

从几何的角度看的话就是超几何体$\mathcal{W} = \{ (t, x_{1}, \cdots, x_{n}) : 0 \leq t \leq 1, t \leq x_{1} \leq 1, \cdots, t \leq x_{n} \leq 1 \}$的超体积.

这样的话就是:

$$I{\text{(n)}} = \int_0^1 {\int_t^1  \cdots  } \int_t^1  \mathrm{d}{x_n} \cdots \mathrm{d}{x_1}\mathrm{d}t = \int_0^1 {{{(1 - t)}^n}} \mathrm{d}t = \frac{1}{{n + 1}}$$

同理可证:

$$I(n) = \int_{{{[0,s]}^n}} {\mathop {\min }\limits_{i \in 1\sim n} [{x_i}]\mathrm{d}{x_i}}  = \int_0^s {{{(s - x)}^n}} dx = \frac{{{s^{n + 1}}}}{{n + 1}}$$

---

来加强这个问题:

求证

$$\boxed{\bigstar {I_p}(n) = \int_{{{[0,1]}^n}} {{{\left( {\mathop {\min }\limits_{i \in 1\sim n} [{x_i}]} \right)}^p}\mathrm{d}{x_i}}  = n!{\left( {\frac{1}{p} + 1} \right)_n}}$$

这次要用到递推积分了:

$$\begin{aligned}
{I_p}(n) &= n!\int_{0 < {x_1} < \ldots < {x_n} < 1} {{{(\mathop {\min }\limits_{i \in 1\sim n} [{x_i}])}^p}} \mathrm{d}{x_1} \ldots \mathrm{d}{x_n}\\
&= n!\int_{0 < {x_1} < \ldots < {x_n} < 1} {x_1^p} \mathrm{d}{x_1} \ldots \mathrm{d}{x_n}\\
&= n!\int_{0 < {x_2} < \ldots < {x_n} < 1} {\frac{{x_2^{p + 1}}}{{\alpha + 1}}} \mathrm{d}{x_2} \ldots \mathrm{d}{x_n}\\
&= \cdots = \frac{n}{{p + 1}}{I_{p + 1}}(n - 1)\\
\end{aligned}$$

解递推即证:

$${I_p}(n) = n!{I_{p + n - 1}}(1)\prod\limits_{i = 1}^{n - 1} {\frac{1}{{p + i}}}  = n!\prod\limits_{i = 1}^n {\frac{1}{{p + i}}}  = n!{\left( {\frac{1}{p} + 1} \right)_n}$$

---

在之前的文章中我们计算过这些积分:

$$\begin{aligned}
&\int_0^1 {\left\{ {\frac{1}{x}} \right\}\:\mathrm{d}x} = 1 - \gamma\\
&\int_0^1 {{{\left\{ {\frac{1}{x}} \right\}}^2}\:\mathrm{d}x} = \log 2\pi - \gamma - 1\\
\end{aligned}$$

接下来我们来作更多的推导.
> **引理1:**> 
> $$\int_{0}^{1} x^{s}\left\{1/x\right\}^{2}\:\mathrm{d}x = -\frac{2\zeta(s)}{s(1+s)}-\frac{\zeta(1+s)}{1+s}-\frac{1}{1-s}$$> 
> 其中$-1<\Re{s}<1, s\neq 0$
**引证:**

$$\begin{aligned}
\displaystyle \int_{0}^{1} x^{s}\left\{1/x\right\}^{2}\:\mathrm{d}x & = \sum_{k=1}^{\infty}
\displaystyle \int_{1/(k+1)}^{1/k} x^{s}\left\{1/x\right\}^{2} \:\mathrm{d}x \\
& = \sum_{k=1}^{\infty} \displaystyle \int_{k}^{k+1} (x-k)^{2} \frac{\mathrm{d}x}{x^{s+2}} \\
& = \sum_{k=1}^{\infty} \displaystyle \int_{0}^{1}\frac{x^{2}}{(x+k)^{s+2}}\mathrm{d}x \\
& = \sum_{k=1}^{\infty} \displaystyle \int_{0}^{1}\left(\frac{1}{(x+k)^{s}}-\frac{2k}{(x+k)^{s+1}}+ \frac{k^{2}}{(x+k)^{s+2}}\right)\mathrm{d}x \\
& = \sum_{k=1}^{\infty} \displaystyle \left. \left( -\frac{1}{(s-1)} \frac{1}{(x+k)^{s-1}} +\frac{2}{s}\frac{k}{(x+k)^{s}}
-\frac{k^{2}}{(s+1)(x+k)^{s+1}} \right) \right|_{0}^{1}\\
& = -\frac{1}{1-s} -\frac{2\zeta(s)}{s(1+s)}-\frac{\zeta(1+s)}{1+s}.
\end{aligned}$$
> **引理2:**> 
> $$\frac{(-1)^{n-1}}{(n-1)!} \int_{0}^{1} \left\{1/x\right\}^{2} \ln ^{n-1} x\: \mathrm{d}x = (-1)^{n}+1 -\sum_{k=0}^{n-1}\frac{\gamma_{k}}{k!}+2\sum_{k=0}^{n} \frac{(-1)^k}{k!}\zeta^{(k)}(0)$$> 
> 其中$\gamma_{k}$是洛朗- 斯蒂尔杰斯常数(Laurent-Stieltjes Constants),其定义为:> 
> $$\gamma_{k} = \displaystyle \lim_{N \rightarrow \infty}\left(\sum_{m=1}^{N}\frac{\ln^{k}m}{m}-\frac{\ln^{k+1}N}{k+1} \right)$$
**引证:**

对于 $0<\Re{s}<1$,使用引理1,我们有
$$\int_{0}^{1} x^{s}\left\{1/x\right\}^2 \:\mathrm{d}x = \sum_{n=0}^{\infty}\left(\int_{0}^{1} \left\{1/x\right\}^2 \ln^{n}x \:\mathrm{d}x \right) \frac{s^{n}}{n!}$$

考虑洛朗级数
$$\zeta (1 + s) = \frac{1}{s} + \sum\limits_{k = 0}^\infty  {{{( - 1)}^k}} \frac{{{\gamma _k}}}{{k!}}{s^k}$$

比较两边的系数即证:
> **引理3:**> 
> $$\begin{aligned}> 
> {I_n} &= \int_0^1 \cdots \int_0^1 {{{\left\{ {\frac{1}{{{x_1}{x_2} \cdots {x_n}}}} \right\}}^2}} \:\mathrm{d}{x_1}\mathrm{d}{x_2} \cdots \mathrm{d}{x_n}\\> 
> &= {( - 1)^n} + 1 - \sum\limits_{k = 0}^{n - 1} {\frac{{{\gamma _k}}}{{k!}}} + 2\sum\limits_{k = 0}^n {\frac{{{{( - 1)}^k}}}{{k!}}} {\zeta ^{(k)}}(0)\\> 
> {\gamma _k} &= \mathop {\lim }\limits_{N \to \infty } \left( {\sum\limits_{m = 1}^N {\frac{{{{\ln }^k}m}}{m}} - \frac{{{{\ln }^{k + 1}}N}}{{k + 1}}} \right)> 
> \end{aligned}$$
**引证:**

我们尝试将$ I_{n} $化为单变量积分,做变量替换

$$\begin{aligned}
\displaystyle u_{1} & = x_{1} \\
u_{2} & = x_{1}x_{2} \\
& \vdots \\
u \, & = x_{1}x_{2} \cdots x_{n} .
\end{aligned}$$

变换后积分限变为$ \displaystyle 0<u< \cdots <u_{2}< u_{1}<1 $ ,此时:

$$\begin{aligned}
I_{n} &= \displaystyle \int_{0}^{1} \! \int_{u}^{1} \cdots \! \int_{u_{2}}^{1}
\left\{1/u\right\}^{2} \: \frac{\mathrm{d}u_{1} \cdots \mathrm{d}u_{n-1}}{u_{1} \cdots u_{n-1}} \mathrm{d}u \\
&= \frac{(-1)^{n-1}}{(n-1)!}\displaystyle \int_{0}^{1}
\left\{1/u\right\}^{2} \ln ^{n-1} u\: \mathrm{d}u
\end{aligned}$$

这样就变成了引理2的情形

把上面几个引理结合起来,最后,我们得到了定理:

$$\boxed{\begin{aligned}
{I_{n,p}} &= \int_0^1 \cdots \int_0^1 {{{\left\{ {\frac{1}{{{x_1} \cdots {x_n}}}} \right\}}^p}} \:\mathrm{d}{x_1} \cdots \mathrm{d}{x_n}\\
&= \frac{{{{( - 1)}^n}}}{{{{(p - 1)}^n}}} - 1 - \sum\limits_{k = 0}^{n - 1} {\frac{{{\gamma _k}}}{{k!}}} - \frac{{p!}}{{n!}}\sum\limits_{\ell = 0}^{p - 2} {\frac{{{{( - 1)}^\ell }}}{{(p - \ell - 1)!}}} {\left. {{{\left( {\frac{{\zeta (s - \ell )}}{{(1 + s){{(1 - s)}_\ell }}}} \right)}^{(n)}}} \right|_{s = 0}}\\
{\gamma _k} &= \mathop {\lim }\limits_{N \to \infty } \left( {\sum\limits_{m = 1}^N {\frac{{{{\ln }^k}m}}{m}} - \frac{{{{\ln }^{k + 1}}N}}{{k + 1}}} \right)
\end{aligned}}$$

特别的
$${I_{n,1}} = \int_0^1   \cdots \int_0^1 {{{\left\{ {\frac{1}{{{x_1} \cdots {x_n}}}} \right\}}^p}} \:\mathrm{d}{x_1} \cdots \mathrm{d}{x_n} = 1 - \sum\limits_{k = 0}^{n - 1} {\frac{{{\gamma _k}}}{{k!}}} $$

**注1:这个问题来自这本书:[<span style="text-decoration: underline;"><span style="color: #0000ff; text-decoration: underline;">Limits, Series, and Fractional Part Integrals</span></span>](http://www.springer.com/cn/book/9781461467618)**
**注2:这个结论并不能用数学软件验证,因为震荡积分用数值软件算下场普遍都很惨,Well,我试了一下100位工作精度下去只有5位有效数字的样子...**```