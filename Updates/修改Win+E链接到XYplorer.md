# 20190114

## 前言

不定期会看看。希望Clone的朋友传播给更多用XYplorer的网友们，但别把自己Clone的说明挂上原创。

## 使用Autohotkey修改Win+E，使热键重新链接到XYplorer

### 1.1 下载地址

[Download](https://www.autohotkey.com/download/?mt=8&uo=4&ct=appcards)



### 1.2 修改方法

#### STEP1

在磁盘任意处创建XYplorer.ahk

#### STEP2

然后用记事本等编辑文本的程序打开

#### STEP3

Copy下列代码格式，根据自身情况替换路径：



`#e::Run C:\Program Files\XYplorer\XYplorer.exe ;win+e 打开XYplorer`



`;win+e 打开XYplorer`是注释



'C:\Program Files\XYplorer\XYplorer.exe' 换成你XYplorer.exe的路径



### 1.3 存在的问题

需要Autohotkey常驻并且载入了编辑后的XYplorer.ahk文件。



###  1.4 添加.ahk文件到Boot

两种方法



方法一：系统目录



C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp



方法二：个人目录



C:\Users\<Your User Name>\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup



或者

Win + R  -> shell:startup



打开系统/个人目录后，复制.ahk或者.ahk.lnk也可以



方法三：



如果都启动不起来。我建议你使用Win+R -> taskschd.msc

> 
>
> Win + R
>
> taskschd.msc
>
> 右键Click到任务计划程序(本地) > 任务计划程序库
>
> 右侧面板中点击创建基本任务
>
> ...剩下的设置自行百度吧。GUI画面的tasksch.msc操作很简单了。如果还是无法自启动.ahk，把它放到桌面手动启动吧。





