Browser = Chrome

SetTitleMatchMode, 2

Menu, TRAY, Tip, Chrome Refresher



Gui, Add, Text, x6 y7 w50 h20, Seconds:

Gui, Add, Edit, x56 y7 w60 h20 +Left vpreSeconds, 300

Gui, Add, Button, x6 y37 w110 h30 gStart, Set Refesh Rate

Gui, Show, x400 y326, Chrome Refresher

Return



Start:

{

	Gui, Submit
	
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, *50 %A_ScriptDir%\paynow.PNG
	if(ErrorLevel = 0)
	{
		;MsgBox,,,"찾았다"+%FoundX%+%FoundY%
		
		;Send {Click %FoundX% %FoundY%}
		MX = %FoundX%
		MY = %FoundY%
		Sleep, 500
		MouseClick, Left, MX+10, MY+10
		
		Sleep, 1000
		Run,C:\Users\Hyuin_Dev\AppData\Local\Discord\Update.exe --processStart Discord.exe
		Sleep, 500
		
		MouseClick, Left, 752, 838
		Sleep, 500
		
		send, {a down}
		sleep, 500
		send, {a up}
		send, {Enter}
		
		ExitApp
	}
	
	Seconds := preSeconds * 1000

	SetTimer, Refresh, %Seconds%

	return
}



Refresh:

{

	;ControlSend, , {F5}, %Browser%


	WinActivate,ahk_class Chrome_WidgetWin_1

	ControlSend,,{F5},ahk_class Chrome_WidgetWin_1
	sleep, 500

	return

}


GuiClose:

ExitApp
