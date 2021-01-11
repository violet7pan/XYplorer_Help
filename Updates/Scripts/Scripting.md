

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



## 快速入门 | QuickStart

### 1.书写语句

只要是不在地址栏输入的，编写脚本每一行开头最好有一个空格或一个<kbd>Tab</kbd>，否则可能无法执行Script。保证每条语句有一个`;`。

```
	语句1;
	语句2;
	...
	语句N;
```

当然，你也可以写在一行，但都必须有`;`分割开每条语句：

```
	语句1; 语句2; ...; 语句N;
```

良好的缩进，匹配代码块，比如:

```
	$condition = "Ok";
	if($condition != "Ok") {
		echo "if";
	}
	else {
		echo "else";
	}
```

当然你也可以这样写：

```
	$condition = "Ok"; if($condition != "Ok") { echo "if";} else { echo "else";}
```

### 2.变量

想参考变量的使用说明，请在XY地址栏输入：

```
::rtfm "idh_scripting.htm#idh_scripting_variables";
```

变量也是有范围的：

```
	function fun($c) {
		$c = 1;
	}
	$a = 2;
	fun($a);
	echo 'outside the function:a='.$a.' and c='.$c;
```

输出如下：

```
outside the function:a=2 and c=$c
```

函数内的局部变量$c在调用时生成，执行完销毁，所以$c就会被当做字符串"$c"输出。对于$a只是把它的值复制一份给了$c而已。

### 3.运行Script

方法1：按下Alt -> S -> R呼出"Run Script"面板，输入脚本内容。

方法2：按下Alt -> S -> L呼出"Load Script File"选择以.xys结尾的脚本文件

方法3：按下Alt -> T -> F呼出"Customize File Associations"，新建一条新的规则，规则如下：

```
xys>::load <curitem>
```

以后可以编写脚本到.xys文件中，然后双击运行即可。

方法4：F8呼出"Navigation Panels"，按下Ctrl+F8呼出"Catalogue"，新建一个项目，内容如下

```php
// Caption
TestScript
// Location
::load "Test\test.xys";	//加载的脚本文件名称自己命名，Test\test.xys表示在<xyscripts>\Test\test.xys
```





## 数字处理

```
::rtfm "idh_scripting_comref.htm#idh_sc_abs";	//abs() - Returns the absolute value of a number.
::rtfm "idh_scripting_comref.htm#idh_sc_ceil";	//ceil() - Rounds fractions up.
::rtfm "idh_scripting_comref.htm#idh_sc_dectohex";	//dectohex(), hex() - Converts a signed decimal integer into hexadecimal.
::rtfm "idh_scripting_comref.htm#idh_sc_floor";	//floor() - Rounds fractions down.
::rtfm "idh_scripting_comref.htm#idh_sc_hexdump";	//hexdump() - Returns a string as hex dump.
::rtfm "idh_scripting_comref.htm#idh_sc_hextodec";	//hextodec() - Converts a hexadecimal number into a signed decimal number.
::rtfm "idh_scripting_comref.htm#idh_sc_incr";	//incr - Increments a numerical value.
::rtfm "idh_scripting_comref.htm#idh_sc_rand";	//rand() - Generates an integer random number.
::rtfm "idh_scripting_comref.htm#idh_sc_round";	//round() - Rounds a number.
```



## 日期处理

```
::rtfm "idh_scripting_comref.htm#idh_sc_datediff";	//datediff() - 
::rtfm "idh_scripting_comref.htm#idh_sc_datepicker";	//datepicker() - Pops a Date Picker dialog and returns the selected date.
::rtfm "idh_scripting_comref.htm#idh_sc_now";	//now() - Returns the current date/time.
::rtfm "idh_scripting_comref.htm#idh_sc_format";	//format() - Returns a string formatted. 
::rtfm "idh_scripting_comref.htm#idh_sc_formatdate";	//formatdate() - Returns a date/time expression in a specific format, optionally shifted by a specific interval.
```





## 字符串处理

与字符串处理有关的

```
::rtfm "idh_scripting_comref.htm#idh_sc_asc";	//asc() - Returns the ASCII value of a character.
::rtfm "idh_scripting_comref.htm#idh_sc_base64decode";	//base64decode() - Decodes a Base64-encoded string or file.
::rtfm "idh_scripting_comref.htm#idh_sc_base64encode";	//base64encode() - Encodes a string or file content in Base64.
::rtfm "idh_scripting_comref.htm#idh_sc_charview";	//charview - Shows the characters of a string in a vertical list in various encodings and notations.
::rtfm "idh_scripting_comref.htm#idh_sc_chr";	//chr() - Returns a specific character. This function complements asc().
::rtfm "idh_scripting_comref.htm#idh_sc_base64encode";	//base64encode() - Encodes a string or file content in Base64.
::rtfm "idh_scripting_comref.htm#idh_sc_compare";	//compare() - Compares two strings. 
::rtfm "idh_scripting_comref.htm#idh_sc_eval";	//eval() - Evaluates an expression. 
::rtfm "idh_scripting_comref.htm#idh_sc_format";	//format() - Returns a string formatted. 
::rtfm "idh_scripting_comref.htm#idh_sc_formatlist";	//formatlist() - Formats a list of items. 
::rtfm "idh_scripting_comref.htm#idh_sc_gettoken";	//gettoken() - Returns a substring by index. 
::rtfm "idh_scripting_comref.htm#idh_sc_gettokenindex";	//gettokenindex() - Returns the first index of a token in a token list, or the count of its occurrences. 
::rtfm "idh_scripting_comref.htm#idh_sc_isunicode";	//isunicode() - Analyzes a text string for the presence of wide characters. 
::rtfm "idh_scripting_comref.htm#idh_sc_lax";	//lax() - Allows to define a string in a lax way. 
::rtfm "idh_scripting_comref.htm#idh_sc_quote";	//quote() - Double-quotes a string. 
::rtfm "idh_scripting_comref.htm#idh_sc_recase";	//recase() - Changes the case of a string. 
::rtfm "idh_scripting_comref.htm#idh_sc_regexmatches";	//regexmatches() - Returns a list of all matches of a regular expression pattern in a given string. 
::rtfm "idh_scripting_comref.htm#idh_sc_regexreplace";	//regexreplace() - Replaces parts of a string, using a regular expression pattern. 
::rtfm "idh_scripting_comref.htm#idh_sc_replace";	//replace() - Replace parts of a string. 
::rtfm "idh_scripting_comref.htm#idh_sc_replacelist";	//replacelist() - Replaces substrings by list.
::rtfm "idh_scripting_comref.htm#idh_sc_strlen";	//strlen() - Return the length of a string.
::rtfm "idh_scripting_comref.htm#idh_sc_strpos";	//strpos() - Return position of first occurrence of a string.
::rtfm "idh_scripting_comref.htm#idh_sc_strrepeat";	//strrepeat() - Repeats a string.
::rtfm "idh_scripting_comref.htm#idh_sc_strreverse";	//strreverse() - Reverses a string.
::rtfm "idh_scripting_comref.htm#idh_sc_substr";	//substr() - Return part of a string.
::rtfm "idh_scripting_comref.htm#idh_sc_trim";	//trim() - Strips spaces (or other characters) from the beginning and/or end of a string.
::rtfm "idh_scripting_comref.htm#idh_sc_urldecode";	//urldecode() - Decodes URL-encoded string.
::rtfm "idh_scripting_comref.htm#idh_sc_urlencode";	//urlencode() - URL-encodes string.
::rtfm "idh_scripting_comref.htm#idh_sc_utf8decode";	//utf8decode() - Decodes UTF-8 encoded string.
::rtfm "idh_scripting_comref.htm#idh_sc_utf8encode";	//utf8encode() - Encodes a string to UTF-8.
```



### 遍历一个字符串

How to use and execute a script ? - XYplorer Beta Club https://www.xyplorer.com/xyfc/viewtopic.php?t=6560

```
   $STRING = "XYplorer";
   $LOOPs = strlen($STRING);
   $ITERATION=0;
   $OUTPUT="";
   
   while($ITERATION <= $LOOPs)
   {
      $Token = substr($STRING, $ITERATION, 1);
      if ($Token==""){break;}
      msg $Token,1;
      incr $ITERATION;
   }
```

#### 判断字符串是否包含某个子串

利用以上遍历一个字符串的while结构，写了一个保持字符串是否包含某个子串的函数，若包含返回1，否则返回0。

实现的逻辑就是利用一个计数器，目标字串与源字串比较后，每次比较成功，计数器都会加1，目标字串全部比较完后，若计数器与目标字串长度一致代表源字串包含目标字串。

	$src_str = "XYplorer.ini";
	$dst_str = "XYp";
	/*
		function: is_contains
		查询源字符串中是否包含目标字串
		@src_str: 源字串
		@dst_str: 目标字串(请保证目标字串长度不超过源字串长度)
	*/
	function is_contains($src_str, $dst_str) {
		$src_iter=0;	//源字串迭代器
		$dst_iter = 0;	//目标字串迭代器
		$cmp_ctr = 0;	//比较计数器,当比较结果=源字串长度,代表源字串确实包含目标字串
		$str_len = strlen($src_str);	// 源字串长度
		$dst_len = strlen($dst_str);	// 目标字串长度
		while($src_iter <= $str_len)
		{
			$src_token = substr($src_str, $src_iter, 1);
			if ($src_token==""){break;}
			while($dst_iter <= $dst_len) {
				$dst_token = substr($dst_str, $dst_iter, 1);
				if($dst_token == "") {break;}	
				if($src_token == $dst_token) {
					if($cmp_ctr == 0) {incr $cmp_ctr; incr $dst_iter; break;}
					elseif($cmp_ctr < $dst_len) {incr $cmp_ctr; incr $dst_iter; break;}
					else {break;}
				}
				$dst_iter = 0;
				$cmp_ctr = 0;
				break;
			}
			incr $src_iter;
		}
		//echo "cmp_ctr=".asc($cmp_ctr).";"."dst_len=".asc($dst_len)."equal?=".($cmp_ctr==$dst_len);
		return ($cmp_ctr==$dst_len);
	}
	echo is_contains($src_str, $dst_str);
除了上面的方法以外，还可以利用regxmatches()

```
	$src_str = "XYplorer.ini";
	$dst_str = "r";
	/* 
		echo regexmatches($src_str, $dst_str)输出为r|r
		只要不为结果不为空,就代表包含子串
	*/
	echo regexmatches($src_str, $dst_str)!="";
```

if contain "word or symbol" rename selected file. - XYplorer Beta Club https://www.xyplorer.com/xyfc/viewtopic.php?t=17806

```
// [^,]+  匹配除,以外的部分
	text regexmatches("tiger,frog,ball", "[^,]+"); //tiger|frog|ball
```



## 文件

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



### 文件读取到变量/遍历每行

How to use and execute a script ? - XYplorer Beta Club https://www.xyplorer.com/xyfc/viewtopic.php?t=6560

```
//For Each Line In LineS Do

  //collect a file content into a variable:
  $INPUT = readfile("<xydata>\xyplorer.ini");  // or nowadays just "<xyini>"
  text $INPUT;

  //initialize the $OUT var or you get "$OUT" as literal text into the output too:
  //(this could also be used to write a header line for example)
  $OUT = "";

  //for each part (put into "$myVar") from big content (parts are separate here by line break, means "for each line"):
  foreach( $LINE , $INPUT , "<crlf>" ){

         //search for a pattern:
         //regexmatches( string, pattern, [separator=|], [matchcase=0])
    $TMP = regexmatches( $LINE , "backup"                             );

    //if pattern matched, collect the current processed line into a new variable $OUT:
    if( $TMP !=  "" ){ $OUT = $OUT . $LINE . "<crlf>"; }

   }
   //test to see what we have collected:
   text $OUT;
 
  //write collection from $OUT to a new text file:
  //writefile(filename, data, [on_exist], [mode])
  //writefile( "%temp%\filename.txt", $OUT) ;
```



### 分辨文件类型

```
::rtfm "idh_scripting_comref.htm#idh_sc_property";	//property()
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

### 文件属性 | property()

### 读取文件属性Detals的元数据

比如读取"E:\TempUse\123.doc"文件属性Details的元数据，可通过对"E:\TempUse\123.doc"右键-属性查看。

脚本如下：

		$props = property("System.PropList.FullDetails",  "E:\TempUse\123.doc");
		$props = replace($props, "prop:","");
		$list = ;
		foreach($token, $props, ";") {
			$list .= "$token: ".property($token, "E:\TempUse\123.doc")."<crlf>";
		}
		echo $list;
输出如下：

```
System.PropGroup.Description: 
System.Title: 
System.Subject: 
System.Keywords: This is a tag
System.Category: 
System.Comment: 4444
System.PropGroup.Origin: 
System.Author: 孙洪娟(拟稿)
System.Document.LastAuthor: 赵欣慧
System.Document.RevisionNumber: 2
System.Document.Version: 
System.ApplicationName: Microsoft Office Word
System.Company: 国家统计局
System.Document.Manager: 
System.Document.DateCreated: 11/26/2018 6:17:00
System.Document.DateSaved: 11/26/2018 6:17:00
System.Document.DatePrinted: 11/13/2018 5:58:00
System.Document.TotalEditingTime: 0
System.PropGroup.Content: 
System.ContentStatus: 
System.ContentType: 
System.Document.PageCount: 1
System.Document.WordCount: 18610
System.Document.CharacterCount: 106078
System.Document.LineCount: 883
System.Document.ParagraphCount: 248
System.Document.Template: Normal.dotm
System.Document.Scale: False
System.Document.LinksDirty: False
System.Language: 
System.PropGroup.FileSystem: 
System.ItemNameDisplay: 123.doc
System.ItemTypeText: Microsoft Word 97 - 2003 Document
System.ItemFolderPathDisplay: E:\TempUse
System.DateCreated: 12/12/2020 13:18:20
System.DateModified: 12/12/2020 14:00:00
System.Size: 4376576
System.FileAttributes: A
System.OfflineAvailability: 
System.OfflineStatus: 
System.SharedWith: 
System.FileOwner: Administrators
System.ComputerName: DESKTOP-M6EI91A
```

地址栏输入：

```
::rtfm "idh_scripting_comref.htm#idh_sc_property";	//property()
```

其中说明文档有如下内容：

> Windows canonical properties (from Vista onwards  only!) Tip: The  command **property()** , the Find  Files selector **prop:**, and the  **<prop ...>** variable all supports the locale-independent  Windows canonical properties as listed here: 
>
> [http://msdn.microsoft.com/en-us/library/windows/desktop/dd561977%28v=vs.85%29.aspx](http://msdn.microsoft.com/en-us/library/windows/desktop/dd561977(v=vs.85).aspx)

通过这个微软Doc的链接，我查询到了System.PropList.FullDetails这个项

PropList - Win32 apps | Microsoft Docs https://docs.microsoft.com/en-us/windows/win32/properties/proplist-bumper

> System.PropList.FullDetails		The list of properties to show in the infotip. Properties with empty values will not be displayed.



## run()/runq()/runet()

可以用于调用cmd.exe。

提供一些Microsoft Doc参考：

start | Microsoft Docs https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/start

cmd | Microsoft Docs https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/cmd

### runret()

#### runret()函数返回值中文乱码

cmd窗口不会有中文简体还是繁体乱码(garbled):

```
G:\Downloads\魔法少女☆伊莉雅-Subs>chcp
Active code page: 936

G:\Downloads\魔法少女☆伊莉雅-Subs>dir /B
Fate kaleid liner 魔法少女☆伊莉雅
ReadMe.md
[VCB-Studio] Fate_Kaleid Liner Prisma Illya _ 魔法少女☆伊莉雅 S1-S4 10-bit 1080p HEVC BDRip [Fin].torrent
[魔法少女☆伊莉雅][BD][S01-S04][Sub][FLsnow]【1080P】[简繁]
魔法少女☆伊莉雅 Prisma☆Phantasm【BD简繁字幕】
魔法少女☆伊莉雅 百變嘉年華.BDrip
魔法少女伊莉雅 百變嘉年華
```

但是在XY中使用runret调用cmd却会出现一些符号会乱码，我尝试将"code page"切换到936

```
::text runret("cmd /c chcp 936 &cmd /c DIR /B", <curpath>, 936); 
```

结果毫无用处，这算不算一个缺陷，好像官网也没解决这个问题，需要各位不要踩到这个坑。

```
Active code page: 936
Fate kaleid liner ?§·¨éù????òáàò??
ReadMe.md
[VCB-Studio] Fate_Kaleid Liner Prisma Illya _ ?§·¨éù????òáàò?? S1-S4 10-bit 1080p HEVC BDRip [Fin].torrent
[?§·¨éù????òáàò??][BD][S01-S04][Sub][FLsnow]??1080P??[?ò·±]
?§·¨éù????òáàò?? Prisma??Phantasm??BD?ò·±×?????
?§·¨éù????òáàò?? °ù×????êèA.BDrip
?§·¨éù??òáàò?? °ù×????êèA
```

RUNRET Cyrillic encoding problems - XYplorer Beta Club https://www.xyplorer.com/xyfc/viewtopic.php?t=21114

