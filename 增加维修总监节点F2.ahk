; F2::
 global time1 := 1000 ;短暂等待时间
 global time2 := 2000 ;较长等待时间
 global ydsd := 1 ;移动速度


 
 
 ;-----------------新增维修总监‘；节点-------------------
新增节点(580, 208,"维修总监","新增步骤按钮")
;添加步骤()
添加指定步骤("总经理步骤.png")
选择经办人("维修总监")
流转其他设置()
;----------------------------------------------------------------

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

Sleep  3000
  send {F3}
  ;^F2::Pause