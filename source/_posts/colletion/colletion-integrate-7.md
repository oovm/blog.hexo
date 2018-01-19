---
title: '积分习题VII:伪参积分'
categories:
  - 未完成
date: 2016-12-28 00:48:08
tags:
---
```
所谓伪参积分就是引入新参数以后并不能巧妙计算的那种....

简单地说就是吃饱了撑着没事干加个参数搞事情....

一般来说就是找个x变成x^n,能积最好,不能积么,那就换个积分继续搞事儿....

比如这个本来不算太难的题:

$$I = \int_0^1 {\frac{{\ln x\ln y}}{{1 - xy}}} dx = \frac{{{\pi ^4}}}{{90}}$$

搞事情,求证:

$$\bigstar I(s) = \int_0^1 {\int_0^1 {\frac{{{{\left( {\ln x\ln y} \right)}^s}}}{{1 - xy}}} } dxdy = {\Gamma ^2}(1 + s)\:\zeta (2 + 2s)$$

来啊,谁啪谁啊,正面上

$$\begin{aligned}
I(s) &= \int_0^1 {\int_0^1 {\frac{{{{\left( {\ln x\ln y} \right)}^s}}}{{1 - xy}}} } dxdy\\
&= \int_0^1 {\int_0^1 {\sum\limits_{n = 0}^\infty {{{(xy)}^n}} } } {\left( {\ln x\ln y} \right)^s}dxdy\\
&= \sum\limits_{n = 0}^\infty {\left( {\int_0^1 {{x^n}} {{\left( { - \ln x} \right)}^s}dx} \right)} \left( {\int_0^1 {{y^n}} {{\left( { - \ln y} \right)}^s}dy} \right)\\
&= \sum\limits_{n = 0}^\infty {{{\left( {\int_0^1 {{x^n}} {{\left( { - \ln x} \right)}^s}dx} \right)}^2}} \\
&= \sum\limits_{n = 0}^\infty {{{\left( {\frac{{\Gamma (s + 1)}}{{{{(n + 1)}^{s + 1}}}}} \right)}^2}} \\
&= {\Gamma ^2}(s + 1)\:\sum\limits_{n = 1}^\infty {\frac{1}{{{n^{2s + 2}}}}} \\
&= {\Gamma ^2}(1 + s)\:\zeta (2 + 2s)
\end{aligned}$$

---

```