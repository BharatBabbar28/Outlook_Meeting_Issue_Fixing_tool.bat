@Echo off

	:Author
color 0F
ECHO	  #################################################################
ECHO   #                                                               #
ECHO	  #                                                               #
ECHO	  # Bharat Babbar                                                 #
ECHO	  # Bharatbabbar28@gmail.com                                      #
ECHO   #                                                               #
ECHO   # Donate Bitcoins :- 15XgKbvduGygsNc1eUfkb2h5B5Q5su3X1V         #
ECHO   # Donate Etheriums:- 0xEdf3bbB6457ec13ACb13690A693b1952B9E2BF69 #
ECHO   #                                                               #
ECHO	  #################################################################
pause
cls

	:Title
color 0E
ECHO  ************************************************************																								   
ECHO    "Either there is no default mail client or current mail client cannot fulfill the messaging request. 
ECHO	   Please run Microsoft Outlook and set it as the default mail client."
ECHO	   This script will fix meeting issue in your MS Outlook         

ECHO    -: COMPATIBLE WITH WINDOWS-7-X86 and X64, 8, 8.1 and 10 :-                                                                                                                																											  
ECHO  ************************************************************
pause
cls

:download
color F1
@echo off
rmdir  "c:\acl" /Q /S
md c:\acl
cd c:\acl
bitsadmin /transfer "Download zip" /download /priority normal https://download.microsoft.com/download/1/7/d/17d82b72-bc6a-4dc8-bfaa-98b37b22b367/subinacl.msi "c:\acl\subinacl.msi"


color F1
@ECHO off
ECHO  Pleae select one of the options
ECHO  ----------------------------------------------------------------------------------------------------------------------
ECHO  1 For Windows 32 bit Operating System
ECHO  2 For Windows 64 bit Operating System
ECHO  Q Quit (task will not be done if you choose this option)
ECHO  ----------------------------------------------------------------------------------------------------------------------



SET /p option=Please enter one of the options:

if %option%==1  ( goto :WindowsX86 )		else set /a er=1
if %option%==2  ( goto :WindowsX64 )		else set /a er=er+1
if %option%==Q  ( goto :ForExit )			else set /a er=er+1


:WindowsX86
color F1
@echo off

msiexec  /i subinacl.msi /qn
echo "Intalled press any key to proceed permission"
echo off
"C:\Program Files\Windows Resource Kits\Tools\SUBINACL.exe" /keyreg "HKEY_CLASSES_ROOT\Installer\Components\F1291BD604B860441AB89E60BDEE0F9C" /setowner=administrators /grant=everyone=f
goto :ForExit


:WindowsX64
color F1
@echo off

msiexec  /i subinacl.msi /qn
echo "Intalled press any key to proceed permission"
echo off
"C:\Program Files (x86)\Windows Resource Kits\Tools\SUBINACL.exe" /keyreg "HKEY_CLASSES_ROOT\Installer\Components\F1291BD604B860441AB89E60BDEE0F9C" /setowner=administrators /grant=everyone=f
goto :ForExit



:ForExit
cd c:\
rmdir  "c:\acl" /Q /S
echo.
echo.
echo.
echo 	Task Completed 
echo.
echo.
echo.
@pause 
exit
