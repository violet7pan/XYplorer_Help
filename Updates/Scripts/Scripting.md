

# 本Markdown说明

此.md文件记录XYplorer Scripting方面的信息。脚本文件放在与本.md文件同级目录里了。

## 脚本Inbox

收集关于Scripting编写有关的问题，用于方便查找并回看。

Binocular222's all scripts - XYplorer Beta Club https://www.xyplorer.com/xyfc/viewtopic.php?f=7&t=9243#p82488
Can this right - button menu be customizable? - XYplorer Beta Club https://www.xyplorer.com/xyfc/viewtopic.php?f=3&t=18674#p157646

Popup Menu Items - XYplorer Beta Club https://www.xyplorer.com/xyfc/viewtopic.php?t=18979





```
::rtfm "idh_scripting_comref.htm#idh_sc_exists";	//exists()
::rtfm "idh_scripting_comref.htm#idh_sc_favs";	//favs()
::rtfm "idh_scripting_comref.htm#idh_sc_compare";	//compare()
::rtfm "idh_scripting_comref.htm#idh_sc_popupmenu";	//popupmenu()
::rtfm "idh_scripting_comref.htm#idh_sc_end";	//end
```



与字符串处理有关的

```
::rtfm "idh_scripting_comref.htm#idh_sc_compare";	//compare()
```





### 判断文件扩展名/文件夹/盘符

想要判断文件名，可以参考：How to check selected item is a folder? - XYplorer Beta Club https://www.xyplorer.com/xyfc/viewtopic.php?t=12274

只能判断文件的完整文件名中的扩展名：

```
	echo get("curitem", "ext");    //txt
```

判断盘符:

```
    $driveName = "C:";
    if (regexmatches($driveName, "^[A-Z]:[\\]?$")) {
        msg "It is a drive (without any additional folders given)";
    }
```

该脚本会匹配"C:"或"C:\"

### 判断字符串是否包含某个子串

if contain "word or symbol" rename selected file. - XYplorer Beta Club
https://www.xyplorer.com/xyfc/viewtopic.php?t=17806

```
// [^,]+  匹配除,以外的部分
	text regexmatches("tiger,frog,ball", "[^,]+"); //tiger|frog|ball
```





### 如何读取.ini文件

getkey for all keys in a section - XYplorer Beta Club https://www.xyplorer.com/xyfc/viewtopic.php?t=10223

```
// in $ListOfKeysInSection the keys are separated by NULL characters:
  $ListOfKeysInSection = getkey("", "General", "<xydata>\xyplorer.ini");
  text replace($ListOfKeysInSection, chr(0), "<crlf>");
```



```
    while($loop <= $SectionCount){
        $array  = $array . getkey($loop . "_Date", "Toolbars",  $INIname) . "|";
        $loop++;
    }
```



读取XYplorer.ini中的"[FileIcons]"部分的信息：

		$ini = "<xydata>\XYplorer.ini";
		$section_count = getkey("Count", "FileIcons", "<xyscripts>\My.ini");
		$iterator = 1;
		while($iterator <= $section_count) {
			$value_list .= getkey($iterator, "FileIcons", $ini)."<crlf>";
			$iterator++;
		}
		if ($value_list != "") {
			echo $value_list;
		}
