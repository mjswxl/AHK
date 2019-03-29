F3::
 global  time1 := 500 ;短暂等待时间
 global  time2 := 1000 ;较长等待时间
  global  time3 := 2000 ;较长等待时间
global  ydsd := 190 ;移动速度
global  pyly := 30 ; 便宜量 Y 轴
 global  je := 2000 ;总经理条件设置金额数值
 global  je1 := 5000 ;品牌总经理条件设置金额数值
global  sjcs	:= 5 ; 双击次数
global  zdx := 0 ;条件设置-字段选择开始x坐标
global  zdy := 0  ;条件设置-字段选择开始y坐标
global  glx := 0 ;过滤分组开始X坐标
global  gly := 0  ;过滤分组开始Y坐标

/*
;**********************平台公司总经理节点*******************************************
 选择节点("平台公司总经理节点")
添加步骤()
 添加指定步骤("集团副总裁步骤")
 点击条件设置()
 */
  ;------------------- 平台公司总经理节点-集团副总裁步骤条件设置------------------
条件设置选择步骤("集团副总裁步骤")
gly := 0 
添加条件(1)
设置条件("c0字段","大写金额","大于","200000")

 ;------------------- 平台公司总经理节点-结束步骤条件设置------------------
条件设置选择步骤("结束步骤")
gly := 0 
添加条件(1)
设置条件("c0字段","大写金额","小于等于","200000")
;----------------------------------------------------------------------------

/*
;**********************财务经理节点*******************************************
 选择节点("财务经理节点")
添加步骤()
 添加指定步骤("维修总监步骤1.png")
 点击条件设置()
  ;------------------- 财务经理节点-维修总监步骤条件设置------------------
条件设置选择步骤("维修总监步骤")
gly := 0 
添加分组(2)
过滤分组("与")
添加条件(0)
过滤分组("或")
添加条件(3)
过滤分组("与")
添加条件(1)
设置条件("c0字段.PNG","所属部门","包含","傲众")
设置条件("c1字段.PNG","所属部门","包含","宏马")
设置条件("c2字段.PNG","所属部门","包含","荣欣")
设置条件("c3字段.PNG","费用发生对口部门","包含","维修")
;----------------------------------------------------------------------------

 ;------------------- 财务经理节点-总经理步骤条件设置------------------
条件设置选择步骤("总经理步骤")
gly := 0 
添加分组(2)
过滤分组("或")
添加条件(0)
过滤分组("与")
添加条件(3)
过滤分组("与")
添加条件(1)
设置条件("c0字段.PNG","所属部门","不包含","傲众")
设置条件("c1字段.PNG","所属部门","不包含","宏马")
设置条件("c2字段.PNG","所属部门","不包含","荣欣")
设置条件("c3字段.PNG","费用发生对口部门","不包含","维修")
;----------------------------------------------------------------------------
*/
 
  ;------------------- 保存------------------
  保存设置()
  sleep %time3%
  ;*******************************************
 
 
 
 ;###################以下都是函数######################
 
 保存设置()
{
 loop 
 {
MouseMove ,0,0
   Sleep %time1%									
wjm := "保存按钮.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if (ErrorLevel  <> 0)
	{		
      ToolTip, 未找到,600,30 
}
else 
{
 ToolTip, 找到,600,30
	 MouseMove ,0,0
Sleep %time1%
FoundX := FoundX + 10
FoundY := FoundY + 10
 Click  %FoundX%,%FoundY%,
   MouseMove ,0,0
   Sleep %time2%	
   break
 }
}
}
添加指定步骤(wjm)
{
 i := 0
 loop
 {
 i := i+1
if (i>20)
{
 i := 0
}
sleep %time1%
xybbz := wjm i ".PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%xybbz%
if ErrorLevel  <> 0
ToolTip, 添加指定步骤：  %xybbz%,600,30  
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
删除按钮()
{
 loop 
 {
MouseMove ,0,0
   Sleep %time1%									
wjm := "删除按钮1.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if (ErrorLevel  <> 0)
	{		
      ToolTip, 未找到,600,30
 break
}
else 
{
 ToolTip, 找到,600,30
	 MouseMove ,0,0
Sleep %time1%
FoundX := FoundX + 10
FoundY := FoundY + 10
 Click  %FoundX%,%FoundY%,
   MouseMove ,0,0
   Sleep %time1%	
 }
}
}
添加步骤()
{
 loop
 {
wjm := "发起人步骤.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
ToolTip, 未找到%wjm%,600,30   
else
{
	Sleep %time1%
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 send {end}
 Sleep %time1%
 break
}
}
}

去掉下一步骤()
{
 wjm := "去掉下一步骤.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
      MsgBox %wjm%.
else
	Sleep %time1%
    FoundX := FoundX + 10
FoundY := FoundY + 30
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
LOOP  5
{
click 2
sleep %time1%
}
}
 点击条件设置()
 {
  wjm := "条件设置.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
      MsgBox %wjm%.
else
	Sleep %time1%
 Click  %FoundX%,%FoundY%,
 Sleep %time2%
}
选择字段(wjm)
{
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
      MsgBox %wjm%.
else
sleep %time1%
zdx :=  FoundX 
zdy :=  FoundY  
 FoundX := FoundX + 60
FoundY := FoundY + 10
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
}
条件设置选择步骤(wjm)
{
 i := 0
 loop 
 {
 i := i+1
 if (i >20)
 {
  i := 0
 }
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
添加条件(cs) ;cs=次数
{
 sleep %time1%
wjm := "添加条件按钮.PNG"
y := gly - 11
 ToolTip, "gly" %gly%,600,30  
  ImageSearch, FoundX, FoundY, 0,%y%, 2300, 2300, d:\mjs\png\%wjm%
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
添加分组(cs) ;cs=次数
{
 sleep %time1%
wjm := "添加分组.PNG"
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
 设置主办人角色不包含(zbrjs)
 {
 sleep %time1%
 send {end}
 send {enter}
 Sleep %time1%
send {tab}
 Sleep %time1%
 send {end}
 Sleep %time1%
 send {tab}
 send %zbrjs%
 Sleep %time1%
}
设置主办人角色包含(zbrjs)
 {
 sleep %time1%
 send {end}
 send {enter}
  Sleep %time1%
send {tab}
 Sleep %time1%
 send {end}
 Sleep %time1%
  send {up}
 Sleep %time1%
 send {tab}
 send %zbrjs%
 Sleep %time1%
}
设置主办人角色包含bak(zbrjs)
 {
  sleep %time1%
  wjm := "当前主办人角色.PNG"
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
 send {end}
 Sleep %time1%
  send {up}
 Sleep %time1%
 send {tab}
 send %zbrjs%
 Sleep %time1%
}
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
 设置大写金额小于等于(jd)
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
 send {down 5}
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

设置费用发生对口部门不包含(fyfsdkbm)
{
 wjm := "费用发生对口部门.PNG"
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
 send {end}
 Sleep %time1%
  send {tab}
 send %fyfsdkbm%
 Sleep %time2%
}
设置费用发生对口部门包含(fyfsdkbm)
{
 wjm := "费用发生对口部门.PNG"
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
 send {end}
 Sleep %time1%
  send {up}
 Sleep %time1%
  send {tab}
 send %fyfsdkbm%
 Sleep %time2%
}
选择节点(wjm)
{
 i := 0
 loop 
 {
    if ( i > 20 )
  { 
  i = 0
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
 Click  %FoundX%,%FoundY%,2
 Sleep %time2%
 break
}
}
}
过滤分组(x)  ;x=或、与
{
 loop 
 {
  ImageSearch, FoundX, FoundY, 0,%gly%, 2300, 2300, d:\mjs\png\过滤分组.PNG
if ErrorLevel  <> 0
{
 ToolTip, 未找到 过滤分组 %glx% %gly%,600,30  
 }
else
{
 Sleep %time1%
 ;MsgBox 过滤分组 %FoundX% %FoundY%
 glx := FoundX+ 10
gly := FoundY + 10
 FoundX := FoundX + 152
FoundY := FoundY + 10
glx := FoundX
gly := FoundY
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 ;send {tab} 
 Sleep %time1%
if  (x = "或")
{
  send {end}

}
else
{
 send {end}
 send {up}
}
  send {enter}
break
}
}
}
设置条件(xzzd,zd,tj,z)  ;xzzd=c？字段，zd=字段，tj=条件，z=值
{
 loop
 {
  xzzd := xzzd ".PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%xzzd%
if ErrorLevel  <> 0
ToolTip, 设置条件： %xzzd% ,600,30  
else
sleep %time1%
zdx :=  FoundX 
zdy :=  FoundY  
 FoundX := FoundX + 60
FoundY := FoundY + 10
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 break
}
 
 i := 0
loop
{
 i := i + 1
 wjm := zd i ".PNG"
 ImageSearch, FoundX, FoundY, %zdx%,%zdy%, 2300, 2300, d:\mjs\png\%wjm%
if (ErrorLevel  <> 0)
{    
ToolTip, 设置条件： %xzzd% ,600,30  
}
else
{	Sleep %time1%
     FoundX := FoundX + 10
FoundY := FoundY + 10
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
send {tab}
break
}
}
if (tj="包含")
{
 Sleep %time1%
 send {end}
 send {up}
 Sleep %time1%
  send {tab}
 }
 if (tj="不包含")
{
 Sleep %time1%
 send {end}
  Sleep %time1%
  send {tab}
 }
  if (tj="大于")
{
 Sleep %time1%
 loop
 {
  i:=i+1
  send {down}
  sleep %time1%
 }Until  (i=3)
  send {tab}
 }
   if (tj="小于等于")
{
 loop
 {
  i:=i+1
  send {down}
  sleep %time1%
 }Until  (i=6)
  send {tab}
 }
 send %z%
 Sleep %time2%
}
;^F3::Pause