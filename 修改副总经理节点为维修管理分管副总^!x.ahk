 ^!x::

 CoordMode Pixel  ; 将下面的坐标解释为相对于屏幕而不是活动窗口.
ImageSearch, FoundX, FoundY, 40,40, 1300, 1300, d:\mjs\png\平台公司副总经理节点.PNG 
if ErrorLevel = 2
    MsgBox 品牌副总经理2.
else if ErrorLevel = 1
    MsgBox 品牌副总经理1.
else
	Sleep 500
 Click  %FoundX%,%FoundY%,
 Sleep 500
 send b
 Sleep 1500
 send {TAB 11}
 Sleep 500
 send 维修管理分管副总
 
  CoordMode Pixel  ; 将下面的坐标解释为相对于屏幕而不是活动窗口.
ImageSearch, FoundX, FoundY, 40,40, 1300, 1300, d:\mjs\png\经办人.PNG 
if ErrorLevel = 2
    MsgBox 品牌副总经理2.
else if ErrorLevel = 1
    MsgBox 品牌副总经理1.
else
	Sleep 500
 Click  %FoundX%,%FoundY%,
 Sleep 500
  send {TAB 14}
  Sleep 500
  Send {enter}
  Sleep 500
  
  send +{tab}	
  Sleep 500
  Send {enter}
  Sleep 1000
Send {tab}
Sleep 500
send 平台公司维修管理分管副总
Sleep 1500


coordMode ,Screen ; 将下面的坐标解释为相对于屏幕而不是活动窗口.
ImageSearch, FoundX, FoundY, 0,0, 1300, 1300, d:\mjs\png\平台公司维修管理分管副总角色.PNG 
if ErrorLevel = 2
    MsgBox 品牌副总经理2.
else if ErrorLevel = 1
    MsgBox 品牌副总经理1.
else
	Sleep 1000
 Click  %FoundX%,%FoundY%,
 
 Sleep 1000
send {tab}{enter}
Sleep 500
Send {tab 3}{enter}

