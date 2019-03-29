^!c:: ;使用ctrl+Alt+c
MouseGetPos, MouseX, MouseY ;获得鼠标位置x,y
PixelGetColor, color, %MouseX%, %MouseY%, RGB ;获得x,y处RGB颜色,以0xRRGGBB格式赋值于color
SetTimer, RemoveToolTip, 5000 ;设定时钟为5000ms
ToolTip, %color% ;光标处提示
return
RemoveToolTip:
SetTimer, RemoveToolTip, Off ;关闭时钟
ToolTip ;关闭提示
return ;End