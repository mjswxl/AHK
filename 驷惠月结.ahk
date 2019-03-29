+F2::
 global  time1 := 500 ;短暂等待时间
 global  time2 := 1000 ;较长等待时间
  global  time3 := 2000 ;较长等待时间
global  ydsd := 190 ;移动速度
global xpos :=0  ;鼠标当前X坐标
global ypos :=0  ;鼠标当前Y坐标
CoordMode, Mouse, Screen
CoordMode, Pixel, Screen
CoordMode, ToolTip, Screen
i:= 0
send !r
Sleep %time2%
if (IME_GET(WinTitle="") = 0)
{
 send +
}
send shautoclient
Sleep %time2%
send {enter}
loop
{
 i = i + 1
 点击("驷惠下一步",0,0)
}until (i=2)
send 88301662
send {enter}
/*
send 
获取鼠标当前坐标("x")
点击("选择框",0,0)
*/
;---------------------以下为函数----------------------
选择(wjm,pyx,pyy)  
 {
  i := 0
  x1 := xpos - 15
y1 := xpos - 15
x2 := xpos + 15
y2 := xpos + 15
  loop
  {
  if (i>20)
{
	i := 0
}
i := i + 1
  wjm1 := wjm i ".PNG"
  ImageSearch, FoundX, FoundY, %x1%,%y1%,%x2%,%y2%, d:\mjs\png\%wjm1%
if ErrorLevel  <> 0
ToolTip, 未找到:%wjm1%,600,30   
else
{
	Sleep %time1%
	FoundX := FoundX + pyx
	FoundY := FoundY + pyy
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 break
}
}
}
点击(wjm,pyx,pyy)  
 {
  i := 0
  loop
  {
  if (i>20)
{
	i := 0
}
i := i + 1
x1 := 0
y1 := 0
x2 := 2300
y2 := 2300
  wjm1 := wjm i ".PNG"
  ImageSearch, FoundX, FoundY, %x1%,%y1%,%x2%,%y2%, d:\mjs\png\%wjm1%
if ErrorLevel  <> 0
ToolTip, 未找到:%wjm1%,600,30   
else
{
 FoundX := FoundX + pyx
	FoundY := FoundY + pyy
	Sleep %time1%
 Click  %FoundX%,%FoundY%,
 Sleep %time1%
 break
}
}
}
获取鼠标当前坐标(wjm)
{
	MouseGetPos, xpos, ypos 
    
    ToolTip, 当前鼠标坐标： %xpos%.%ypos%,600,30   
	}


IME_GET(WinTitle="")
;-----------------------------------------------------------
; IMEの状態の取得
;    対象： AHK v1.0.34以降
;   WinTitle : 対象Window (省略時:アクティブウィンドウ)
;   戻り値  1:ON 0:OFF
;-----------------------------------------------------------
{
    ifEqual WinTitle,,  SetEnv,WinTitle,A
    WinGet,hWnd,ID,%WinTitle%
    DefaultIMEWnd := DllCall("imm32\ImmGetDefaultIMEWnd", Uint,hWnd, Uint)
 
    ;Message : WM_IME_CONTROL  wParam:IMC_GETOPENSTATUS
    DetectSave := A_DetectHiddenWindows
    DetectHiddenWindows,ON
    SendMessage 0x283, 0x005,0,,ahk_id %DefaultIMEWnd%
    DetectHiddenWindows,%DetectSave%
    Return ErrorLevel
}
;--------------------以上为函数-------------------

^F2::pause