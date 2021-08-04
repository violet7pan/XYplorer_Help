---
title: XYplorer-脚本(Scripting)
tags: [XYplorer]
created: 2021-03-09 15:31:19
---


# [Pin]<span id="scripts">关于XYplorer Scripting的一些事</span>

## XYplorer Scripting简介

Script = 脚本文件(以.xys为后缀的文件)

Scripting = 脚本编写 + 运行该脚本内容

## 快速入门

官网[XYplorer - Tour - Scripting](https://www.xyplorer.com/tour.php?page=scripting)给出一份快速入门（英语版），介绍了Scripting可以用来干什么，如何编写和测试，以及一些简单的测试实例。

当然，初入使用XY的朋友们，你们不喜欢Scripting，可以先看下[XYplorer Native Variables]部分，因为这一部分在这份Markdown中会经常用到。

如果对Scripting感兴趣，可以看下本Markdown的[XYplorer Native Variables]部分，并且参考 {% post_link XYplorer/XYplorer-ScriptingNote XYplorer Scripting笔记 %} 进行快速入门。

## 用什么语言开发的？

XY使用`Visual Basic 6`开发的，并且编译为本地代码(Native code)，以获取更快的运行速度[[?](https://www.xyplorer.com/xyfc/viewtopic.php?t=6350)]。

`XYplorer Script`用什么程序语言写成的，我们不得而知，不过Script借用了许多来自php特性(比如字符串的连接可以<code>.</code>来完成)。

## 完善的教程其实在帮助文档中

就像我们学习新的语言一样，它应该有规则和例子供beginner来学习。

具体用法和示例在`XYplorer.chm->Content选项卡->Advanced Topics`中的<span style="color:red">**Scripting**</span>和<span style="color:red">**Scripting Commands**</span>的部分。如何寻找这部分呢？在XYplorer菜单栏`Help->Cotents and Index(F1)`中，其中<kbd>F1</kbd>调用的是XYplorer目录下的`XYplorer.chm`(若无，可以在本GitHub Page中下载)，或者`Help->Help on Scripting Commands`切出帮助文档。

在确保已经下载Xyplorer.chm，并将其放置于XY目录下，在地址栏输入以下内容也可以进入<span style="color:red">**Scripting**</span>部分：

```
rtfm "idh_scripting.htm";
```

地址栏输入如下内容，进入<span style="color:red">**Scripting Commands**</span>部分：

```
rtfm "idh_scripting_comref.htm";
```

## [Everybody]XY内置变量(XYplorer Native Variables)

作为XY Scripting,这一部分会经常用到，即使不学Scripting也建议看完，挺简单的。

下面是`XYplorer Native  Variables`的部分实例：

设当前XY目录位于<code>C:\PortableApps\XYplorer</code>;设当前目录位于<code>F:\PictureLib</code>

目录结构如下，

```
C:\PortableApps\XYplorer>tree
Folder PATH listing for volume OS
Volume serial number is 080B-2E29
C:.
└─Data
    ├─AutoBackup
    ├─Catalogs
    ├─FindTemplates
    ├─Icons
    ├─NewItems
    │  └─New folder
    ├─Panes
    │  ├─1
    │  │  └─t
    │  └─2
    │      └─t
    ├─Paper
    ├─Scripts
    │  └─Everything
    ├─Temp
    └─Thumbnails
```

在地址栏分别输入<code>::msg \<xypath\></code>、<code>::msg \<xydata\></code>、<code>::msg \<xyicons\></code>、<code>::msg \<xyscripts\></code>、<code>::msg \<xypaper\></code>、<code>::msg \<xycatalogs\></code>、<code>::msg \<xynewitems\></code>、、<code>::msg \<curpath\></code>，结论如下，

```
<xypath> = C:\PortableApps\XYplorer
<xydata> = C:\PortableApps\XYplorer\Data
<xyicons> = C:\PortableApps\XYplorer\Data\Icons
<xyscripts> = C:\PortableApps\XYplorer\Data\Scripts
<xypaper> = C:\PortableApps\XYplorer\Data\Paper
<xycatalogs> = C:\PortableApps\XYplorer\Data\Catalogs
<xynewitems> = C:\PortableApps\XYplorer\Data\NewItems
<curpath> = F:\PictureLib
```

<code>::msg \<curname\></code>的输出需要选中一个文件，比如鼠标选中<code>F:\PictureLib\a.png</code>，那么输出

```
F:\PictureLib\a.png
```

什么都不选中，则输出空白（即什么都没有）。

更多XYplorer Native  Variables介绍，请参考`XYplorer.chm->左上方Inbox->输入XYplorer Native  Variables`。或者XY地址栏输入：

```
rtfm "idh_variables.htm";
```



# Scripting帮助

当你需要深入了解Scripting时，XYplorer-ScriptingNote.md会为你提供一点帮助。

