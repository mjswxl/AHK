F3::
	global  time1 := 500 ;短暂等待时间
	global  time2 := 1000 ;较长等待时间
	global  time3 := 2000 ;较长等待时间
	global  ydsd := 190 ;移动速度
	global  pyly := 30 ; 便宜量 Y 轴
	global  je := 2000 ;总经理条件设置金额数值
	global  je1 := 5000 ;品牌总经理条件设置金额数值
	global  sjcs	:= 5 ; 双击次数

	;**********************总经理节点*******************************************
	选择节点("平台公司副总经理节点")
	修改步骤名称("财务总监")
	选择经办人("财务总监")
保存设置()
	;------------------- 总经理节点，品牌总经理步骤条件设置------------------

/*

;**********************总经理节点*******************************************
选择节点("总经理节点")
去掉下一步骤()
保存设置()
选择节点("总经理节点")
添加步骤()
添加指定步骤("品牌总经理步骤.png")
添加指定步骤("维修管理分管副总步骤.png")
添加指定步骤("财务总监步骤.png")
添加指定步骤("结束步骤.png")
点击条件设置()
;------------------- 总经理节点，品牌总经理步骤条件设置------------------
条件设置选择步骤("品牌总经理步骤")
删除按钮() ;删除原有条件公式
添加条件(2)
选择字段("c0字段.PNG")
设置主办人角色不包含("单店总经理")
选择字段("c1字段.PNG")
设置大写金额大于("总经理")
;----------------------------------------------------------------------------

;------------------- 总经理节点，财务总监步骤条件设置------------------
条件设置选择步骤("财务总监步骤")
删除按钮() ;删除原有条件公式
添加条件(3)
选择字段("c0字段.PNG")
设置主办人角色包含("单店总经理")
选择字段("c1字段.PNG")
设置大写金额大于("总经理")
选择字段("c2字段.PNG")
设置费用发生对口部门不包含("维修")
;----------------------------------------------------------------------------


;------------------- 总经理节点，维修管理分管副总步骤条件设置------------------
条件设置选择步骤("维修管理分管副总步骤")
删除按钮() ;删除原有条件公式
添加条件(3)
选择字段("c0字段.PNG")
设置主办人角色包含("单店总经理")
选择字段("c1字段.PNG")
设置大写金额大于("总经理")
选择字段("c2字段.PNG")
设置费用发生对口部门包含("维修")
;----------------------------------------------------------------------------

;------------------- 总经理节点，结束步骤条件设置------------------
条件设置选择步骤("结束步骤")
删除按钮() ;删除原有条件公式
添加条件(1)
选择字段("c0字段.PNG")
设置大写金额小于等于("总经理")
;----------------------------------------------------------------------------

;------------------- 保存------------------
保存设置()
sleep %time3%
;*******************************************

;*********************品牌总经理节点*******************************************
选择节点("品牌总经理节点")
去掉下一步骤()
保存设置()
选择节点("品牌总经理节点")
添加步骤()
添加指定步骤("结束步骤.png")
添加指定步骤("维修管理分管副总步骤.png")
添加指定步骤("财务总监步骤.png")
点击条件设置()
;------------------- 品牌总经理节点，财务总监步骤条件设置------------------
条件设置选择步骤("财务总监步骤")
删除按钮() ;删除原有条件公式
添加条件(2)
选择字段("c0字段.PNG")
设置大写金额大于("品牌总经理")
选择字段("c1字段.PNG")
设置费用发生对口部门不包含("维修")
;----------------------------------------------------------------------------


;------------------- 品牌总经理节点，维修管理分管副总步骤条件设置------------------
条件设置选择步骤("维修管理分管副总步骤")
删除按钮() ;删除原有条件公式
添加条件(2)
选择字段("c0字段.PNG")
设置大写金额大于("品牌总经理")
选择字段("c1字段.PNG")
设置费用发生对口部门包含("维修")
;----------------------------------------------------------------------------

;------------------- 品牌总经理节点，结束步骤条件设置------------------
条件设置选择步骤("结束步骤")
删除按钮() ;删除原有条件公式
添加条件(1)
选择字段("c0字段.PNG")
设置大写金额小于等于("品牌总经理")
;----------------------------------------------------------------------------

;------------------- 保存------------------
保存设置()
sleep %time3%
;*******************************************

;end

*/
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
添加指定步骤(xybbz)
{
	Sleep %time1%
	ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%xybbz%
	if ErrorLevel  <> 0
		MsgBox %xybbz%.
	else
		Sleep %time1%
	FoundX := FoundX + 10
	FoundY := FoundY + 10
	Click  %FoundX%,%FoundY%,0
	Sleep %time1%
	Click 2
	Sleep %time1%
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
	wjm := "发起人步骤.PNG"
	ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
	if ErrorLevel  <> 0
		MsgBox %wjm%.
	else
		Sleep %time1%
	Click  %FoundX%,%FoundY%,
	Sleep %time1%
	Send {end}
	Sleep %time1%
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
	loop  5
	{
		Click 2
		Sleep %time1%
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
		Sleep %time1%
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
			Send {tab}
			Sleep %time1%
			Send {Enter}
			Sleep %time2%
			break
		}
	}
}
添加条件(cs)
{
	Sleep %time1%
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
		Sleep %time1%
	}
}
设置主办人角色不包含(zbrjs)
{
	Sleep %time1%
	Send {end}
	Send {Enter}
	Sleep %time1%
	Send {tab}
	Sleep %time1%
	Send {end}
	Sleep %time1%
	Send {tab}
	Send %zbrjs%
	Sleep %time1%
}
设置主办人角色包含(zbrjs)
{
	Sleep %time1%
	Send {end}
	Send {Enter}
	Sleep %time1%
	Send {tab}
	Sleep %time1%
	Send {end}
	Sleep %time1%
	Send {up}
	Sleep %time1%
	Send {tab}
	Send %zbrjs%
	Sleep %time1%
}
设置主办人角色包含bak(zbrjs)
{
	Sleep %time1%
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
	Send {tab}
	Sleep %time1%
	Send {end}
	Sleep %time1%
	Send {up}
	Sleep %time1%
	Send {tab}
	Send %zbrjs%
	Sleep %time1%
}
设置大写金额大于(jd)
{
	Sleep %time1%
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
	Send {tab}
	Sleep %time1%
	Send {down 2}
	Sleep %time1%
	Send {tab}
	if (jd = "总经理")
	{
		Send %je%
	}
	else if  (jd = "品牌总经理")
	{
		Send %je1%
	}
	Sleep %time2%
}
设置大写金额小于等于(jd)
{
	Sleep %time1%
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
	Send {tab}
	Sleep %time1%
	Send {down 5}
	Sleep %time1%
	Send {tab}
	if (jd = "总经理")
	{
		Send %je%
	}
	else if  (jd = "品牌总经理")
	{
		Send %je1%
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
	Send {tab}
	Sleep %time1%
	Send {end}
	Sleep %time1%
	Send {tab}
	Send %fyfsdkbm%
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
	Send {tab}
	Sleep %time1%
	Send {end}
	Sleep %time1%
	Send {up}
	Sleep %time1%
	Send {tab}
	Send %fyfsdkbm%
	Sleep %time2%
}
选择节点(wjm)
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
			Sleep %time2%
			Send b
			Sleep %time1%
			break
		}
	}
}
修改步骤名称(js)
{
	Sleep %time2%
	Send {TAB 11}
	Sleep %time1%
	Send {del}
	Send %js%
	Sleep %time1%
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
 send {tab 14}
 send {enter}
 Sleep %time1%
 send +{tab}
 send {enter}
 sleep %time2%
 send {tab}
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
^F3::Pause