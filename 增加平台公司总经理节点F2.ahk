 F2::
 global time1 := 500  ;短暂等待时间
 global time2 := 1000 ;较长等待时间
 global ydsd := 1 ;移动速度

 js :="平台公司总经理"  ;节点名称
 jbrjs :="平台公司总经理角色.PNG" ;经办人角色
 xybbz := "结束步骤.PNG"  ;下一步步骤
 
 
 ;-----------------新增平台公司总经理节点-------------------
新增节点(800,600,"平台公司总经理","新增步骤按钮")
添加步骤()
添加指定步骤("结束步骤.png")
选择经办人("平台公司总经理")
流转其他设置()
;----------------------------------------------------------------

 ;-----------------新增财务总监节点-------------------
新增节点(800,475,"财务总监","新增步骤按钮")
添加步骤()
添加指定步骤("平台公司总经理步骤.png")
选择经办人("财务总监")
流转其他设置()
;----------------------------------------------------------------


 ;-----------------新增维修管理分管副总节点-------------------
新增节点(800,350,"维修管理分管副总","新增步骤按钮")
添加步骤()
添加指定步骤("财务总监步骤.png")
选择经办人("维修管理分管副总")
流转其他设置()
;----------------------------------------------------------------
 /*
  ;-----------------新增品牌总经理节点-------------------
新增节点(580,600,"品牌总经理","新增步骤按钮")
添加步骤()
添加指定步骤("财务总监步骤.png")
添加指定步骤("维修管理分管副总步骤.png")
选择经办人("品牌总经理")
流转其他设置()
;----------------------------------------------------------------


  
   js :="品牌总经理"  ;节点名称
 jbrjs :="品牌总经理角色.PNG" ;经办人角色
 wjm := "新增步骤按钮.PNG" 
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
    wjm := "新增步骤按钮2.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
    MsgBox %wjm%1.

else
	Sleep %time1%
 Click  %FoundX%,%FoundY%,
 Click down
 Sleep %time1%
 Click up,600,450
 Sleep %time1%
 MouseMove, 60, 10, %ydsd%, R
 Click 
 Sleep %time1%
 send b
 sleep %time2%
 send {TAB 11}
 Sleep %time1%
 send %js%
Sleep %time1%
wjm := "发起人步骤.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
      MsgBox %wjm%.
else
	Sleep %time1%
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 send {end}
 Sleep %time1%
wjm := "财务总监步骤.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
      MsgBox %wjm%.
else
	Sleep %time1%
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 click 2
 sleep %time1%
 wjm := "维修管理分管副总步骤.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
      MsgBox %wjm%.
else
	Sleep %time1%
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 click 2
 sleep %time1%
  
wjm := "经办人.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
      MsgBox %wjm%.
else
	Sleep %time1%
 Click  %FoundX%,%FoundY%,
  Sleep %time1%
 send {tab 11}
 send {enter}
 send {tab 2}
 send {enter}
 sleep %time1%
 send {tab}
 sleep %time1%
 send %js%
 sleep %time2%
 
 
 ;添加经办人角色
   
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%jbrjs%
if ErrorLevel  <> 0
      MsgBox %jbrjs%.
else
	Sleep %time1%
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 send {tab}
 send {enter}
 sleep %time2%

;流转设置
  wjm := "流转设置.PNG"
   ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
      MsgBox %wjm%.
else
	Sleep %time1%
 Click  %FoundX%,%FoundY%, 
 Sleep %time1%
 send {tab 4}
 send {right}
 send {tab 4}
 send {right 2}
  send {tab 4}
  sleep %time2%
  
  ;其他设置
   wjm := "其他设置.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
      MsgBox %wjm%.
else
	Sleep %time1%
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 send {tab }
 send 同意
  send {tab 3}
  Sleep %time1%
  send {enter}
  sleep %time2%
  */
  
  
  ;--------------------------一下都是函数-----------------------
 新增节点(X,Y,js,wjm)
{
sleep %time1%
 i := 0
 loop 
 {
      if (i>3)
      {
            i := 0
      }
 i := i+1
 fn := wjm i ".PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%fn%
if ErrorLevel  <> 0
{
 ToolTip, 未找到%fn%,600,30  
 }
else
{
 Sleep %time1%
 FoundX := FoundX + 10
FoundY := FoundY + 10
 Click  %FoundX%,%FoundY%,
 Click down
 Sleep %time1%
 Click up,%X%,%y%
 Sleep %time1%
 MouseMove, 60, 10, %ydsd%, R
 Sleep %time1%
 Click 2
 sleep %time2%
  send {TAB 11}
 Sleep %time1%
 send %js%
Sleep %time1%
break
}
}
}
添加步骤()
{
wjm := "发起人步骤.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
      MsgBox %wjm%.
else
	Sleep %time1%
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 send {end}
 Sleep %time1%
}
添加指定步骤(xybbz)
{
sleep %time1%
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%xybbz%
if ErrorLevel  <> 0
      MsgBox %xybbz%.
else
	Sleep %time1%
    FoundX := FoundX + 10
FoundY := FoundY + 10
 Click  %FoundX%,%FoundY%,0
 Sleep %time1%
 click 2
 sleep %time1%
}
选择经办人(jbr)
{
wjm := "经办人.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
      MsgBox %wjm%.
else
	Sleep %time1%
     FoundX := FoundX + 10
FoundY := FoundY + 10
 Click  %FoundX%,%FoundY%,
  Sleep %time1%
 send {tab 11}
 send {enter}
 send {tab 2}
 send {enter}
 sleep %time2%
 send {tab}
 sleep %time1%
 jbrjs := jbr "角色.PNG"
 send %jbr%
 sleep %time2%
 ;添加经办人角色
   ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%jbrjs%
if ErrorLevel  <> 0
      MsgBox %jbrjs%.
else
	Sleep %time1%
    FoundX := FoundX + 10
FoundY := FoundY + 10
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 send {tab}
 send {enter}
 sleep %time2%
}
流转其他设置()
{
;流转设置
  wjm := "流转设置.PNG"
   ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
      MsgBox %wjm%.
else
	Sleep %time1%
 Click  %FoundX%,%FoundY%, 
 Sleep %time1%
 send {tab 4}
 send {right}
 send {tab 4}
 send {right 2}
  send {tab 4}
  sleep %time2%
  
  ;其他设置
   wjm := "其他设置.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
      MsgBox %wjm%.
else
	Sleep %time1%
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 send {tab }
 send 同意
  send {tab 3}
  Sleep %time1%
  send {enter}
  sleep  %time2%
}
  ^F2::Pause