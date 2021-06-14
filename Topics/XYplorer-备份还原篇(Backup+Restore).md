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

![BackupTags-1](XYplorer-备份还原篇(Backup+Restore)/BackupTags-1.png)

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

![LoadCatalog-1](XYplorer-备份还原篇(Backup+Restore)/LoadCatalog-1.png)

a或b都可用于载入Catalog信息。

-Layout保存和加载

Layout：布局，即，是否显示地址栏，工具栏，Tab栏，状态栏，树，目录等等以及他们的位置摆放信息。

Layout保存和加载通过`Window->Save Layout As... / Load Layout`。

-Tabsets保存和加载

`Tabsets->Save/Save As.../Save Copy As...`

`Tabsets->Open .../Open As...`

-用户自定义命令位于udc.dat,妥善保存。

-用户快捷键位于ks.dat,妥善保存。

## 还原(迁移)

为了使原版本的数据信息同步到新版本，你可以有几类操作方法：

方法1.准备一个全新版本XYplorer,然后把旧版本的Data覆盖到新的XYplorer/Data

迁移旧XY的数据目录到新XY，需要遵循以下步骤：

-先将你的Data目录复制一份到桌面（Desktop）。

-**(很重要)**对Desktop/Data/XYplorer.ini进行重命名，可以命名为`MyXYConfig.ini`。

-将Desktop/Data目录复制，然后粘贴到新XY目录下，覆盖新XY/Data目录。

-打开新XY，在新XY菜单栏`File->Settings Special->Load Configuration...`，通过载入配置选项来载入MyXYConfig.ini。

![RestoreConfiguration-1](XYplorer-备份还原篇(Backup+Restore)/RestoreConfiguration-1.png)

现在开始解释为什么要这么做：

如果直接将旧XY/Data/XYplorer.ini对新XY/Data/XYplorer.ini覆盖，会发生打开新XY出现许可证失效提示。不但如此，实际上，旧XY的数据也没有载入成功到新XY。

如图中Diagram所示：

![RestoreDiagram](XYplorer-备份还原篇(Backup+Restore)/RestoreDiagram.png)

方法2.直接在原版本XYplorer菜单栏`Help->Online Support->Check for Updates`进行升级。每次升级有一定概率出现许可证到期的问题。若出现该问题，转而使用方法1即可。

