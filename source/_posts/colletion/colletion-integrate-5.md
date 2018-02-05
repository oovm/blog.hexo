---
title: '积分习题V:整值积分'
categories:
  - 未完成
abbrlink: 4bbc3775
date: 2016-12-02 19:34:03
tags:
---
```
一下所有积分都是猜测发现的,所以暂时我还没有写证明.

双曲积分:

$$\begin{aligned}
\bigstar C(s,n) &= \int_0^\infty {\frac{{{x^{2n}}}}{{\cosh (\pi x/s)}}}\;\mathrm{d}x\quad(n,s)\geqslant1\\
&= {16^{ - n}}n{\pi ^{ - 2n - 1}}{s^{2n + 1}}\left( {\zeta \left( {2n + 1,\frac{1}{4}} \right) - \zeta \left( {2n + 1,\frac{3}{4}} \right)} \right)\Gamma (2n)\\
\bigstar S(s,n) &=\int_0^\infty {\frac{{{x^{2n - 1}}}}{{\sinh (\pi x/s)}}}\;\mathrm{d}x\quad(n,s)\geqslant1\\
&= \frac{{{4^n} - 1}}{n}{(2\pi )^{ - 2n}}{s^{2n}}\zeta (2n)\Gamma (2n + 1)
\end{aligned}$$

Integrate[x^(2n)/Cosh[(Pi*x)/s], {x, 0, Infinity},Assumptions->n>s>1]
(*16^-n n $$Pi]^(-1-2 n) s^(1+2 n) Gamma[2 n] (Zeta[1+2 n,1/4]-Zeta[1+2 n,3/4])*)
Integrate[x^(2n-1)/Sinh[(Pi*x)/s], {x, 0, Infinity},Assumptions->n>s>1]
(*((-1+4^n) (2 $$Pi])^(-2 n) s^(2 n) Gamma[1+2 n] Zeta[2 n])/n*)

补证:

$$\begin{aligned}
\frac {I(m)}2:
=\int_0^\infty \frac{t^m}{2\,\cosh(t)}\;\mathrm{d}t
&=\int_0^\infty \frac{t^m\;e^{-t}}{1+e^{-2t}}\;\mathrm{d}t\\
&=\int_0^\infty \sum_{k=0}^\infty (-1)^k\;t^m\;e^{-(2k+1)t}\;\;\mathrm{d}t\\
&=\sum_{k=0}^\infty\frac {(-1)^k}{(2k+1)^m}\int_0^\infty u^m\;e^{-u}\frac{du}{2k+1}\;\\
&=\Gamma(m+1)\sum_{k=0}^\infty\frac {(-1)^k}{(2k+1)^{m+1}}\\
&=\Gamma(m+1)\,\beta(m+1)
\end{aligned}$$

这里的β不是欧拉Beta函数而是狄利克雷Beta函数,ζ不是黎曼Zeta函数而是赫尔维茨Zeta函数.```