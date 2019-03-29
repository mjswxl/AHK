 F1::


ImageSearch, FoundX, FoundY, 40,40, 1300, 1300, d:\mjs\png\平台公司总经理节点.PNG 
if ErrorLevel = 2
    MsgBox 品牌副总经理2.
else if ErrorLevel = 1
    MsgBox 品牌副总经理1.
else
	Sleep 500
 Click  %FoundX%,%FoundY%,
 Sleep 500
 send b
 Sleep 1500
 send {TAB 11}
 Sleep 500
 send 财务总监
 

ImageSearch, FoundX, FoundY, 40,40, 1300, 1300, d:\mjs\png\经办人.PNG 
if ErrorLevel = 2
    MsgBox 品牌副总经理2.
else if ErrorLevel = 1
    MsgBox 品牌副总经理1.
else
	Sleep 500
 Click  %FoundX%,%FoundY%,
 Sleep 500
  send {TAB 14}
  Sleep 500
  Send {enter}
  Sleep 500
  
  send +{tab}	
  Sleep 500
  Send {enter}
  Sleep 1000
Send {tab}
Sleep 500
send 财务总监
Sleep 1500



LOOP
{

ImageSearch , 找图_X , 找图_Y ,0 , 0 , 1920 , 1080 ,d:\mjs\png\财务总监角色.png

if ErrorLevel  <> 0

Sleep , 200

else

MouseMove ,  %找图_X% , %找图_Y%                     ;测试成功后，把这行删除，下一行的注释标记删除    

MouseClick , left , %找图_X% , %找图_Y%

} Until  (ErrorLevel  = 0)                                  ;=0时代码找到了退出循环体




 
 Sleep 1000
send {tab}{enter}
Sleep 500
Send {tab 3}{enter}
