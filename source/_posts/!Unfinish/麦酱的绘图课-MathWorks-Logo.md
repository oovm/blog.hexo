---
title: 麦酱的美术课 - MathWorks Logo
copyright: true
abbrlink: dd5de9fe
date: 2018-03-09 14:48:27
tags:
  - Mathematica
  - Matlab
  - Logo
categories:
---

根据官网上的说法这是L型域二维拉普拉斯方程的数值解法种最大特征值对应的特征向量.

![](https://i.loli.net/2018/03/09/5aa2370e5f81d.png)

Emmmm, 好的我用人类语言解释一下

来, 我们想象一个膜, 然后弹一下, 其振动我们称之为波动方程

#### 暴力解方程

一般的话, 偏微分方程都是很难写出解析解的, 写出来也很烦啊, 所以一般就写数值解就够啦.

我们来暴力一发

```Mathematica
dom=RegionDifference[Rectangle[{-1,-1},{1,1}],Rectangle[{-1,0},{0,1}]];
{{val},{fun}}=NDEigensystem[{
    Laplacian[u[x,y],{x,y}],
	DirichletCondition[u[x,y]==0,True]},
    u,{x,y}\[Element]dom,1,
	Method->{
		"Eigensystem"->"Direct","VectorNormalization"->None,
		"Interpolation"->{"ExtrapolationHandler"->{(0&),"WarningMessage"->False}},
        "SpatialDiscretization"->{"FiniteElement","MeshOptions"->{"MaxCellMeasure"->0.01}}
    }
];
img1=Plot3D[fun[x,y],{x,-1,1},{y,-1,1},
	ViewPoint->{-2.4,-2.4,1.3},BoxRatios->{1, 1,0.8},
	Mesh->Full,PlotPoints->50,ColorFunction->Function[{x,y,z},Hue[z]]
]
Export["membrane_1.png",img1,Background->None];
```

$$\begin{aligned}
&u(t,x,y) = \sin\left(\sqrt{y}t\right) v(x,y)\\
&\mathrm{where}\ \frac{\partial^2 v}{\partial x^2} + \frac{\partial^2 v}{\partial y^2} + \lambda v = 0
\end{aligned}$$

![](https://i.loli.net/2018/03/09/5aa2370e712fa.png)

#### 魔法解方程

唉? 好像不对劲啊, 好像只要钉住三个点好了...

我们可以显式的求解这个方程

$$v(r,\theta) = \sum c_j J\left(\alpha_j, \sqrt{\lambda} r\right) \sin(\alpha_j \theta)$$

```mathematica
membrane[x_,y_,list_:{1,4/3,15/4,2}]:=Block[
	{a,b,\[Lambda],\[Mu]},
	{a,b,\[Lambda],\[Mu]}=list;
	Boole[x>0||y>0](
        a BesselJ[2/3,\[Lambda] Sqrt[x^2+y^2]] Sin[2/3 (Arg[y-I x]+\[Pi])]+ 
        b BesselJ[2/3,\[Mu] Sqrt[x^2+y^2]] Sin[2/3 (Arg[y-I x]+\[Pi])]
	)
]
```

#### 魔法调参

这个膜可以绷得很紧, 也有可能膜很松而且拉伸性很好, 或者边界订的很死什么的...

这些都可以通过参数来体现, 但这种参数到底是多少只能靠魔法调参啦...

![](https://i.loli.net/2018/03/09/5aa2370fc5621.gif)

嗯, 这个样子大概八九不离十吧...

#### 魔法开光

好的先把光, 框架什么都关了, 我们来重新开光!

```
img2=Plot3D[membrane[x,y],{x,-1,1},{y,-1,1},
    Axes->None,Boxed->False,Mesh->None,
    BoxRatios->{1,1,0.9},Exclusions->None,
    ViewPoint->{2.4,-2.4,1.3},Lighting->None
]
Export["membrane_3.png",img2,Background->None]
```
![](https://i.loli.net/2018/03/09/5aa2370e365ec.png)

麦酱说, 要有光!

`{"Point", Yellow, {2.4, 2.4, 1.3}}`

![](https://i.loli.net/2018/03/09/5aa2370e385f5.png)

谔谔, 左边补一束光

`{"Point", RGBColor[0.8, 0.8, 0], {.5, -1, 4}}`

![](https://i.loli.net/2018/03/09/5aa2370f958b8.png)

#### 魔法磨光

谔谔, 有点像香蕉皮... 需要磨光, 磨得闪闪发光...

好的, 那么黄金为什么这么闪呢? 

还真不是反射率高, 事实上很大程度上是因为表面的漫反射, 所以只要提高漫反射率就行了.

```
gif2:=Plot3D[membrane[x,y],{x,-1,1},{y,-1,1},
	Axes->None,Boxed->False,
	BoxRatios->{1,1,0.9},Mesh->None,
	Exclusions->None,
	Lighting->{
		{"Point",Yellow,{2.4,2.4,1.3}},
		{"Point",RGBColor[0.8,0.8,0],{.5,-1,4}}
	},Background->Black,
	PlotStyle->{Specularity[White,#]},
	ViewPoint->{2.4,-2.4,1.3}]&;
gif2[20]
Export["membrane_6.gif",
    gif2/@Join[Range[0,20,1/2],ConstantArray[20,20]],
    "Interlaced"->True, "AnimationRepetitions"->Infinity
];
```

![](https://i.loli.net/2018/03/09/5aa237187cfc7.gif)

别的不说, 这色泽真的有点像黄金...

#### 魔法配色

接下来魔法配色!

```
trans[{RGBColor[a__],RGBColor[b__]}]:=Subdivide[{a},{b},30];
colors=Partition[Join[RandomColor[5],ConstantArray[RGBColor[0.9,0.2,0.2],2]],2,1];
tcs=RGBColor/@Flatten[trans/@colors,1]
gif3:=Plot3D[membrane[x,y],{x,-1,1},{y,-1,1},
	Axes->None,Background->Black,Boxed->False,
	BoxRatios->{1,1,0.9},Mesh->None,
	Exclusions->None,
	Lighting->{
		{"Point",Yellow,{2.4,2.4,1.3}},
		{"Point",RGBColor[0.8,0.8,0],{.5,-1,4}}
	},
	PlotStyle->{#,Specularity[White,20]},
	ViewPoint->{2.4,-2.4,1.3}]&
Export["membrane_7.gif",gif3/@tcs, "AnimationRepetitions"->Infinity];
```


![](https://i.loli.net/2018/03/09/5aa237171293c.gif)

看上去差不多啦(并不)...

有点坑坑洼洼, 不太光滑的样子. 这个简单, 采样开高点, 上抗锯齿就大功告成啦...

![](https://i.loli.net/2018/03/09/5aa2370f95850.png)

比较麻烦的是左边的光打得不够好, 不知应该是什么角度什么颜色, 好像弄不出那种深沉的感觉...
