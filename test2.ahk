F3::

点击("驷惠下一步",0,0)
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
 Click  %FoundX%,%FoundY%,2
 Sleep %time1%
 msgbox 找到了
 break
}
}
}