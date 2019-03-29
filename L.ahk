/*
LaunchAltRUN.ahk
—-

原由:现在AltRUN貌似已停止更新, 而它又有偶发性丢失ShortCutList.txt的BUG,弄得很不爽.为了防止惨剧重现,写了此启动软件
用法:将本代码保存为AHK或编译后的EXE,和AltRUN待在一个文件夹里,本代码为AHK_L(U32)编译通过, 可以直接用AHK_L打开,或编译成EXE运行.以后运行AltRun时,只需要执行本文件即可
功能:用该程序启动AltRUN,并自动备份当前ShortCutList.txt到新生成的子目录Backup中,文件名为生成日期,在ShortCutList.txt丢失或异常(比最后一次备份文本缩小20%以上)时,提示是否恢复备份.

*/

SourceFile = ShortCutList.txt
BackupPath = %A_WorkingDir%\Backup
ExecFile := "ALTRun.exe"

LastBackupFile := getLastBackup()
if (LastBackupFile)	;有备份
{
	PretreatFile()	;检查List文件

}
else ifExist, %SourceFile%
	{
		BackupSource()
	}
ExeRun()
return

PretreatFile()
{
	global BackupPath, SourceFile, LastBackupFile
	IfNotExist, %SourceFile%	;不存在源文件, 提示恢复备份
	{
		MsgBox, 262164, 警告, ShortCutList.txt 文件没有找到.`n`n是否恢复最近一次备份?
		IfMsgBox, Yes
		{
			RestoreBackup()
		}
	}
	else
	{
		FileGetSize, SourceFileSize, %SourceFile%
		FileGetSize, LastBackupFileSize, %BackupPath%\%LastBackupFile%
		num := ( LastBackupFileSize - SourceFileSize )/LastBackupFileSize
				if (num >= 0.2)	;存在源文件, 但源文件缩小了20%
		{
			MsgBox, 262164, 警告, ShortCutList.txt 文件大小异常.`n`n是否恢复最近一次备份?
			IfMsgBox, Yes
			{
				RestoreBackup()
			}
		}
		else	;存在源文件, 且源文件正常
		{
			BackupSource()
		}
	}
	return
}

;获取最新备份文件
getLastBackup()
{
	global BackupPath
	tempFile = 0
	loop, %BackupPath%\*.txt, 0, 0
	{
		SplitPath, A_LoopFileName, , , , FileName
		if (FileName > tempFile)
		{
			tempFile := FileName
		}
	}
	if (tempFile)
	{
		tempFile = %tempFile%.txt
		return %tempFile%
	}
	return false
}

;运行程序
ExeRun()
{
	global ExecFile
	;MsgBox, Run, %A_WorkingDir%\%ExecFile%, %A_WorkingDir%, UseErrorLevel
	Run, %A_WorkingDir%\%ExecFile%
	if ErrorLevel
		MsgBox, % ErrorLevel
	return
}

;备份
BackupSource()
{
	global BackupPath, SourceFile
	FileCreateDir, %BackupPath%\
	FileCopy, %SourceFile%, %BackupPath%\%A_Now%.txt
	return
}

;恢复
RestoreBackup()
{
	global BackupPath, SourceFile, LastBackupFile
	FileCopy, %BackupPath%\%LastBackupFile%, %SourceFile%, 1
	return
}