F4::
global  time1 := 500 ;短暂等待时间
 global  time2 := 1000 ;较长等待时间
  global  time3 := 2000 ;较长等待时间
global  ddx := 0  ;流程分类定位坐标X
global   ddy := 0  ;流程分类定位坐标Y
global xpos :=0
global ypos :=0
获取鼠标当前坐标()
Loop
{
Click 434, 1001,1
i:=i+1

流程分类定位("流程图标")
点击("设计流程步骤",10,10)
Sleep %time3%
检测是否存在("维修总监节点")
点击("关闭流程设计器",68,10)
ToolTip, "i=" %i%,700,30  
if (ddy > 1026)
{
	MsgBox "已达到最低坐标值，循环停止"
	break
}
} Until  (i=34)



获取鼠标当前坐标()
{
	MouseGetPos, xpos, ypos 
	 ddy := ypos 
}

流程分类定位(wjm)
{
	 Click 0,0.0
	 i := 0
 loop 
 {
    if ( i > 20 )
  { 
  i = 0
  }
 i := i+1
 fn := wjm i ".PNG"
 ddy := ddy -15
  ImageSearch, FoundX, FoundY, 0,%ddy%, 2300, 2300, d:\mjs\png\%fn%
if ErrorLevel  <> 0
{
 ToolTip, 未找到%fn%,600,30  
 }
else
{
 Sleep %time1%
 ddx := FoundX
 ddy := FoundY +20
 ToolTip, "ddy= " %ddy%,500,30  
 Click  %FoundX%,%FoundY%,1
 Sleep %time2%
 break
}
}
}
点击(wjm,pylx,pyly)  ;wjm=文件名，pyl=坐标偏移量
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
  ImageSearch, djFoundX, djFoundY, 0,0, 2300, 2300, d:\mjs\png\%fn%
if ErrorLevel  <> 0
{
 ToolTip, 未找到%fn%,600,30  
 }
else
{
 Sleep %time1%
 djFoundX := djFoundX + pylx
djFoundY := djFoundY + pyly
 Click  %djFoundX%,%djFoundY%,1
 Sleep %time2%
 break
}
}
}

检测是否存在(wjm)  ;wjm=文件名
{
 i := 0
 loop 
 {
Sleep %time1%	
    if ( i > 20 )
  { 
  i = 0
  }
 i := i+1
 
 fn := wjm i ".PNG"
  ImageSearch, djFoundX, djFoundY, 0,0, 2300, 2300, d:\mjs\png\%fn%
if  (ErrorLevel  <> 0   and   i > 19 )
{
 RunWait , D:\mjs\AHK脚本\增加维修总监节点F2.exe
RunWait , D:\mjs\AHK脚本\财务经理节点条件设置F3.exe
break
 }
else  if  ( ErrorLevel  = 0  )
{
 Sleep %time1%
 break
}
}
}