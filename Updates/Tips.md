



# 事先说明

在介绍过程中，所有技巧均按**XYplorer英文版**进行说明，中文版的用户请自行对照。因为*许多参考和官网文档都是英文的*，我翻译过来还要用中文来写每个界面的按钮，太麻烦了也不利于深度使用。

第一，本文阅读最好连同Updates目录一起下载到本地，使用Typora进行阅读，阅读时打开“大纲”功能，**选择你需要的章节阅读**。

友情提示：下载速度慢的可以去下载一个Tampermonkey插件——[Github 增强 - 高速下载](https://greasyfork.org/en/scripts/412245-github-%E5%A2%9E%E5%BC%BA-%E9%AB%98%E9%80%9F%E4%B8%8B%E8%BD%BD)，安装后不管是clone还是下载zip都可以选择分流节点。


第二，更新频率和内容。不定期更新，也可能不更新。同时更新的内容大多都是个人长期使用过程中遇到的问题和需求。

第三，提问和解惑。可以Google或者参考官方帮助文档，按<kbd>F1</kbd>呼出，若无法呼出，请下载`XYplorer.chm`。

提问的魔法进修课:point_right:[Stop-Ask-Questions-The-Stupid-Ways](https://github.com/dogfight360/Stop-Ask-Questions-The-Stupid-Ways/blob/master/README.md)。

第四，本文参考来源主要包括Google搜索、XYplorer Beta Club、官网帮助文档。

有时，为了书写方便，我会把XYplorer简称为XY。

第五，所有的图片都保存在Image文件夹，不上载到图传是因为鬼知道哪天图片服务器和存储器会不会突然坏掉。

# <em>20191011 </em>

# 使用过程中出现崩溃的原因和解决方法

出现崩溃现象效果如下图

![](Image/Crack.jpg)

会出现一个Coffee的俯视图。

原因就两种，具体看图片红字描述。



减少或避免出现崩溃的方法

* 选中非最后一个标签页，然后新建标签页
* 尽量少用`设置(Configuration(F9))`按钮，如果要用，记得在File -> Save Setting，否则会丢失本次打开的使用记录。



# <em>20200311 ~ Now</em>

# [Pin]<span id="scripts">关于XYplorer Scripting的一些事</span>

## XYplorer Scripting简介

XYplorer Scripting说白了就是用于XY的脚本文件。

### 快速入门

官网[XYplorer - Tour - Scripting](https://www.xyplorer.com/tour.php?page=scripting)给出一份快速入门（英语版），介绍了Scripting可以用来干什么，如何编写和测试，以及一些简单的测试实例。

当然，初入使用XY的朋友们，你们不喜欢Scripting，可以先看下[XYplorer Native Variables]部分，因为这一部分在这份Markdown中会经常用到。

### 用什么语言开发的？

XY使用`Visual Basic 6`开发的，并且编译为本地代码(Native code)，以获取更快的运行速度[[?](https://www.xyplorer.com/xyfc/viewtopic.php?t=6350)]。

`XYplorer Script`用什么程序语言写成的，我们不得而知，不过Script借用了许多来自php特性(比如字符串的连接可以<code>.</code>来完成)。

### 完善的教程其实在帮助文档中

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

## [Everybody]XYplorer Native Variables

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



---

## 脚本资源

Binocular222's all scripts - XYplorer Beta Club
https://www.xyplorer.com/xyfc/viewtopic.php?f=7&t=9243#p82488



# 标识符集 | Tags

## 弄清楚Label,Tag,Comment区别

这里要介绍Tags，那么就有必要先说明下关于菜单栏Tags(标签)在英文XY界面菜单栏与中文XY界面的翻译。对应语义如下：

```c
Tags	//标签
Tag		//标签
Label	//标注
Comment	//备注
```

其实这个翻译真心容易混淆，还不如英文Label, Tag, Comment来得清晰。

Oxford Advanced Learner's Dict给出的释义：

> Tag 
>
> [C] (computing 计) **a set of letters or symbols** that are put before and after a piece of text or data in order to **identify** it or show that it is to be treated in a particular way

可见Tag中包含标识的意义。

我认为菜单栏Tags应该翻译为标识符集，即"a set of tags"的意思。

至于Label与Tag最大的区别在于是否有胶粘剂，Label是带粘合剂的标签，比如我买回来的固态硬盘中，有一个白色标签(Label)：

![Tags-Label](Image/Tags-Label.png)

而Tag对应的例子是你买回来一件衣服，衣服上的价格标签就是Tag。因为Tag没有粘合剂，它是以其他形式附上物品上以辨识和解释物品。很明显，价格标签是通过一串线系上衣服上的，并没有粘合剂。

这样就区分出了Tag和Label，所以你会可以看出XY中Label是色彩标签且粘在文件(Item)上，而Tag是附在文件上的说明，具体表现为Column Tag：

![Tags-LabelAndTag](Image/Tags-LabelAndTag.png)

至于Comment就更简单了，就是对文件的评论，解释。

## 开启Label,Tag,Comment列

-先备份当前列到\<xydata\>\Columns目录下。

![ColumnLayout-Save-1](Image/ColumnLayout-Save-1.png)

![ColumnLayout-Save-2](Image/ColumnLayout-Save-2.png)

由于我有四列，**请按照列表顺序命名，方便区分和加载**，由此我的命名为Modified-Ext-Size-Created.txt。

-添加新列Label, Tag, Comment

![CustomColumn-Add-1](Image/CustomColumn-Add-1.png)

命名为Modified-Ext-Size-Created-Label-Tags-Comment.txt保存到\<xydata\>\Columns目录。

-加载布局Layout，按需加载布局。

## 简易版按Tag搜索

比如Anime-冰菓文件夹有一个“推理日漫”的Tag，我想要搜索这个标签，该如何做：

![CurpathSearchByTags.xys](Image/CurpathSearchByTags.xys.gif)

具体的Script名为`CurpathSearchByTags.xys`，我会放到Scripts文件夹中。在这里给出脚本内容：(注意前面都有一个<kbd>Tab</kbd>)

```
	$input="*".input("Search Items By Tags on the current path", “请输入Tags关键字”)."*"; 
	goto "<curpath>?tags:"$input" /r";
```

关于怎么安装这个Script，请参考[用户自定义命名的使用](#user-defined_commands)中的设置快捷键调用Notepad的部分的设置方法。

![Script-CurpathSearchByTags](Image/Script-CurpathSearchByTags.png)

----

### 使用

脚本启动后，支持如下输入：(给出常用的匹配逻辑AND, OR)

```
*o*	//匹配包含o的Tag
xy* | pro*		//匹配以xy开头 OR pro开头的Tag
d*,u*		//匹配d开头 AND u开头的Tag
```

效果如下

![Script-CurpathSearchByTags-2](Image/Script-CurpathSearchByTags-2.png)

可以看到使用通配符`*`和`?`是十分必要的。若不使用通配符，比如输入apple,那么匹配Tag就必须是apple，如果有个Tag是apple2，那么也不会被匹配到。



### 参考

脚本参考：[Function ID for 'Find by Tags'? - XYplorer Beta Club](https://www.xyplorer.com/xyfc/viewtopic.php?t=8670)

地址栏如下内容以参考更多帮助：

```c
rtfm "idh_find.htm#idh_findfilesbytags";	//"Wildcards in Tags" section.
```



----



# 自定义列 | Custom Column

## 基本术语

### 什么是Column Layout?

![ColumnLayout-1](Image/ColumnLayout-1.png)

所以文件统称为项目(Item)。

XY界面的布局是什么意思？布局就是各种组件的位置摆放以及是否摆放。组件有状态栏，树，目录，自定义列等等。

每个文件夹中所有items都有自己的列，这个列表取决于你如何设置Column Layout的参数。

### 什么是Column, Custom Column, Extra Column?

![Column-Term-1](Image/Column-Term-1.png)





## 设置列布局 | Column Layout

### 添加列的方法

![Column-AddColumn-1](Image/Column-AddColumn-1.png)

### 列属性的类型

一个列中可以载入三种类型的属性：Property, Special Property, Custom Column

![Column-AddColumn-2](Image/Column-AddColumn-2.png)

对于Custom Column可以配置它的载入属性还多出了三种：Script, Template, Mixed:

![Column-Type-1](Image/Column-Type-1.png)

### 定制自定义列

参考[Overview of custom column snippets / scripts - XYplorer Beta Club](https://www.xyplorer.com/xyfc/viewtopic.php?f=7&t=18653)


#### [案例1]Image size in inches

1. 地址栏输入`::snippet`

2. 在提示框中输入

   ```
   Snip: CustomColumn 1
     XYplorer 18.90.0000, 22.03.2018 12:28:38
   Action
     ConfigureColumn
   Caption
     Size (inches)
   Type
     3
   Definition
         $dpi = get("Screen", "dpi");
         $hSize = property('System.Image.HorizontalSize', <cc_item>);
         $vSize = property('System.Image.VerticalSize', <cc_item>);
         if (!$hSize || !$vSize) { return "<unknown size>"; }
         return round(($hSize / $dpi), 2) . " x " . round(($vSize / $dpi), 2);
   Format
     1
   Trigger
     1
   Item Type
     0
   Item Filter
     {:Image}
   
   ```

3. 这样就添加了名为Size (inches)的自定义列了，效果图如下

   ![CustomColumn-Customize-1](Image/CustomColumn-Customize-1.png)

   ![CustomColumn-Customize-2](Image/CustomColumn-Customize-2.png)

4. 添加自定义列

   ![CustomColumn-AddColumn-1](Image/CustomColumn-AddColumn-1.png)

   

   ![CustomColumn-AddColumn-3](Image/CustomColumn-AddColumn-3.png)

   ![CustomColumn-AddColumn-4](Image/CustomColumn-AddColumn-4.png)

   这样就添加好了。

   ![CustomColumn-AddColumn-5](Image/CustomColumn-AddColumn-5.png)

   

#### [案例2]Resolution

地址栏输入`::snippet`，在提示框中输入如下内容

```
Snip: CustomColumn 1
  XYplorer 18.90.0000, 22.03.2018 12:28:38
Action
  ConfigureColumn
Caption
  DPI
Type
  3
Definition
      $hSize = property('System.Image.HorizontalSize', <cc_item>);
      $vSize = property('System.Image.VerticalSize', <cc_item>);
      if (!$hSize || !$vSize) { return "<unknown size>"; }
      return $hSize." x " .$vSize;
Format
  1
Trigger
  1
Item Type
  0
Item Filter
  {:Image}

```

按照[Image size in inches]的方法添加DPI列到列布局中。

![CustomColumn-AddColumn-DPI](Image/CustomColumn-AddColumn-DPI.png)

## 文件数量过多时Column加载卡顿的解决方法

文件数量过多会卡，这是XY应该背的锅吗，我认为责任应该对半分，因为这些文件要使用Shell Properties读取属性，然后将这些属性显示到Custom Column中，那么从软件层次考虑，速度取决于读取属性的速度(Windows侧)和载入到Custom Column(XY侧)的速度，XY侧再深入点讲，也要考虑到使用Script中涉及遍历的情况。可能会有人说，干吗不用到缓存技术，其实我也在想为什么不用到缓存技术呢，并不是XY没有使用到这一技术，只不过XY没有运用缓存技术到部分Custom Column上。因此，许多自定义列会卡的原因就在这里，也就是你打开文件夹，XY就开始扫描并载入属性到文件列这个过程卡，这取决你的文件数量。当然，我们可以利用Extra Tag进行模拟缓存（在下面会讲到），也或者改变载入自定义列的触发方式。

### 方法一:改变载入Custom Column的触发方式

-进入Custom Column配置界面。有两种方法

方法一。如下图所示，

![CustomColumn-Edit-1](Image/CustomColumn-Edit-1.png)

方法二。F9呼出设置界面，按如下图所示进行操作，

![CustomColumn-Edit-Trigger-1](Image/CustomColumn-Edit-Trigger-1.png)

主要改变的是Trigger参数，这里有三个，各有优缺点，其中List和Click都可以避免大量文件时的卡顿。

关于Click的运用场景就是：

添加一个关键字包含"MD5"的Custom Column，而不是Column，然后配置其触发方式为Click，然后再需要使用的时候点击MD5对应的Custom Column，读取MD5

![CustomColumn-Add-MD5-1](Image/CustomColumn-Add-MD5-1.png)

Trigger参数介绍

地址栏输入：

```c
rtfm "idh_customcolumns.htm";		//进入后，找到Trigger黑体字标题部分
```

可找到对应的英文解释，在这里给出：

> Trigger
>
> Here you can select at which point the  script or process that generates the cell data is actually triggered. You have  three choices:
>
> - **Browse** [Default]: Column is triggered when the list is filled with  folder contents or search results.
> - **List**:  Column is triggered when the items are listed. Only the currently visible items  are processed. This option will be much faster than "Browse" on long lists, but  the scrolling will be not as smooth.
> - **Click**: Column is triggered when the symbol that is shown as a  placeholder is clicked (actually you can click anywhere in the cell). Maximum  speed, also when scrolling. All data are only shown on demand.
>
> Notes:
>
> - When you right-click a column header and select Refresh  Column then the whole column data will be generated/refreshed.
> - Columns of type "Mixed" inherit the trigger per-cell from  the chosen sub-column.
> - When Custom Columns of type Script are triggered by Click  and the script has no "return" command then the click symbol remains in the list  and can be clicked again and again.

### 利用Extra Column手动模拟缓存

下面模拟对所有文件列表加载DPI属性，效果如下，

![CustomColumn-UseExtraColumn-1](Image/CustomColumn-UseExtraColumn-1.gif)

这样做的好处是所有文件列需要DPI的属性都导入到Extra Column1中了，这样持久化的数据就避免了大量使用Shell Properties加载。

该脚本的功能是扫描当前文件夹的图片，若有子文件是不会去遍历的。该脚本一旦开始，无法结束，也就是你只能等待脚本执行结束，否则选择强制结束进程。这不是意味着脚本使XY卡住了，而是大量IO读写，能处理多快与磁盘性能有关，若扫描的文件处于磁盘坏道或扇区上，会造成卡死。

如果你一个文件夹有上万个图片，老实说我也不知道执行得有多慢。

```
	sel 1;
	while (<curitem> != "") {
		// msg <curitem>;
		$dims = property("#image.dimensions", <cc_item>);
		$width = gettoken($dims, 1, " x ");
		$height = gettoken($dims, 2, " x ");
		tag $width." x ".$height, <curitem>, "ex1";
		sel + 1;
	}
```

脚本已经贴出。

添加到目录栏的方法是添加一个项目<kbd>Insert</kbd>到目录，其中Location填写如下内容

```
::load <xyscripts>."\名称.xys";	//脚本文件请放在XY/Data/Scripts文件夹
```



Extra Column的命名通过以下方式实现，

![CustomColumn-UseExtraColumn-2](Image/CustomColumn-UseExtraColumn-2.png)

#### 参考

video folder with special custom columns opens slow - XYplorer Beta Club
https://www.xyplorer.com/xyfc/viewtopic.php?t=18715

Slow Loading of Large Folders - XYplorer Beta Club
https://www.xyplorer.com/xyfc/viewtopic.php?t=19296

Folders with a lot of files charge very slow - XYplorer Beta Club
https://www.xyplorer.com/xyfc/viewtopic.php?f=3&t=19090&p=160050#p160050

地址栏输入可阅读涉及主题的参考：

```c
rtfm "idh_customcolumns.htm#idh_ccscriptedcolumns";		// Scripted Columns
rtfm "idh_scripting_comref.htm#idh_sc_property";		// property()
rtfm "idh_variables.htm";		// XYplorer Native Variables
http://msdn.microsoft.com/en-us/library/windows/desktop/dd561977%28v=vs.85%29.aspx		// the locale-independent Windows canonical properties
```





## 保存和加载Column Layout

为了定制自定义列用于显示不同类型的文件，比如视频文件的自定义列有播放时间，分辨率，Codecs等等；音频文件需要的自定义列有Codecs，播放时间，Sample Rate等等；图片文件需要自定义列有DPI，Album，照相机类型，拍摄时间等等。由此定制自定义列显得必要，我们需要保存自定义列，在需要的时候进行加载。

-保存Column Layout

![ColumnLayout-Save-1](Image/ColumnLayout-Save-1.png)

![ColumnLayout-Save-2](Image/ColumnLayout-Save-2.png)

Column Layout的文件命名应该符合以下的格式，才会清晰便于确定列的顺序：

```
第1列名-第2列名-...-第N列明.txt
```



-加载Column Layout

在自定义列空白处右键->Load Column Layout...->选择想要的列布局。



## 自定义列布局应用到特定文件夹

假设你有StudyLib, PictureLib, Pothole, VideoLib这几个文件夹，分别装着同类的文件。如果你想让每个文件夹及其子文件都按需显示不同的自定义列，那么你就需要分别对StudyLib, PictureLib, Pothole, VideoLib的文件夹视图设置中勾选`Cloumn layout`，并且勾选`Include subfolders`：

![CustomColumn-FolderViewSettings](Image/CustomColumn-FolderViewSettings.png)

`Folder to apply the settings to`的匹配规则：

```c
F:\StudyLib	//匹配在F盘的StudyLib文件夹
*\Images*	//匹配所有名为Images(不区分大小写)的文件夹
*\Images*|*\Pics*	//匹配所有名为Images(不区分大小写)和Pics(不区分大小写)的文件夹
```

`Match case`: 勾选后，匹配时会区分文件大小写，比如\*\\Images\*不会匹配名为images的文件夹。

这个地方我没法讲台细，等我用到就会补上一个具体案例，如果要讲解我会新起一个一级标题来讲"文件夹视图设置"。



# 文件夹图标 | File Icons

## 配置方法

![FileIcon-1](Image/FileIcon-1.png)

File Icons的配置在`XYplorer.ini`中：以下内容就摘自此文件

```ini
[FileIcons]
Count=17
1=+readme.*>Papirus-Team-Papirus-Mimetypes-Text-x-readme.ico
2={:Image}>Papirus-Team-Papirus-Mimetypes-Image-x-generic.ico
3=+xys>Papirus-Team-Papirus-Mimetypes-Text-x-script.ico
4=+sql>Papirus-Team-Papirus-Mimetypes-App-x-sqlite-2.ico
5=+h>Papirus-Team-Papirus-Mimetypes-Text-x-chdr.ico
6=+readme.txt>Papirus-Team-Papirus-Mimetypes-Text-x-readme.ico
7=+c>Papirus-Team-Papirus-Mimetypes-Text-x-csrc.ico
8=+txt>Note Pad.ico
9=+md>Text Editor Typora.ico
10=+hex>Papirus-Team-Papirus-Mimetypes-Text-x-hex.ico
11=py>Python.ico
12=+java>Papirus-Team-Papirus-Mimetypes-Text-x-java.ico
13=+log>Papirus-Team-Papirus-Mimetypes-Text-x-log.ico
14=+cpp>Papirus-Team-Papirus-Mimetypes-Text-x-c-plus-plus-src.ico
15=+css>Papirus-Team-Papirus-Mimetypes-Text-css.ico
16=+py>Papirus-Team-Papirus-Mimetypes-Text-x-python.ico
17=+makefile>Papirus-Team-Papirus-Mimetypes-Text-x-makefile.ico
```

效果大概就是这样子的：

![FileIcon-2](Image/FileIcon-2.png)

使用基本语法：

```x
匹配规则>图标路径
```

比如，

```
txt;ini;xml>xxx.ico //图标位于<xyicons>/xxx.ico。匹配文件格式是.txt, .ini, .xml
```

从帮助文档(F1)摘出来的：

```
%computer%    matches the Computer special folder
%desktop%     matches the Desktop special folder
%personal%    matches the Personal special folder
%user%        matches the User special folder
%net%         matches the Network special folder
%recycler%    matches the Recycle Bin special folder
E:\           matches drive E:\
E:\*\         matches all folders in E:\
E:\ /r        matches all folders in E:\ and E: itself
E:\Jobs\*\    matches all folders in E:\Jobs\
[F-L]:\*\     matches all folders on drives F-L
*\            matches all folders that have no specific icon
**\           same as above for the current tree folder
pics\         matches all folders named "pics"
E:\*          matches all files in E:\
pics\*        matches all files in folders named "pics"
pics*\*       matches all files in folders beginning with "pics"
*.jpg;*.png   matches all JPG and PNG files
*.fnd         matches all FND files and is used for Search Results
*.            matches all files with no extension 
*?            matches all files of unknown file type
*23*          matches all files containing "23" in the name
*2013*.txt    matches all TXT files containing "2013" in the name
readme.txt    matches all files named "readme.txt"
<xyicons>\*   matches all files in the default Icons folder
\\Wagner\     matches server "Wagner"
```

问：我的文件夹都已经自定义图标了，这个`File Icons`设置的图标会不会覆盖Window设置的图标呢？

答：符合条件的File Icons会替换Windows设置的图标的。不过可以加下参数保留Windows设置的图标。

在帮助文档中已经给出了答案：

![FileIcon-3](Image/FileIcon-3.png)

![FileIcon-4](Image/FileIcon-4.png)

## 图标资源

如何找到Icon资源呢？

| Caption          | Site                                                      |
| ---------------- | --------------------------------------------------------- |
| Icon Archive     | https://iconarchive.com/                                  |
| 我自己收集的到的 | https://pan.baidu.com/s/1q39yFrAQF1v8jTlzPba_fg<br />zdif |





# 如何找出需要的命令?

![ListAllCommands-1](Image/ListAllCommands-1.png)



# 按钮和用户自定义命令区别

工具栏上的都是按钮，这些按钮中，用户自定义的按钮(`User Button`)都是没办法分配快捷键的。

如果需要使用快捷键关联什么操作，那就需要使用用户自定义命令(User-Defined Commands)。

> Buttons are meant for the mouse. UDCs are meant for the keys.[[?](https://www.xyplorer.com/xyfc/viewtopic.php?t=14505)]



# 工具栏的使用 | Toolbar

## 工具栏的摆放和使用

一个合理的工具栏按钮摆放，可以提高使用效率。这是我的工具栏按钮摆放(2020/11/10)：

![ToolbarPArrangement-1](Image/ToolbarPArrangement-1.png)

我的电脑 | 前、后退、上一级、撤销等 | 收藏、添加Tags | 文件属性、打开方式、是否显示系统文件，隐藏文件 |  Visual过滤 | Pane | Color过滤器 | 设置 夜间模式 | View功能 | 用户按钮



## <span id="further_use_of_button">按钮的高级用法</span>

### <span id="explorer_button">[案例1]使用Windows文件管理器打开XYplorer当前路径</span>

-使用效果如下，

![](Image/Explorer-1.png)-具体方法如下，

1.提取图标。提取工具[IcoFX3(下载地址若失效，自行下载)](https://ghpym.lanzous.com/b00zelckd)[可选]

![IcoFx-1](Image/IcoFx-1.png)

![IcoFx-1](Image/IcoFx-2.png)

![IcoFx-1](Image/IcoFx-3.png)

2.添加按钮

![AddButton-1](Image/AddButton-1.png)

![AddButton-2](Image/AddButton-2.png)

![AddButton-3](Image/AddButton-3.png)

内容信息如下

``` 
Explorer
<xyicons>\Explorer.ico
run "C:\Windows\explorer.exe" <curpath>
```

这个脚本不完善，仅限打开当前目录。需要功能更全的Explorer脚本，可以使用[设置快捷键调用Explorer](#explorer_ks)的脚本。

`<xyicons>`介绍请参考[关于XYplorer Scripting的一些事](#scripts)

-END





### [案例2]CMD集成到按钮

XY官网已经把**Cmd的按钮集成到工具栏了**，并且提供了热键<kbd>Ctrl + Alt + P</kbd>。

你现在可以在自定义工具栏中的列表中找到它，

![Cmd-2](Image/Cmd-2.png)

不过下面我还是给出用户自定义Cmd按钮的方法。

![Cmd-1](Image/Cmd-1.png)

按钮信息如下，

```
Cmd as Admin
<xyicons>\Cmd.ico

$comspec = ("%osbitness%" == 64) ? "%windir%\System32\cmd.exe" : "%windir%\SysWOW64\cmd.exe";
    $cscript = ("%osbitness%" == 64) ? "%windir%\System32\cscript.exe" : "%windir%\SysWOW64\cscript.exe";

    $vbsFile = "%TEMP%\~OpenElevatedCMD.vbs";

    $vbsContent = <<<>>>
        Set UAC = CreateObject("Shell.Application")
        UAC.ShellExecute "$comspec", "/k pushd ""<curpath>""", "", "runas", 1
>>>;

    writefile($vbsFile, trim($vbsContent));

    if (get("trigger") == "1") { // Left click -> Admin
        run """$cscript"" ""$vbsFile"" //nologo", , 0, 0;
    } elseif (get("trigger") == "2") { // Right click -> No admin
        run """$comspec"" /k pushd ""<curpath>""";
    }
```

按钮的添加方法在“按钮的高级用法”[[?](#further_use_of_button)]部分有讲到。

使用评价：

这个cmd其实也不是很好用，也没有快捷键可以调用按钮，再加上XY官网已经集成了Cmd按钮。下面还是会给出一些替代方案。

Alternative Solution 1(比较笨(～￣(OO)￣)ブ):  偶尔我还是会<kbd>Win + R</kbd>来启动cmd，进入cmd，切换盘符（比如<code>f:</code><kbd>Enter</kbd>)，然后在XYplorer某个目录下<kbd>Alt + D</kbd> <kbd>Ctrl + C</kbd>复制路径回到cmd粘贴。

Alternative Solution 2(我未测试过): 你也可以先把cmd集成到Windows右键的Context中，然后[将windows右键菜单添加到XYplorer](https://zhuanlan.zhihu.com/p/70331585)，XYplorer中使用Windows右键ContextMenu调用cmd。我不想折腾了，要命了。

Alternative Solution 3(推荐): 你完全可以使用XYplorer集成的Windows文件管理器按钮打开Explorer.exe[[?](#explorer_button)]，使用Windows自带的文件管理器空白处右键运行cmd[[?](https://www.cnblogs.com/dream4567/p/10693588.html)]。



---

# <span id="user-defined_commands">用户自定义命令的使用 | User-Defined Commands</span>

## 设置快捷键调用Notepad

创建`OpenWithNotepad.xys`存放在XYplorer/Data/Scripts目录下，内容如下，

```
	if (<curitem> != "" && filetype(<curitem>) != "Nofile") {
		run notepad "<curitem>";
	}
```

添加命令方法：`User->Manage Commands...->Category:Load Script File->New-Add New Command`填写Caption和Script File

`Assign Keyboard Shortcut... `，我设置的<kbd>Alt + 3</kbd>。

![UserDefinedCommands-2](Image/UserDefinedCommands-2.png)

```
Caption:Open With Notepad
Scripts Files:<xyscripts>\OpenWithNotepad.xys
```

使用方法：选中文件，<kbd>Alt + 3</kbd>速度调用`notepad`打开文本。

## <span id="explorer_ks">设置快捷键调用Explorer</span>

设置方法同上，创建`OpenWithExplorer.xys`存放在XYplorer/Data/Scripts目录下，内容如下，

```
	if (<curitem> == "") {
		run "C:\Windows\explorer.exe" <curpath>
	} else {
		if (filetype(<curitem>) == "Nofile") {	//选中的是目录
		run "C:\Windows\explorer.exe" <curitem>
	}
		else {	
			run "C:\Windows\explorer.exe" <curpath>
		}
	}
```

我分配的快捷键是<kbd>Ctrl + Alt + E</kbd>

```
Caption:Open With Explorer
Scripts Files:<xyscripts>\OpenWithExplorer.xys
```



## 在XYplorer中使用QuickLook

[QuickLook](https://github.com/QL-Win/QuickLook)  [(此处下载)](https://github.com/QL-Win/QuickLook/releases)

-具体方法如下，

1.在`你的XYplorer目录\Data\Scripts`下在创建一个`.xys`脚本文件，命名为`Run QuickLook.xys`，内容如下

```
run "你的QuickLook目录\QuickLook.exe" "<curitem>";
```

2.然后，按下图完成设置，

![](Image/QuickLook-1.png)

我这里分配的按键<kbd>Alt+1</kbd>

Script File内容如下

```
<xyscripts>\Run QuickLook.xys
```

3.最后，请关闭语法检查，具体方法如下，

![](Image/QuickLook-2.png)

若未关闭语法检查，使用QuickLook配合快捷键会出现这样的错误，

![](Image/QuickLook-3.png)

4.方法介绍完了，使用时，先选中要预览的文件，然后<kbd>Alt+1</kbd>即可。

-说明事项：

XYplorer中使用QuickLook，是否可以使用空格键？

答：QuickLook在XYplorer使用中，不能使用<kbd>Spacebar</kbd>，因为它是被XYplorer保留[[?](https://www.xyplorer.com/xyfc/viewtopic.php?t=20326)]，因而你无法在XYplorer中使用它。

参考：https://github.com/QL-Win/QuickLook/issues/96





# 导航面板目录的使用 | Navigation Panels - Catalog

## 打开侧边栏

F8->Ctrl+F8即可打开。

![Catalog-1](Image/Catalog-1.png)

## 添加目录

Catalog栏是空白的，需要右键`Add New Category...`

![Catalog-2](Image/Catalog-2.png)

自定义名称

![Catalog-3](Image/Catalog-3.png)

确认右边栏就会变成这样

![Catalog-4](Image/Catalog-4.png)

## 添加项目

### 拖动式添加项目

如果你需要添加文件到目录上，那么就把文件拖到“你需要的名称”上。

比如我把一张图片(Catalog-4.png)拖到目录名上，就会出现如下内容，

![Catalog-5](Image/Catalog-5.png)

### 自定义式添加项目

#### 添加脚本

**选中目录名称**，然后右键`Add New Item Here...`(快捷键式<kbd>Insert</kbd>)，可以自定义你要添加的项目。比如刚刚添加的.png文件就是一个项目(Item)。

若我想要添加一个脚本呢？

以下脚本的功能是选中一个文件，然后鼠标左键轻点一下就会复制文件的路径，不过这个文件的路径是以正斜杆`/`分割路径部分的。比如，`D:/Work/GitWorks/XYplorer_Help/Updates/Image/Catalog-5.png`，而不是`D:\Work\GitWorks\XYplorer_Help\Updates\Image\Catalog-5.png`。这么做是为了避免要在字符串中转义反斜杠`\`。

脚本内容如下，

![Catalog-6](Image/Catalog-6.png)

Caption: `Copy Path With Forward-slash to Clipboard `

Location:

```
::if(<curitem>==""){copytext replace(<curpath>, "\", "/");} else{copytext replace(<curitem>, "\", "/");}
```

#### 添加纸文件夹

-先创建纸文件夹

从地址栏输入<code>\<xypaper\></code>，回车进入纸文件夹XYplorer\Data\Paper。

创建纸文件夹，纸文件夹以.txt结尾。我这里创建名为Test.txt。

-添加纸文件夹到目录

打开纸文件夹的语法格式:`paper:纸文件夹名`

![Catalog-7](Image/Catalog-7.png)

![Catalog-8](Image/Catalog-8.png)

-添加项目到纸文件夹

![Catalog-9](Image/Catalog-9.png)

![Catalog-10](Image/Catalog-10.png)

-请尽情探索纸文件夹

如果你打开\<xypaper\>/Test.txt，可以发现多处一行内容：

```
D:\Work\GitWorks\XYplorer_Help\Updates\Image\Catalog-8.png
```

纸文件夹不仅可以保存文件，还可以保存文件夹，纸文件夹主要用于存放同一个主题的素材。

## 目录数据的保存

-定位当前目录的数据文件

![Catalog-11](Image/Catalog-11.png)

-数据文件保存位置

地址栏输入<code>\<xycatalogs\></code>回车即可看到目录数据文件。丢失数据文件，那么目录栏就是空白的了，请保存好。



# 树的使用 | Tree

树的配置主要在`View`、`Tools->Customize Tree`、`Configuration(F9)->Tree and List`，少部分可以通过键入关键字"Tree"到`Configuration(F9)->左下角Jump to Setting`进行寻找、

菜单栏`Windows->Show Tree(Shift + F8)`，打开Tree记录功能。

`View->Mini Tree`：只显示选项卡(Tab)的路径的树，由于不需要显示无关目录的树，所以速度更快。

由于Tree会记录文件浏览历史，在退出XYplorer前，`View->Reset Tree(Ctrl + Shift + F4)`，如果路径历史过多，影响加载速度。

在Tree开启的情况下，每一次浏览目录，侧边的Tree都会追踪记录，所以你可以很容易看到当前目录和历史目录的层次结构。

`Tools->Customize Tree->Tree Path Tracking`：开启树追踪标记

![TreeUse-1](Image/TreeUse-1.png)

`View->Lock Tree`：开启后，记住（冻结为）上一次树结构的状态，接下来无论怎样浏览目录，树的追踪记录都看不到。开启期间，应该是不会有目录追踪记录的。当关闭后，恢复树的追踪记录功能，并更新为当前目录的树结构。使用建议：需要树功能，XYplorer运行卡的情况下可锁定。

我的使用方法：关闭Mini Tree，Reset Tree，Lock Tree。把Tree的侧边栏空间压缩，只保留很小的地方，如图

![TreeUse-1](Image/TreeUse-2.png)

之所以这样做，是因为我需要快速浏览C/D/E/F，对显示树结构的目录需求不是很大，并且在Tree侧边栏**右键**可以弹出**收藏夹列表**。

如果你需要使用树的功能，请一定要把XYplorer界面左右两侧拉长，如果不拉长，使用起来很没有体验。两侧拉长还有一个重要的理由：但你的文件夹视图是“详情视图”时，每一个文件的描述列：文件名、修改时间、创建时间、后缀名、文件夹大小等，想要把这些列的信息全，那么你就必须拉长。



# XYplorer的搜索问题及最佳搜索替换工具Everything | Search

## XYplorer的搜索

-XYplorer的搜索体现在四处

1.`Edit->Find Files(Ctrl +F)`

需要指定搜索目录，关键字。其他过滤条件可选。但搜索速度慢。

2.`Edit->Quick Search(F3)`

没什么用

3.Live Filter Box。

使用方式：`Window->Show Live Filter Box`。在地址栏最右侧可以看到，如图

![LiveFilterBox-1](Image/LiveFilterBox-1.png)

<kbd>Ctrl + Alt + X</kbd>进入，搜索关键字。

该功能用于当前目录下筛选文件（极其适合目录文件过量的情况下进行筛选）

假设我们需要筛选出<code>C:\Windows\SysWOW64\certcli.dll</code>，你只知道关键字"cert"，在Live Filter Box键入"cert"后，

![LiveFilterBox-2](Image/LiveFilterBox-2.png)

这是一次模拟筛选，该功能场景范围过窄但好用。

4.在当前目录输入目标文件的关键字母，可以快速选中匹配文件（Windows也有）

## Everything内容打开到XYplorer侧

`Options->General->Context Menu`，如图

![Everything-1](Image/Everything-1.png)

Explore:

```
$exec("你的XYplorer目录\XYplorer.exe" "%1")
```

Explore Path:

```
$exec("你的XYplorer目录\XYplorer.exe" /select="%1")
```

![Everything-2](Image/Everything-2.png)

Explore和Explorer Path的区别：前者打开这个文件；后者打开这个文件所在的父目录。

参考：[Everything and XYplorer - My Everything Integration Settings - XYplorer Beta Club](https://www.xyplorer.com/xyfc/viewtopic.php?t=20506)

这里有个以前用过目前弃用的Scripts的链接：[Everything for xyplorer - XYplorer Beta Club](https://www.xyplorer.com/xyfc/viewtopic.php?f=7&t=21480)。如果你感兴趣，可以尝试一下。

当然，纠结Scripts文件来调用`Everything's command-line ES`服务来搜索是没有必要的，复杂麻烦而且没直接使用Everything来得快。你可以跟我一样，添加一个Everything按钮，或者设置一个热键调用XY（请参考[XYplorer间接调用Everything](#invoke_everything)）。

## <span id="invoke_everything">XYplorer间接调用Everything</span>

仅在当前目录下搜索（搜索的目标包括当前目录和当前目录的所有子目录)，示意图如下，

![LimitedlySearchByEverything-1](Image/LimitedlySearchByEverything-1.gif)

具体显示步骤如下，

1.创建脚本文件。菜单栏`Scripting->Go to Scripts Folder`来到\<xyscripts\>的目录下，创建名为`EverythingCurpathSearch.xys`脚本文件，内容如下，记得修改everything目录

版本一[可选，推荐]

```
	$everything = "D:\PortableApps\Everything\everything.exe";		//填写everything.exe路径
	runret ("cmd /c ".$everything." -path "."""<curpath>""");
```

以上每行语句都有一个<kbd>Tab</kbd>哦。

版本二[可选]

版本二特别注意：<span style="color:red">**搜索的关键词首尾不能分别带有"。也就是没办法进行准确搜索**</span>。比如`"Common Files"`

```
	$everything = "D:\PortableApps\Everything\everything.exe";		//填写everything.exe路径
	$args = input("当前文件下搜索,请输入关键词:");
	runret ("cmd /c ".$everything." -path "."""<curpath>"""." -s "."""$args""");
```

2.绑定热键。菜单栏`User->Manage Commands...(Ctril + Alt + F9)`

![LimitedlySearchByEverything-2](Image/LimitedlySearchByEverything-2.png)

```
Cpation:CurpathSearch
Script Files:<xyscripts>/EverythingCurpathSearch.xys
```

这样就设置完成了。开始使用吧，在XYplorer当前Tab所在当前目录下按<kbd>Alt+2</kbd>，键入你想要搜索的key words，然后<kbd>Enter</kbd>即可。

Script编写思路：通过命令行调用everything，everything想要完成当前目录搜索，需要知道主程序的外部接口[[?](https://www.voidtools.com/support/everything/command_line_options/)]，需要获取当前目录和用户键入值。

Script中runret()可参考`XYplorer.chm`

![Scripting_command-runret-1](Image/Scripting_command-runret-1.png)

编写的脚本很简陋，其目的主要是为了打开Everything，并自动化地添加上当前目录。

如果有兴趣的同学们可以自行研究下XYplorer Script(See [关于XYplorer Scripting的一些事](#scripts))，熟悉流程控制语句和常用的Script Command就可以进行更高逻辑的功能实现了。

# XYplorer的备份和还原 | Backup & Restore Configuration

说到这个问题，我们先得了解下XYplorer的目录结构。

注："XYplorer的目录结构"部分费时费精力，但可以了解你经常使用功能的对应数据文件的作用。当然你也可跳到[备份什么文件才能保证数据不丢失并且换了新版也还继续用?](#backup)进行阅读。

## 文件夹结构 | Folder Hierarchy

-文件夹结构(Folder Structure)[可选读,可跳过]

以下给出的是Portable版(便携版)的目录结构，

```
D:\PortableApps\XYplorer\Data>DIR
 Volume in drive D is Work
 Volume Serial Number is 2CC0-7192

 Directory of D:\PortableApps\XYplorer\Data

11/05/2020  16:48    <DIR>          .
11/05/2020  16:48    <DIR>          ..
11/05/2020  16:35           146,086 action.dat
11/05/2020  16:31    <DIR>          AutoBackup
11/05/2020  16:31    <DIR>          Catalogs
04/10/2019  10:28           858,784 ChineseSimplified.lng
11/05/2020  16:20    <DIR>          FindTemplates
11/05/2020  16:35             2,758 fvs.dat
11/05/2020  16:31    <DIR>          Icons
11/05/2020  16:35             8,224 ks.dat
11/05/2020  16:31                26 Language.ini
11/05/2020  16:35                18 lastini.dat
11/05/2020  16:31    <DIR>          NewItems
11/05/2020  16:31    <DIR>          Panes
11/05/2020  16:31    <DIR>          Paper
11/05/2020  16:31    <DIR>          Scripts
11/05/2020  16:35               980 tag.dat
11/05/2020  16:20    <DIR>          Temp
11/05/2020  16:35               552 udc.dat
11/05/2020  16:35           129,166 XYplorer.ini
               9 File(s)      1,146,594 bytes
              11 Dir(s)  271,924,928,512 bytes free
```

XYplorer/Data目录下文件信息介绍，

```
action.dat	//撤销或重做历史记录
ChineseSimplified.lng	//中文语言文件
fvs.dat	//fvs:folder view settings. 该.dat保存文件夹视图设置信息
ks.dat	//ks:keyboard shortcuts. 该.dat保存键盘快捷键设置信息
Language.ini	//XYplorer读取并根据该配置文件信息决定选择使用哪个语言作为界面交互语言。
lastini.dat	//如果存在,则该.dat用于决定让XYplorer载入哪个.ini信息，该.dat保存的值为XYplorer,那么XYplorer就会载入XYplorer.ini
tag.dat	//该.dat保存标注(tags)信息,这个标注信息应该包括标签(Label),注释(Comment),标签(tag)信息。
udc.dat	//udc:user-defined commands. 该.dat保存用户自定义命令信息
XYplorer.ini	//保存配置信息，该配置文件不可随意覆盖，XYplorer会调用它，如果随便覆盖它可能会出现版本使用到期。
```

XYplorer/Data目录下文件夹信息介绍，

```
AutoBackup	/*开启自动备份设置后，里面会保存catalog,fvs,tag,udc的dat文件,但不保存ks.dat,还会保存XYplorer.ini.该文件这些数据信息文件会在触发"Saving Settings"进行更新。该目录的文件可迁移到全新的XYplorer时,但记得把ks.dat也复制到新的XYplore/Data下*/
Catalogs	//存放catalog.dat
FindTemplates	//参考下面英语介绍
Icons		//<xyicons>表示的目录就是Icons目录,用户可以把Xyplorer需要用到的icon保存在这里
NewItems	//XYplorer空白处右键New->New Item的内容
Paper		//纸文件夹保存目录,保存的文件以.txt形式保存
Scripts		//<xyscripts>所指向的目录就是此目录
Panes		//保存tabsets信息
Temp		//保存XYplorer运行时会用到的临时文件
```

以下为XYplorer Beta Club论坛查找到的文件夹结构[[?](https://www.xyplorer.com/xyfc/viewtopic.php?t=15133)]，

```
Catalogs        catalogs
FindTemplates   search templates (saved searches)
Fresh           skip this, this is a temporary profile
Icons           icons default path
NewItems        new items menu items (Menu > Edit > New Items)
Panes           tabsets
Paper           paperfolders default save location
Scripts         scripts default path
Thumbnails      thumbnails cache default location
action.dat      undo/redo history
fvs.dat         folder view settings
ks.dat          keyboard shortcuts
pv.dat          permanent variables (for scripting)
tag.dat         tags, labels, comments
udc.dat         User-defined commands (Menu > User)
XYplorer.ini    main settings file (lastini.dat, if it exists, decides which ini file name is loaded)
```

`language.ini`信息来源:[XYplorer Translation Guide - XYplorer Beta Club](https://www.xyplorer.com/xyfc/viewtopic.php?t=8809)

> Without "Language.ini" the app will load with the embedded English strings just as all the time before multilingual support.

`Temp`文件夹信息来源: [What is the purpose of the Temp folder in application data folder - XYplorer Beta Club](https://www.xyplorer.com/xyfc/viewtopic.php?t=19821)

> Store temporary files used by XYplorer, instead of using %TEMP% (C:\Users\[username]\AppData\Local\Temp).

综合上面的介绍，在进行迁移或备份用户数据时，可以选择保存Data文件夹或者保存以下用户数据文件：

```
action.dat[重要]	fvs.dat[重要]	ks.dat[重要]	Language.ini[重要]
tag.dat[重要]		udc.dat[重要]		XYplorer.ini[必要]	Catalogs目录[重要]
Scripts目录[重要]	
NewItems目录[可选]	Icons目录[可选]		Panes目录[可选]		
Temp目录[可选]	AutoBackup目录[可选]	Layout目录[可有,可选]		
FindTemplates目录[可选]		Paper目录[可选]
```

如果你的配置文件不是以`XYplorer.ini`名为的，你还需要保存`lastini.ini`文件。

## <span id="backup">备份什么文件才能保证数据不丢失并且换了新版也还继续用?</span>

:weary:我说了这么多，你直接<span style="color:red">**保存Data文件夹**</span>就好了，迁移时直接Copy这个Data到新的XYplorer目录下即可。

强调一遍，<span style="color:red">**喜欢使用标签的同学们，一定要保存好tag.dat，里面装了你使用标签的数据信息，切记！**</span>

![BackupTags-1](Image/BackupTags-1.png)

## 单项用户数据保存和载入

如果你不喜欢用户数据文件的命名，想要重新命名，或载入你已经保存的用户数据，可以参考以下方法。

-如何重命名配置文件？

`File->Settings Special -> Save Configuration As..`保存为其他名称，比如MyConfig.ini。

-如何启用自定义名字的配置文件呢？

`File->Settings Special -> Load Configuration`，选择MyConfig.ini，这时候应该会新生成一个lastini.dat文件，该文件的值为MyConfig，意思是当前XYplorer指向了MyConfig.ini配置文件。

-如何载入Tags信息？(两种方法)

1.载入自定义.dat文件。`Tags->Load Tags Database`。

2.载入catalog.dat文件。`Tags->Import Local Tags`。这时候的Local Tags应该是XYplorer正使用的catalog.dat文件，位于Data/Catalogs。

-如何重命名Tags信息?

`Tags->Export Local Tags`。

-如何删除Tags的全部信息?

`Tags->Tags->Remove All Tags`或`Tools->Configuration(F9)->Information->Tags->有个Options,左键->Remove All Tags...`。

-如何载入Catalog信息？

![LoadCatalog-1](Image/LoadCatalog-1.png)

a或b都可用于载入Catalog信息。

-Layout保存和加载

Layout：布局，即，是否显示地址栏，工具栏，Tab栏，状态栏，树，目录等等以及他们的位置摆放信息。

Layout保存和加载通过`Window->Save Layout As... / Load Layout`。

-Tabsets保存和加载

`Tabsets->Save/Save As.../Save Copy As...`

`Tabsets->Open .../Open As...`

-用户自定义命令位于udc.dat,妥善保存。

-用户快捷键位于ks.dat,妥善保存。

## 还原

为了使原版本的数据信息同步到新版本，你可以有几类操作方法：

方法1.准备一个全新版本XYplorer,然后把旧版本的Data覆盖到新的XYplorer/Data

迁移旧XY的数据目录到新XY，需要遵循以下步骤：

-先将你的Data目录复制一份到桌面（Desktop）。

-**(很重要)**对Desktop/Data/XYplorer.ini进行重命名，可以命名为`MyXYConfig.ini`。

-将Desktop/Data目录复制，然后粘贴到新XY目录下，覆盖新XY/Data目录。

-打开新XY，在新XY菜单栏`File->Settings Special->Load Configuration...`，通过载入配置选项来载入MyXYConfig.ini。

![RestoreConfiguration-1](Image/RestoreConfiguration-1.png)

现在开始解释为什么要这么做：

如果直接将旧XY/Data/XYplorer.ini对新XY/Data/XYplorer.ini覆盖，会发生打开新XY出现许可证失效提示。不但如此，实际上，旧XY的数据也没有载入成功到新XY。

方法2.直接在原版本XYplorer菜单栏`Help->Online Support->Check for Updates`进行升级。在21.20.0200以前版本每次升级都不会出现版本到期的现象，不过这一次升级到21.20.0200却出现了版本到期。因此使用方法1稳妥。

-END



# 批量命名 | Rename Special

## 案例1 寻找指定字符串进行替换

需求背景：保证视频文件名(不含后缀)与外挂字幕文件名(不含后缀)一致，Potplayer播放时就会自动载入字幕，为了完成这样的需求，需要改动网上下载到的字幕文件名。

我现有如下文件:

```
F:\Downloads\[VCB-Studio] Shokugeki no Souma][Ma10p_1080p][x265_flac]Subtitles繁体>dir ./b
[VCB-Studio] Shokugeki no Souma [01][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [02][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [03][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [04][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [05][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [06][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [07][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [08][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [09][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [10][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [11][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [12][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [13][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [14][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [15][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [16][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [17][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [18][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [19][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [20][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [21][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [22][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [23][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
[VCB-Studio] Shokugeki no Souma [24][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass
```

我的替换要求是:

`[VCB-Studio] Shokugeki no Souma [xx][Ma10p_1080p][x265_flac].TC-CASO&SumiSora.ass`替换为`[VCB-Studio] Shokugeki no Souma [xx][Ma10p_1080p][x265_flac].ass`，即`.TC-CASO&SumiSora`需要替换为`""`(即内容为空白，体现在替换内容中就是什么内容都不输入)。

选中所有相关文件，然后菜单栏`File->Rename Special->Search and Replace...`

具体操作如下:

![SearchAndReplace-1](Image/SearchAndReplace-1.png)

你还可以预览下结果:

![SearchAndReplace-2](Image/SearchAndReplace-2.png)

语法格式：

```
before/now		//文件中含有的"before"替换为"now"
```

'/'的作用为:  

> define a string to be replaced by another string, both strings separated by '/'.

## 案例2 替换字符串中某个范围的内容

这个案例讲解正则表达式的运用。

### Example1

Example1: 比如有以下文件，需要把`「`和`」`之间的内容去掉（包括边界「和」），该如何操作

```
问题儿童都来自异世界？ -01 「問題児たちが箱庭にやって来たようですよ？」 BDrip x264-ank.kna.mkv_20201106_184156.071.jpg
问题儿童都来自异世界？ -01 「問題児たちが箱庭にやって来たようですよ？」 BDrip x264-ank.kna.mkv_20201106_184206.959.jpg
问题儿童都来自异世界？ -04 「黒ウサギがエロイヤらしい奴に狙われたようですよ？」 BDrip x264-ank.mkv_20201107_233735.989.jpg
问题儿童都来自异世界？ -04 「黒ウサギがエロイヤらしい奴に狙われたようですよ？」 BDrip x264-ank.mkv_20201107_235627.895.jpg
问题儿童都来自异世界？ -04 「黒ウサギがエロイヤらしい奴に狙われたようですよ？」 BDrip x264-ank.mkv_20201107_235634.839.jpg
问题儿童都来自异世界？ -05 「誓いは星の彼方にだそうですよ？」 BDrip x264-ank.kna.mkv_20201108_164005.740.jpg
问题儿童都来自异世界？ -05 「誓いは星の彼方にだそうですよ？」 BDrip x264-ank.kna.mkv_20201108_220102.628.jpg
问题儿童都来自异世界？ -05 「誓いは星の彼方にだそうですよ？」 BDrip x264-ank.kna.mkv_20201108_220119.796.jpg
问题儿童都来自异世界？ -05 「誓いは星の彼方にだそうですよ？」 BDrip x264-ank.kna.mkv_20201108_220122.821.jpg
问题儿童都来自异世界？ -06 「問題児たちがお祭り騒ぎに参加するようですよ？」 BDrip x264-ank.kna.mkv_20201108_220533.452.jpg
问题儿童都来自异世界？ -06 「問題児たちがお祭り騒ぎに参加するようですよ？」 BDrip x264-ank.kna.mkv_20201108_220540.260.jpg
问题儿童都来自异世界？ -06 「問題児たちがお祭り騒ぎに参加するようですよ？」 BDrip x264-ank.kna.mkv_20201108_220544.739.jpg
问题儿童都来自异世界？ -06 「問題児たちがお祭り騒ぎに参加するようですよ？」 BDrip x264-ank.kna.mkv_20201108_220550.478.jpg
```

需要用到`File->Rename Special->RegExp Rename...`的功能。

两种语法格式如下: 

```
RegExpPattern > ReplaceWith     (case-insensitive: a=A)
RegExpPattern > ReplaceWith\    (case-sensitive)
```

特别注意: <span style="color:red">**`>`前后都需要补一个空格**</span>，否则不管匹配的正则表达式是正确的，也会出错。

正则表达式用于匹配符合规则的字符。匹配的规则就在正则表达式中，那么匹配时，会按正则表达式锁描述规则从头到尾扫描即将要匹配的字符串。

可以先去[正则表达式在线测试 | 菜鸟工具](http://c.runoob.com/front-end/854)测试下匹配结果：

![RegExpRename-1](Image/RegExpRename-1.png)

接着，我们进行使用`RegExp Rename...`进行替换:

```
「[\s\S]+」 > 
// \s是匹配所有空白符，包括换行，\S是匹配非空白符，包括换行。
// [\s\S]匹配所有,但只匹配一个满足条件的字符
// +是限定符，用于指定它前面的表达式的匹配次数
// [\s\S]+表示多次匹配所有字符,匹配多个满足条件的字符
//「[\s\S]+」匹配以'「'开头和'」'结尾以及它们之间的所有字符
```

![RegExpRename-2](Image/RegExpRename-2.png)

预览结果：

![RegExpRename-3](Image/RegExpRename-3.png)

成功完成替换：

![RegExpRename-4](Image/RegExpRename-4.png)

在BDrip前面加上-：

```
\s+BDrip > -BDrip
```

结果如下：

![RegExpRename-5](Image/RegExpRename-5.png)

替换结束。

### Example2

由于`「`和`」`比较特殊，我们考虑下面这种情况：

Example2: 比如形如以下文件，我想要将`1`和第一个`B`之间的内容（包括边界1和B）替换空串

```
问题儿童都来自异世界？ -061問題児たちがお祭り騒ぎに参加するようですよ？BBDrip x264-ank.kna.mkv_20201108_220550.4781.jpg
问题儿童都来自异世界？ -061問題児たちがお祭り騒ぎに参加するようですよ？BBDrip x264-ank.kna.mkv_20201108_220550.4782.jpg
问题儿童都来自异世界？ -061問題児たちがお祭り騒ぎに参加するようですよ？BBDrip x264-ank.kna.mkv_20201108_220550.4783.jpg
问题儿童都来自异世界？ -061問題児たちがお祭り騒ぎに参加するようですよ？BBDrip x264-ank.kna.mkv_20201108_220550.4784.jpg
问题儿童都来自异世界？ -061問題児たちがお祭り騒ぎに参加するようですよ？BBDrip x264-ank.kna.mkv_20201108_220550.4785.jpg
问题儿童都来自异世界？ -061問題児たちがお祭り騒ぎに参加するようですよ？BBDrip x264-ank.kna.mkv_20201108_220550.4786.jpg
...
```



![RegExpRename-Example2-1](Image/RegExpRename-Example2-1.png)

因此，XY RegExp Rename匹配规则如下

```
1[\s\S]+B(?=B) > 
```

### Example3

Example3: 形如以下的文件，我想要将`[`和第一个`]`之间的内容（包括边界[和]）替换空串:

```
问题儿童都来自异世界？ -06 [問題児たちがお祭り騒ぎに参加するようですよ？]BDrip x264-ank.kna.mkv_20201108_220550.478.jpg
...
```



![RegExpRename-Example3-1](Image/RegExpRename-Example3-1.png)

因此，XY RegExp Rename匹配规则如下

```
\[[\s\S]+\] > 
```

你可以参考[菜单教程的正则表达式](https://www.runoob.com/regexp/regexp-tutorial.html)部分进行学习，并且该网站也提供了[正则表达式在线测试工具](http://c.runoob.com/front-end/854)。

正则表达式重命名(`RegExp Rename...`)是一项很强大的功能，它相较于`Search and Replace...`，有更高的灵活性，可以定制搜索内容的类型和范围，但也提高了使用成本。

此外，XYplorer使用的是`VB5 regex engine`。

> XY uses the VB5 regex engine.[[?](https://www.xyplorer.com/xyfc/viewtopic.php?t=5357)]





# XYplorer最佳配套

XYplorer+Listary+Everything，这个模式我在好久前就在使用。

Everything以弥补XYplorer搜索的短板，但像要搜索XY中的Tags就需要使用XY

## Listary集成XYplorer

### 无法有效集成的解决方法

为了保证Listary能集成到XY，请下载[Listary6](https://www.listary.com/download)。

使用Listary5 Pro，有时不能集成到XY，而且对话框不能有效的基于XY当前目录进行切换。如果你还是要使用Listary5，我建议你将Listary按照非系统盘或者系统盘的两个Program Files文件夹以外且由你新创建的文件夹，比如C:\Listary。然后设置为管理员模式运行。

如果还是不能集成到XY，我建议你使用Listary6

## 目录快速切换

Listary与XY搭配中，最棒的功能是：所有弹出的对话框可以基于XY当前目录进行快速切换。



### 添加快捷方式文件夹到索引

同时，Listary可以用于快速启动应用软件。为了快速检索应用软件，建议按图要求进行操作：



![ListarySettings-1](Image/ListarySettings-1.png)

以上是Listary6的设置方法，Listary5也是一样的设置方法。

### 在XY中对当前目录匹配时Listary Popup Menu(Listary弹出窗口)并不是最佳选择

<kbd>Ctrl + Alt + X</kbd>进入Live Filter Box输入，搜索关键字，即可筛选当前目录的文件。这部分可以参考[XYplorer的搜索]第3点

当然Popup Menu还有收藏夹，还有快速匹配关键字的结果，这个结果优先是当前目录，然后是其他目录。正是因为结果集列出除当前目录以外的结果，因此才建议使用XY的Live Filter Box功能。



# 文件管理 | File Association

## 自定义文件关联

可以用于关联特定格式的应用

```
 {:Text}       *
 {:Image}      *
 {:Photo}      *   = All image formats that may contain Exif data.
 {:Audio}      *
 {:Video}      *
 {:Media}      *   = Audio & Video
 {:Font}       *
 {:Vector}
 {:Web}        *
 {:Office}     *
 {:Archive}
 {:Executable}
```

想参考关于Generic File Type，请在地址栏输入：

```
rtfm "idh_visualfilters.htm#idh_genericfiletypes";
```

## 打开方式 | Open With

如下图，选中目标文件<kbd>Ctrl + Alt + Enter</kbd>，会弹出如下PopUp菜单：

![](Image/OpenWith-1.png)

这是怎么来的呢？

在自定义文件管理设置了三个视频播放器，并勾选：

![FileAssociation-1](Image/FileAssociation-1.png)

按顺序，如果直接双击打开，默认是最上面的Potplayer。如果要使用其他视频播放器打开，就可以用到"打开方式"这个功能，刚才讲过，通过<kbd>Ctrl + Alt + Enter</kbd>就可以调用这个功能。

### 优点

对同类格式文件需要用到不同应用软件以满足不同需求。比如对于.c和.h文件来说，有时我想要用notepad打开，有时想用VS Code打开，有时想用Dev-C++打开，通过将格式规则写到"自定义文件关联"就可以了。

对比Windows文件管理器，它的右键打开就显得繁琐。

基于这样的需求，我修改了我的"自定义文件关联"：

![FileAssociation-2](Image/FileAssociation-2.png)



![OpenWith-2](Image/OpenWith-2.png)