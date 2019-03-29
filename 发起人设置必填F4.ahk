F4::

sleep 500
  
  wjm := "发起人节点.PNG"
  ImageSearch, FoundX, FoundY, 40,40, 1300, 1300, d:\mjs\png\%wjm%
if ErrorLevel = 2
    MsgBox %wjm%2.
else if ErrorLevel = 1
    MsgBox %wjm%1.
else
	Sleep 500
 Click  %FoundX%,%FoundY%,
 Sleep 500
 send m
 Sleep 1500
 
   wjm := "费用发生对口部门字段.PNG"
  ImageSearch, FoundX, FoundY, 40,40, 2300, 2300, d:\mjs\png\%wjm%
if ErrorLevel = 2
    MsgBox %wjm%2.
else if ErrorLevel = 1
    MsgBox %wjm%1.
else
	Sleep 500
 Click  %FoundX%,%FoundY%,
 Sleep 500
click 2
sleep 500
send {tab 2}
sleep 500
send {enter}
sleep 500


  
^F4::Pause
 