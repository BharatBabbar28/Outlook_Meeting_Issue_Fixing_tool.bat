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
curl https://download.microsoft.com/download/1/7/d/17d82b72-bc6a-4dc8-bfaa-98b37b22b367/subinacl.msi -O


:installation
color F1
@echo off

msiexec  /i subinacl.msi /qn
echo "Intalled press any key to proceed permission"
echo off
"C:\Program Files (x86)\Windows Resource Kits\Tools\SUBINACL.exe" /keyreg "HKEY_CLASSES_ROOT\Installer\Components\F1291BD604B860441AB89E60BDEE0F9C" /setowner=administrators /grant=everyone=f
goto end


@pause
"C:\Program Files\Windows Resource Kits\Tools\SUBINACL.exe" /keyreg "HKEY_CLASSES_ROOT\Installer\Components\F1291BD604B860441AB89E60BDEE0F9C" /setowner=administrators /grant=everyone=f
goto end

:end
cd c:\
rmdir  "c:\acl" /Q /S
echo.
echo done press any key to exit
@pause 
exit
