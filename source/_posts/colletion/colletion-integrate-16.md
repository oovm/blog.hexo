---
title: '积分习题XVI:超重积分(2)'
categories:
  - 数学题集
date: 2017-03-26 21:45:18
tags:
---
```
我觉得我上次讲的不太友好,题目太难了.

我们应该从简单点的开始讲,比如:

$$\int_{{{\left[ {a,b} \right]}^n}} {\mathrm{d}{x_1}\mathrm{d}{x_2} \ldots \mathrm{d}{x_n}}  = {\left( {b - a} \right)^n}$$

嗯,就是求超立方体体积...

然后我们来求超球体的体积,当然是用球坐标咯.

$$\begin{aligned}
dV&=r^{n-1}\sin ^{n-2}(\varphi _{1})\sin ^{n-3}(\varphi _{2})\cdots \sin(\varphi _{n-2})\,dr\,d\varphi _{1}\,d\varphi _{2}\cdots d\varphi _{n-1}\\
V_{n}(R)&=\int _{0}^{R}\int _{0}^{\pi }\cdots \int _{0}^{2\pi }r^{n-1}\sin ^{n-2}(\varphi _{1})\cdots \sin(\varphi _{n-2})\,d\varphi _{n-1}\cdots d\varphi _{1}\,dr\\
&=\left(\int _{0}^{R}r^{n-1}\,dr\right)\left(\int _{0}^{\pi }\sin ^{n-2}(\varphi _{1})\,d\varphi _{1}\right)\cdots \left(\int _{0}^{2\pi }d\varphi _{n-1}\right)\\
&={\frac {R^{n}}{n}}\left(2\int _{0}^{\frac {\pi }{2}}\sin ^{n-2}(\varphi _{1})\,d\varphi _{1}\right)\cdots \left(4\int _{0}^{\frac {\pi }{2}}d\varphi _{n-1}\right)\\
&={\frac {R^{n}}{n}}\textstyle \mathrm {B} \left({\frac {n-1}{2}},{\frac {1}{2}}\right)\mathrm {B} \left({\frac {n-2}{2}},{\frac {1}{2}}\right)\cdots \mathrm {B} \left(1,{\frac {1}{2}}\right)\cdot 2\mathrm {B} \left({\frac {1}{2}},{\frac {1}{2}}\right)\\
&={\frac {R^{n}}{n}}{\frac {\Gamma \left({\frac {n-1}{2}}\right)\Gamma \left({\frac {1}{2}}\right)}{\Gamma \left({\frac {n}{2}}\right)}}{\frac {\Gamma \left({\frac {n-2}{2}}\right)\Gamma \left({\frac {1}{2}}\right)}{\Gamma \left({\frac {n-1}{2}}\right)}}\cdots {\frac {\Gamma \left(1\right)\Gamma \left({\frac {1}{2}}\right)}{\Gamma \left({\frac {3}{2}}\right)}}\cdot 2{\frac {\Gamma \left({\frac {1}{2}}\right)\Gamma \left({\frac {1}{2}}\right)}{\Gamma \left(1\right)}}\\
&={\frac {2\pi ^{\frac {n}{2}}R^{n}}{n\Gamma \left({\frac {n}{2}}\right)}}={\frac {\pi ^{\frac {n}{2}}R^{n}}{\Gamma \left({\frac {n}{2}}+1\right)}}
\end{aligned}$$<!--more-->

好吧正面怼是最蠢的求超球体积的方法了,没有之一,正确做法是转化为递推积分,然后我们来求表面积

表面积的话就是体积对半径的导数了咯,你难道还想把这变态的玩意儿再积一遍....

这是显然的,因为如果已知表面积求体积的话就是取一个个小三棱锥为微元,倒过来自然直接微分就是....

$$\begin{aligned}
&{V_n}(R) = \frac{{{\pi ^{\frac{n}{2}}}{R^n}}}{{\Gamma \left( {\frac{n}{2} + 1} \right)}} &&\Leftrightarrow {R_n}(V) = \frac{{{V^{\frac{1}{n}}}}}{{\sqrt \pi }}\Gamma {\left( {\frac{n}{2} + 1} \right)^{\frac{1}{n}}}\\
&{S_n}(R) = {V_n}(R)\mathrm{d}R &&\Leftrightarrow {R_n}(S) = {2^{\frac{1}{{1 - n}}}}{\left( {{\pi ^{ - \frac{n}{2}}}s\Gamma \left( {\frac{n}{2}} \right)} \right)^{\frac{1}{{n - 1}}}}
\end{aligned}$$

---

上次那种约定还是太烦了,这次我准备了一种新约定,写出来大概是这样的:

$$\boxed{\bigstar \int_{{{[0,1]}^n}} {f\left( {\frac{1}{n}\sum {{x_{1,n}}} } \right)\mathrm{d}{x_{1,n}}}  = E\left[ {f\left( {\frac{1}{n}\sum {{X_{1,n}}} } \right)} \right]\quad {X_i}\sim U[0,1]}$$

这就表示:

$$\int_0^1 \cdots \int_0^1 f(\frac{x_1 + \ldots + x_n}{n})dx_1\ldots dx_n = E[f(\frac{X_1 + \ldots + X_n}{n})]$$

Well,其实就是Mathematica语法来着,下标表示初始值,终点值,步长,步长省略就是1

我都框出来了那这就是定理了,我们来证明它:

因为,$$({X_{1,n}})$$的分布不就是$[0,1]^n$上的勒贝格测度吗,那就是$\mathbb{E}(g({X_{1,n}})) = \int_{{{[0,1]}^n}} {g({x_{1,n}})\mathrm{d}{x_{1,n}}} $的意思,对于任意可测函数取$g \mapsto f\left( {\frac{1}{n}\sum {{x_{1,n}}} } \right)$然后就没有然后了.

其实的话还能有:

$$E[\varphi ({X_{1,n}})] = \int_{{\Re ^n}} {\varphi ({x_{1,n}})\prod {\text{PDF}({x_{1,n}})} \mathrm{d}{x_{1,n}}} $$

---

$$\boxed{\bigstar\mathop {\lim }\limits_{n \to \infty } \int_{{{[0,1]}^n}} {f\left( {\frac{1}{n}\sum {{x_{1,n}}} } \right)\mathrm{d}{x_{1,n}}}  = f(\frac{1}{2})}$$

记${\psi _n}(x) = { * ^n}\left( {n{\chi _{[0,1/n]}}} \right)$是$n\chi_{[0,1/n]}$的$n$重自卷积.

$$\begin{aligned}
&\quad \;\int_{{{[0,1]}^n}} {f\left( {\frac{1}{n}\sum {{x_{1,n}}} } \right)\mathrm{d}{x_{1,n}}} \\
&= {n^n}\int_{{{[0,1/n]}^n}} {f\left( {\sum {{x_{1,n}}} } \right)\mathrm{d}{x_{1,n}}} \\
&= \int_R f (x){\psi _n}(x)\mathrm{d}x
\end{aligned}$$

根据中心极限定理,$n\chi_{[0,1/n]}$的期望为$\frac1{2n}$而方差为$\frac1{12n^2}$,所以有:

$${\psi _n}\sim \sqrt {\frac{{6n}}{\pi }} \;{e^{ - 6n{{(x - \frac{1}{2})}^2}}}$$

于是:

$$\begin{aligned}
&\quad \;\mathop {\lim }\limits_{n \to \infty } \int_{{{[0,1]}^n}} {f\left( {\frac{1}{n}\sum {{x_{1,n}}} } \right)\mathrm{d}{x_{1,n}}} \\
&= \mathop {\lim }\limits_{n \to \infty } \int_R f (x){\psi _n}(x)\mathrm{d}x= f(\frac{1}{2})
\end{aligned}$$

为什么我会有种正在研究量子力学的感觉...

---

这个结论可以用来秒一些比较麻烦的玩意儿,比如正常解法下:

$$\begin{aligned}
&\quad\int_0^1\int_0^1\cdots\int_0^1\cos^2\left(\frac{a\pi}{2n}x_1+x_2+\dots+x_n)\right)\,\mathrm{d}x_1\,\mathrm{d}x_2\dots\,\mathrm{d}x_n\\
&=\frac12+\frac12\mathrm{Re}\left(\int_0^1\int_0^1\cdots\int_0^1e^{\frac{ia\pi}{n}(x_1+x_2+\dots+x_n)}\,\mathrm{d}x_1\,\mathrm{d}x_2\dots\,\mathrm{d}x_n\right)\\
&=\frac12+\frac12\mathrm{Re}\left(\left[\int_0^1e^{\frac{ia\pi}{n}x}\,\mathrm{d}x\right]^n\right)\\
&=\frac12+\frac12\mathrm{Re}\left(\left[\frac{n}{ia\pi}\right]^n\left[e^{\frac{ia\pi}{n}}-1\right]^n\right)\\
&=\frac12+\frac12\mathrm{Re}\left(\left[\frac{2n}{a\pi}\sin\left(\frac{a\pi}{2n}\right)\right]^ne^{\frac{ia\pi}{2}}\right)\\
&=\frac12+\frac12\left[\frac{2n}{a\pi}\sin\left(\frac{a\pi}{2n}\right)\right]^n \cos\left(\frac{a\pi}{2}\right)\\
&\to\frac12+\frac12\cos\left(\frac{a\pi}{2}\right)\\
&=\cos^2\left(\frac{a\pi}{4}\right)
\end{aligned}$$

但是可以直接用概率模型秒之.

---

刚刚用到了均匀分布的累加和趋于正态分布,确切的说

$$^n*U[a,b]\sim N[\frac{{a + b}}{2}n,\frac{{b - a}}{{2\sqrt 3 }}\sqrt n ]$$

我以前用中心矩解过这个了,就是研究投骰子那篇文章.

不然的话就是用超重积分计算,也能给出中心极限定理.

$$\begin{aligned}
P(z) &= \int_{{{[0,1]}^n}} {\delta \left( {\sum {{x_{1,n}} - z} } \right)\mathrm{d}{x_{1,n}}} \\
&= \mathcal{F}_t^{ - 1}\left[ {{{\left( {2\sqrt {{e^{it}}} \sin (t/2)/t} \right)}^n}} \right](z)\\
&= \frac{1}{{2\Gamma (n)}}\sum\limits_{k = 0}^n {{{( - 1)}^k}} C(n,k){(x - k)^{n - 1}}{\text{sgn}}(x - k)\\
&\approx \sqrt {\frac{6}{{n\pi }}} {e^{ - \frac{{6{{\left( {z - \frac{n}{2}} \right)}^2}}}{n}}} = N(\frac{n}{2},\sqrt {\frac{n}{{12}}} )
\end{aligned}$$

用到了两个性质,这种事实随便找本书都有,我就不证明了.

1.  **随机变量之和等于特征函数之积**
2.  **特征函数的傅里叶逆变换给出概率分布函数**
当然还有其他什么差分布,积分布

$$\begin{aligned}
{P_{\varphi ({X_1},{X_2})}}(z) &= \iint_{{{[0,1]}^2}} {\delta (\varphi (x,y) - z)\mathrm{d}x\;{\text{dy}}}\\
{P_{{X_1} + {X_2}}}(z) &= \int_0^1 {\int_0^1 {\delta (x + y - z)\mathrm{d}x} \;{\text{dy}}} \\
&= \int_0^1 {\theta (z - y)\;{\text{dy}}} = z\theta (z)\\
{P_{{X_1} - {X_2}}}(z) &= \int_0^1 {\int_0^1 {\delta (x - y - z)\mathrm{d}x} \;{\text{dy}}} \\
&= \int_0^1 {\theta ( - y - z + 1)\theta (y + z)\;{\text{dy}}} = z\theta ( - z) - z\theta (z) + 1\\
{P_{{X_1} \times {X_2}}}(z) &= \int_0^1 {\int_0^1 {\delta (x \times y - z)\mathrm{d}x} \;{\text{dy}}} \\
&= \int_0^1 {\frac{{\theta (z)\theta (y - z)}}{y}\;{\text{dy}}} = - \theta (z)\log (z)\\
{P_{{X_1} \div {X_2}}}(z) &= \int_0^1 {\int_0^1 {\delta (x \div y - z)\mathrm{d}x} \;{\text{dy}}} \\
&= \int_0^1 {y\theta (z)\;{\text{dy}}} = \frac{1}{2}\\
{P_{{X_1}^{{X_2}}}}(z) &= \int_0^1 {\int_0^1 {\delta ({x^y} - z)\mathrm{d}x} \;{\text{dy}}} = - \frac{{{\text{li}}(z)}}{z}\\
\end{aligned}$$

然后我示范一下错误的代码写法,唔,其实是复制粘贴的,调试的时候Ctrl+C/V大法那是极好的,但是如果发布出去还这么搞要被吐fen槽ci的:
<pre class="lang:haskell decode:true">Integrate[DiracDelta[(x+y)-z],{x,0,1},{y,0,1},Assumptions->-1<z<1]
Integrate[DiracDelta[(x-y)-z],{x,0,1},{y,0,1},Assumptions->-1<z<1]
Integrate[DiracDelta[(x y)-z],{x,0,1},{y,0,1},Assumptions->-1<z<1]
Integrate[DiracDelta[(x/y)-z],{x,0,1},{y,0,1},Assumptions->-1<z<1]
Integrate[DiracDelta[Min[x,y]-z],{x,0,1},{y,0,1},Assumptions->-1<z<1]
Integrate[DiracDelta[Max[x,y]-z],{x,0,1},{y,0,1},Assumptions->-1<z<1]

"更好的写法是下面这种,可以作用于任意二元运算符";
list={Plus,Subtract,Times,Divide,Power,Surd,Max,Min}
cal=Integrate[DiracDelta[#[x,y]-z],{x,0,1},{y,0,1},Assumptions->-1<z<1]&
TableForm[cal/@list,TableHeadings->{list}]

"n重积分值验证";
UniformSumF[n_]:=InverseFourierTransform[CharacteristicFunction[UniformDistribution[],t]^n,t,x];
UniformSumP[n_]:=Sum[Binomial[n,k](x-k)^(n-1) (-1)^k Sign[x-k],{k,0,n}]/(n-1)!/2;
UniformProP[n_]:=(-1)^(n-1) Log[x]^(n-1)/(n-1)</pre>
等会儿,我在搞什么啊,我不是在讲超重积分吗,为什么要说关于概率和编程的内容?捂脸...

好,最后再说一个,均匀分布的随机变量之积为:

$${P_{\prod {{X_{1,n}}} }}(z) = \int_{{{[0,1]}^n}} {\delta (\prod {{x_{1,n}}}  - z)\mathrm{d}{x_{1,n}}}  = \frac{{{{( - 1)}^{n - 1}}}}{{n - 1}}{\log ^{n - 1}}(x)$$```