F2::
 global time1 := 1000 ;短暂等待时间
 global time2 := 2000 ;较长等待时间
 global ydsd := 1 ;移动速度


 
 
jsss := "维修管理分管副总"
/*
新增节点(774, 315,jsss)
添加指定步骤("平台公司财务经理")
*/
选择经办人(jsss)
;----------------------------------------------------------------

  ;--------------------------一下都是函数-----------------------
 新增节点(X,Y,js) ;x=x坐标，y=y坐标，js=角色
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
 wjm := "新增步骤按钮"
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
添加指定步骤(wjm)
{
sleep %time1%
xybbz := wjm ".PNG"
loop
{
	  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%xybbz%
if ErrorLevel  <> 0
   {
    添加步骤()
   }
else
{
	Sleep %time1%
    FoundX := FoundX + 10
FoundY := FoundY + 10
 Click  %FoundX%,%FoundY%,0
 Sleep %time1%
 click 2
 sleep %time1%
 break
}
}
}
选择经办人(wjm)
{
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\经办人.PNG
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
 
 send %wjm%
 sleep %time2%
 ;添加经办人角色
 i := 0
 loop
 {
	i := i+1
	if (i >20)
	{
		i = 0
	}
	jbrjs := wjm  "角色" i ".PNG"
   ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%jbrjs%
if ErrorLevel  <> 0
      {
      tooltip  %jbrjs%,600,20
      }
else
	{
	Sleep %time1%
    FoundX := FoundX + 10
FoundY := FoundY + 10
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 send {tab}
 send {enter}
 sleep %time2%
 break 
}
}
 流转其他设置("保存")
}
流转其他设置(wjm)
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
  ^F12::Pause