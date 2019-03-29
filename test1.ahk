F4::
	判断是否存在("没有检索到数据")
	判断是否存在(zt)
	{
		i := 0
		wjm := zt
		loop  
		{
			i := i + 1
			Sleep 500
			
			ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%.PNG
			if ErrorLevel  = 0
			{	;MsgBox 找不到%wjm%.PNG
				MsgBox,有错误%i%
			}
			 if (  i > 3 )
			{
				MsgBox,"elseif" %i%
				break
			}
		}
		
	}
return
~RButton::MsgBox 您按下了鼠标右键