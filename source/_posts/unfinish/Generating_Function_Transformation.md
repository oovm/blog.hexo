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


### Faá di Bruno 复合


$$\widehat {H}(z):=\widehat {F}(\widehat {G}(z))=\sum_{n=0}^{\infty }{\frac {h_n}{n!}}z^n$$

where: $\displaystyle h_n=\sum_{1\leq k\leq n}f_k\cdot B_{n,k}(g_1,g_2,\cdots,g_{n-k+1})+f_0\cdot\delta_{n,0}$

### 取自幂

$$ F(z)^{m}=f_{0}^{m}+\sum_{n\geq 1}\left(\sum_{1\leq k\leq n}(m)_{k}f_{0}^{m-k}B_{n,k}(f_{1}\cdot 1!,f_{2}\cdot 2!,\ldots )\right){\frac {z^{n}}{n!}}$$

### 取对数

$$\log F(z)=\sum_{n\geq 1}\left(\sum_{1\leq k\leq n}(-1)^{k-1}(k-1)!B_{n,k}(f_{1}\cdot 1!,f_{2}\cdot 2!,\ldots )\right){\frac {z^{n}}{n!}}$$
