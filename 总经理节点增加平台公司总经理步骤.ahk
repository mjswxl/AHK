^!c::

CoordMode Pixel  ; 将下面的坐标解释为相对于屏幕而不是活动窗口.
ImageSearch, FoundX, FoundY, 40,40, 1300, 1300, d:\mjs\png\总经理.PNG ;查找基本属性
if ErrorLevel = 2
    MsgBox 总经理按钮没找到2.
else if ErrorLevel = 1
    MsgBox 总经理按钮没找到1.
else
	Sleep 500
 Click  %FoundX%,%FoundY%,
Sleep 500
send ,b
Sleep 1000
CoordMode Pixel  ; 将下面的坐标解释为相对于屏幕而不是活动窗口.
ImageSearch, FoundX, FoundY, 40,40, 1300, 1300, d:\mjs\png\平台公司总经理步骤.PNG ;查找基本属性
if ErrorLevel = 2
    MsgBox 总经理按钮没找到2.
else if ErrorLevel = 1
    MsgBox 总经理按钮没找到1.
else
	Sleep 500
 Click  %FoundX%,%FoundY%,
 Sleep 500
 click 2
	Sleep 500
	send +{tab 7}
	Sleep 500
	send {enter}
	Sleep 500
	
	