# XYplorer

## 1. 使用经历

期待着有像Chrome一样多标签的文件管理器，之前听说过win10要出多标签的Explorer，但从1803等到win10 1809就等来个Dark win10黑暗主题，太伤心了。同时原生Explorer慢也卡，实在受不了。使用过老是出莫名其妙问题的Clover,使用多个窗格的Q-Dir,然而使用效果太差了。其他的几个老牌文件管理器我也不是太喜欢，于是，在巧合之前发现了XYplorer这款文件管理器。



## 2. 功能介绍

支持多标签页栏，浏览文件管理时就跟使用Chrome之类的浏览器感觉一般，从浏览方便性，和切换滑顺程度，真的比原本Windows10的Explorer文件管理器要得多。可以从大部分程度上替代原生文件管理器。同时，有浏览器快捷键和鼠标快捷。



### 2.1 主界面介绍

Main Windows.png

（先看这张图，大部分UI界面的名称都是这种叫法，也算是科普，下面介绍会使用这些术语，大神掠过）



### 2.2 功能预览



#### 2.2.1 双窗格(Dual Pane)-单窗格切换

Dual Pane.gif



#### 2.2.2 多个标签栏(New Tab)快捷打开&关闭

New Tab On&Off.gif

鼠标双击关闭录制GIF忘了录进去，到时候修改配置后你们也可以自己尝试



#### 2.2.3 快速预览(Hover Box)

ALT按住，同时鼠标移动到图片上就行了（活动窗口下使用）

Method One:

Show Hover Box.gif



Method Two: F9->进入配置->显示悬停框->应用到...->需要预览的文件格式

Hover Box Configuration.png

设置后也可以达到快速预览的效果

Show Hover Box2.gif



注: 有些视频格式并不能预览



注: 什么是活动窗口(Active Window)?

Active Window.gif



#### 2.2.4 方便的鼠标快捷(快捷返回后上一级路径)

Double-Click.gif

不知道你感受到在GIF中，XYplorer切换起来的顺滑感觉没？



#### 2.2.5 路径及历史路径追踪(Tree)

比如，我进入这个路径：F:\音乐库\Music\Taylor Swift - Red (Exclusive Deluxe Edition) (2012) [FLAC]\CD1时，注意到左边的树Tree绿色跟踪了没？就是这种跟踪。有什么好处呢？当你想再次进入以前进入过的CD1时可以通过Tree追踪过的文件目录来进入

Tip On Tree Return.gif



#### 2.2.6 文件标注(Label)+标签(Tag)+注释(Comment)

Lable&Tag

Add Lable&Tag.gif



Comment

Add Comment.gif



#### 2.2.7 颜色过滤(Color Filters)

文件数目多，合理在设置中对各格式文件进行颜色过滤设置，可以方便分辨文件的）



比如我收藏的文件夹都是绿色显示的，树目录也会显示的，隐藏文件好像黄色的彩笔背景色+紫色还是红色（具体看设置）

Color Filters1.png

Settings To Color Filters1.png



Color Filters2.png

Color Filters3.png



不喜欢绿色背景?
配置->颜色和风格->颜色过滤器：

Settings To Color Filters2.png



#### 2.2.8 收藏文件夹(Favorite Folders)以及快速切换到收藏的文件夹

基于这样一个使用背景：比如我想收藏F:\同步库\我的坚果云供使用时快速切换

Favorite Folder.gif



没错，居然按CTRL+B(字体加粗)，这样就收藏了，切换时就在导航面板上鼠标右键->选择文件夹
如果管理收藏夹：在工具栏中，收藏夹->管理收藏夹文件夹



使用存在的问题：
比如我的看图文件是Honeyview.exe,然而我关联我图像格式后，打开还是弹出类似微软的提示选择格式框，这是该怎么办呢？

Without File Associations.gif

解决的方法是：看下面的说明吧



#### 2.2.9 特殊的文件关联(File Associations)

工具栏(Tools)->自定义文件关联(Customize File Associations)



*添加关联格式语法:*
文件格式>文件路径
比如不同图像格式之间用;隔开(注意;是英文标号的分号，不是中文分号)
例如：
ani;bmp;gif;ico;jpe;jpeg;jpg;pcx;png;psd;tga;tif;tiff;wmf>C:\Program Files\Honeyview\Honeyview.exe
添加如下图：

Customize File Associations.png



Customize File Associations2.png

然后点击确定。



类似可以添加的如下：
文本：
txt;rtf>C:\Program Files (x86)\Notepad++\notepad++.exe
视频：
3g2;3gp;3gp2;3gpp;amr;asf;avi;bdmv;bik;d2v;dat;divx;drc;dsa;dsm;dss;dsv;f4v;flc;fli;flic;flv;ifo;ivf;m1v;m2ts;m2v;m4b;m4p;m4v;mkv;mod;mov;mp2v;mp4;mpe;mpeg;mpg;mpv2;mts;ogm;pss;pva;qt;ram;ratdvd;rm;rmm;rmvb;roq;rpm;smk;swf;tp;tpr;ts;vob;vp6;webm;wm;wmp;wmv>C:\Program Files\DAUM\PotPlayer\PotPlayerMini64.exe
其他：自己网上搜比如音乐文件的格式，还是其他文件的格式，然后往>前面添加就行了。



*路径之间按语法格式修改:*
文件格式>文件路径
文件路径的小方法：对着应用软件ICON图标按住SHIFT+鼠标右键就可以看到:

Tip To Get File Path.png



于是出现的下面复制的内容："C:\Users\vip57\Desktop\搜索 Everything.lnk"
你添加文件路径把复制文件路径首尾的双引号”去掉



**这样做的好处？什么？还有好处？**

是的，有好处的，比如你安装了Potplayer，又安装了迅雷影音,结果迅雷影音把视频文件格式设置用迅雷影音打开，那么你用原生的文件管理器肯定双击视频文件后就是用迅雷影音打开。
但是有了视频关联，就不会出现这种问题，只要你是用XYplorer就可以了。
再举个例子：

Issue On Resetting Default File Associations.png



就是这种**默认格式重置问题**于是我添加了这样一条音乐格式
aac;ac3;aif;aifc;aiff;amr;ape;au;cda;dts;fla;flac;gym;it;m1a;m2a;m3u;m4a;mid;midi;mka;mod;mp2;mp3;mpa;ogg;ogm;ra;rmi;snd;spc;umx;vgm;vgz;voc;wav;wma;xm>F:\Program Files\AIMP\AIMP.exe
Perfect！就是这样。不管window设置中默认设置怎么变，这种window设置的默认是相对原生Explorer来说的，不会影响到XYplorer



#### 2.2.10 在地址栏进行搜索/算术

地址栏搜索
a.在活动窗口为XYplorer时，按下快捷键ALT + D进入地址栏
b.打出一个问号?
c.后接搜索内容
d.回车

Arithmetic On Address Bar.png



#### 2.2.11 搜索功能：重复文件查找

比如我有这么一个文件："F:\下载库\IDMDownloads\Everything-1.4.1.924.x64-Setup.exe"
比如我有这么一个文件"F:\下载库\Downloads\Everything-1.4.1.924.x64-Setup.exe"
我只需要在活动路径为下载库下搜索
搜索重复文件效果如GIF：

Search Duplicate Files.gif

破解版搜索文件变久了后可以会卡。在小范围搜索推荐使用，比如搜索当前文件夹的文件。



搜索技巧：地址栏,输入?+搜索关键字即可快速搜索。

Search Tip.png



#### 2.2.12 路径导航栏(Breadcrumb Bar)

Breadcrumb Bar.png



### 2.3 常用的快捷操作

ALT + T : 打开新标签(New Tab)
ALT + W：关闭当前标签
F6：进入地址栏
在XYplorer空白处双击鼠标左键：返回当前文件地址路径的上一级
CLRL + F : 内置搜索栏        配合CLRL + SHIFT + F移动到内置搜索栏的对话框
CLRL + 鼠标移动到图片出，自动预览图片内容
ALT + D：返回地址栏
F8        切换导航面板
好多好多快捷键自己探索吧。



### 2.4 如何设置XYplorer?

工具->配置（F9）

Configuration1.png

Configuration2.png

Configuration3.png

Configuration4.png

Configuration5.png

Configuration6.png

Configuration7.png



为本计算机的所有用户下要默认文件程序为XYplorer记得一定要开启常驻管理员运行。

Setting For Administer Running.png



那么用管理员运行有什么好处？(不喜欢看为什么就跳过，不强求)
1.使XYplorer的全局快捷键在具有管理员权限的窗口也能响应。(活动窗口在非XYplorer时，也能响应XYplorer的全局快捷键)
2.为所有用户提供XYplorer的使用权限。这意味着你使用Administer用户也可以使用XYplorer。
3涉及修改(Modify)C盘相关文件操作的命令可以被安全，正常地执行。



### 2.5 备份与还原

启动&退出->保存设置，这样设置有什么用呢？
如果你要重装系统或者换个新版本的XYplorer，这时候就可以把配置文件先保存起来：
*备份步骤如下*：

Backup1.png

Backup2.png



*还原备份*：

在工具栏：文件->特殊设置->载入配置->选择对应的.ini文件

Restore.png

还原效果测试：

Test of Restoring.png



还原时需注意几个要点：(程序要常驻使用管理员身份运行)
**a.把旧版本删除前，进入配置(F9)->其他->外壳集成->XYplorer是默认文件管理器勾选取消。**一定要取消，不然要全靠原生文件夹上的地址栏输入路径来进入文件夹。
b.在a步骤后，一定要备份到其他文件夹。然后删除旧的XYplorer
c.新的XYplorer解压到你想要放到的目录
d.别急着还原，打开新的XYplorer，进入配置(F9)->其他->外壳集成->XYplorer是默认文件管理器勾选勾上。
e.文件->特殊设置->载入设置->选择.ini文件导入。OK





## 3. 更新以及补充

2018/12/24 23：14

19.50 2018-12-21的最新Crack版本19.50 不提供了，只提供楼主本帖介绍的版本19.10，原因：最新破解版配置->其他->功能勾选框全灰色，证明Crack版本实际存在问题的。

因此楼主还是提供19.10

链接：https://pan.baidu.com/s/1D9Nc4kxIOQJoqxkMByibBg 
提取码：l2lk 



2018/12/25

提供19.50版本可用的XYplorer(出处：http://www.dayanzai.me/xyplorer.html)
此版本有时候进入配置(F9)会卡死。其他时候都正常。
提供网盘：
链接：https://pan.baidu.com/s/1UZUU2HmHh58wEKzLHjRsoA 
提取码：p8nm 



新增特性：夜间模式(Dark Mode)

Dark Mode.png

在工具栏"夜间模式"按钮的添加方式如GIF图所示：

Add Dark Mode Button.gif



附带一个启动XYplorer的全局快捷键的小技巧

Quick Launch Tips.png





楼主结尾编辑这份贴子真得很累，可是又想分享。在这样的矛盾下分享出来了。真心喜欢这个软件的就给个好评，给个收藏吧。好累啊~~~~~