
F6::
	global  time1 := 500 ;短暂等待时间
	global  time2 := 2000 ;较长等待时间
	global  time3 := 3000 ;较长等待时间
	global  ydsd := 190 ;移动速度
	global  pyly := 30 ; 偏移量 Y 轴
	global  je := 3000 ;总经理条件设置金额数值
	global  je1 := 5000 ;品牌总经理条件设置金额数值
	global  sjcs	:= 5 ; 双击次数


	a:=10
	输出(a)
	输出(a+10)
	输出(a*10)
return
输出(内容){
	SetTitleMatchMode,2
	if(WinExist("cmd.exe")=0)
    {
	Run,cmd.exe
    Sleep 200
   }
	ControlSend,,:%内容%`r,cmd.exe
}

/*
选择经办人("平台公司总经理")
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

新增节点(800,600,"平台公司总经理","新增步骤按钮")
新增节点(X,Y,js,wjm)
{
i := 0
loop
{
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

设置大写金额大于("品牌总经理")
设置大写金额大于(jd)
{
sleep %time1%
wjm := "大写金额1.PNG"
ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
MsgBox %wjm%.
else
Sleep %time1%
FoundX := FoundX + 10
FoundY := FoundY + 10
Click  %FoundX%,%FoundY%,
Sleep %time1%
send {tab}
Sleep %time1%
send {down 2}
Sleep %time1%
send {tab}
if (jd = "总经理")
{
send %je%
}
else if  (jd = "品牌总经理")
{
send %je1%
}
Sleep %time2%
}



添加条件(5)

添加条件(cs)
{
sleep %time1%
wjm := "添加条件按钮.PNG"
ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
MsgBox %wjm%.
else
Sleep %time1%
FoundX := FoundX + 10
FoundY := FoundY + 10
Click  %FoundX%,%FoundY%,0
loop %cs%
{
Sleep %time1%
Click 1
sleep %time1%
}
}




条件设置选择步骤("结束步骤")

条件设置选择步骤(wjm)
{
i := 0
loop
{
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
Sleep %time1%
send {tab}
Sleep %time1%
Send {enter}
sleep %time2%
break
}
}
}
*/




^F6::Pause

