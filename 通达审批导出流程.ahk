F3::
	global  time1 := 500 ;短暂等待时间
	global  time2 := 1000 ;较长等待时间
	global  time3 := 2000 ;较长等待时间
	global  ydsd := 190 ;移动速度
	;global  pyly := 30 ; 便宜量 Y 轴
	global  je := 2000 ;总经理条件设置金额数值
	global  je1 := 5000 ;品牌总经理条件设置金额数值
	global  sjcs	:= 5 ; 双击次数
	text  =
(
办公费及低值易耗品审批
保险费审批
差旅费审批
场地租赁费审批
福利费审批
工资及奖金审批
公章使用审批
广告宣传费用审批
配件、装潢精品付款审批
平台公司资金使用审批
人员离职审批
事故车返利月度结算表审批
试乘试驾车处置审批
新增供应商及产品审批
修理费用审批
业务性支出审批
运输费审批
咨询费审批
子公司银行销户申请
)
	Loop, Parse, text, `n, 
{
    ;MsgBox, %x%
	;导出(A_LoopField,"绍兴康致汽车有限公司")
}
MsgBox ,导出完成	

	导出(sr,gsmc)
	{
		
		找图("工作文号",150,0)
		清除文本框()
		zjm := "-浙江康桥汽车有限公司/"
		Send %sr%%zjm%%gsmc%
		找图("查询按钮",0,0)
		判断是否存在("没有检索到数据")
		找图("流水号",10,5)
		找图("工作导出",0,0)
		找图("通达保存按钮",10,10)
		A:
		return
		;send {home}
	}
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
				goto,  A
				break
			}
		}
		
	}
找图(zt,pylx,pyly)
{
	i := 0
	wjm := zt
	loop
	{
		ImageSearch, FoundX, FoundY, 0,0, 2300, 2300, d:\mjs\png\%wjm%.PNG
		if ErrorLevel  <> 0
		{	;MsgBox 找不到%wjm%.PNG
			i += 1
			wjm := zt i
			if (i > 3 )
			{
				wjm := zt
				i := 0
			}
		}
		else
		{
			Sleep %time1%
			FoundX := FoundX + pylx
			FoundY := FoundY + pyly
			;MsgBox 找到%zt%.PNG
			;MouseMove, FoundX,  FoundY
			Click  %FoundX%,%FoundY%,
			Sleep %time1%
			break
		}
	}
}
清除文本框()
{
	Send {home}
	Send  +{end}
	Send {del}
}
