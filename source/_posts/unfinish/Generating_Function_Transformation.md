---
title: Generating Function Transformation
date: 2018-1-17 12:35:42
---


## 数列变换

### 加和

### Hadamard 积 
 
$$(F\odot G)(z):=\sum_{n\geq 0}f_{n}g_{n}z^{n}={\frac {1}{2\pi }}\int_{0}^{2\pi }F\left({\sqrt {z}}e^{\imath t}\right)G\left({\sqrt {z}}e^{-\imath t}\right)\mathrm{d}t$$

### Zeta 变换


def:

$$\left\{\begin{matrix}k+2\\j\end{matrix}\right\}_\ast:={\frac {1}{j!}}\times \sum_{m=1}^{j}{\binom {j}{m}}{\frac {(-1)^{j-m}}{m^k}}$$

$$\sum_{n\geq 1}{\frac {f_{n}}{n^{k}}}z^{n}=\sum_{j\geq 1}\left\{\begin{matrix}k+2\\j\end{matrix}\right\}_{\ast }z^{j}F^{(j)}(z)$$

where Then for $k \in \mathbb{Z}^{+}$ and some prescribed OGF, ${\displaystyle F(z)\in C^{\infty }}$, i.e., so that the higher-order {\displaystyle j^{th}} j^{th} derivatives of {\displaystyle F(z)} {\displaystyle F(z)} exist for all {\displaystyle j\geq 0} j\geq 0, we have that

### 负 Zeta 变换

$$\sum_{n\geq 0}n^{k}f_{n}z^{n}=\sum_{j=0}^{k}\left\{\begin{matrix}k\\j\end{matrix}\right\}z^{j}F^{(j)}(z)$$

---

## 函数变换

### Cauchy 积 

$$ \sum (f *g)(n):=\left(\sum_{n=0}^\infty f_n x^n\right) \cdot \left(\sum_{n=0}^\infty g_n x^n\right) = \sum_{k=0}^\infty h_n x^n$$

where $\displaystyle h_{k}=\sum_{l=0}^{k}f_{l}g_{k-l}$.
