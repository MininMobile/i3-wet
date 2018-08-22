#SingleInstance force
#InstallKeybdHook
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


if %0% = 0
{
	ExitApp
	Exit
}

Ctrl & Enter::
	KeyWait, Enter ; Wait for user to physically release it.
	Run, %1% !CommandMeasure "Controller" "NewWindow()" "%2%"
return
