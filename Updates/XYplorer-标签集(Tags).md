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

关于怎么安装这个Script，请参考[XYplorer-用户自定义命令篇(UDC)](./XYplorer-用户自定义命令篇(UDC).md)中的设置快捷键调用Notepad的部分的设置方法。

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

