global  time1 := 500 ;短暂等待时间
global  time2 := 1000 ;较长等待时间
global  time3 := 2000 ;较长等待时间
global  ydsd := 190 ;移动速度
global  pyly := 30 ; 便宜量 Y 轴
global  je := 3000 ;总经理条件设置金额数值
global  je1 := 10000 ;品牌总经理条件设置金额数值
global  sjcs	:= 5 ; 双击次数
选择节点("开始投影")
选择节点(wjm)
{
	loop
	{
		fn := wjm ".PNG"
        CoordMode Pixel
		ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%fn%
		if ErrorLevel  <> 0
		{
         CoordMode,ToolTip
         ToolTip, 未找到%fn%,0,0
		}
		else
		{
			Sleep %time1%
			FoundX := FoundX + 10
			FoundY := FoundY + 10
			Click  %FoundX%,%FoundY%,
			Sleep %time2%
		}
	}
}