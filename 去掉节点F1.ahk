F1::
;去掉节点
 time1 := 500 ;短暂等待时间
 time2 := 2000 ;较长等待时间
 
 
 wjm := "平台公司副总经理节点.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
	    wjm := "平台公司副总经理节点2.PNG"
     ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
	wjm := "平台公司副总经理节点3.PNG"
     ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
     ToolTip, %wjm%,600,20
else
	Sleep %time1%
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 send d
 Sleep %time1%
 send {Enter}
sleep %time2%

 wjm := "平台公司总经理节点.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
	    wjm := "平台公司总经理节点2.PNG"
     ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
	wjm := "平台公司总经理节点3.PNG"
     ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
     ToolTip, %wjm%,600,20
else
	Sleep %time1%
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 send d
 Sleep %time1%
 send {Enter}
sleep %time2%

 wjm := "品牌副总经理节点.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
	    wjm := "品牌副总经理节点2.PNG"
     ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
	wjm := "品牌副总经理节点3.PNG"
     ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
     ToolTip, %wjm%,600,20
else
	Sleep %time1%
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 send d
 Sleep %time1%
 send {Enter}
sleep %time2%

wjm := "品牌事业部总经理节点.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
	    wjm := "品牌事业部总经理节点2.PNG"
     ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
	wjm := "品牌事业部总经理节点1.PNG"
     ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
     ToolTip, %wjm%,600,20
else
	Sleep %time1%
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 send d
 Sleep %time1%
 send {Enter}
sleep %time2%

 wjm := "平台公司对口部门节点.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
	    wjm := "平台公司对口部门节点2.PNG"
     ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
	wjm := "平台公司对口部门节点3.PNG"
     ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
     ToolTip, %wjm%,600,20
else
	Sleep %time1%
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 send d
 Sleep %time1%
 send {Enter}
sleep %time2%

 wjm := "财务总监节点.PNG"
  ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
	    wjm := "财务总监节点2.PNG"
     ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
	wjm := "财务总监节点3.PNG"
     ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel  <> 0
     ToolTip, %wjm%,600,20
else
	Sleep %time1%
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 send d
 Sleep %time1%
 send {Enter}
sleep %time2%

^F1::Pause
