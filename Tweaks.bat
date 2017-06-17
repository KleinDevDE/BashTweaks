@echo off
title Tweaks v1.0 - Xylit


:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, no admin permissions set
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------    

:Abfrage
REM --> This is the Home Screen
cls
echo #===================================================================#
echo #                  _______                 _                        #
echo #                 ^|__   __^|               ^| ^|                       #
echo #                    ^| ^|_      _____  __ _^| ^| _____                 #
echo #                    ^| ^\ \ /\ / / _ \/ _` ^| ^|/ / __^|                #
echo #                    ^| ^|^\ V  V /  __/ (_^| ^|   ^<\__ \                #
echo #                    ^|_^| ^\_/\_/ \___^|^\__,_^|_^|^\_\___/                #
echo #                         Version 1.1 - by Xylit                    #
echo #===================================================================#
echo.
echo.
echo (0) Windows
echo (1) Programs
echo (2) Games (under Construction)
echo (3) Install Tweaks (under Construction)
echo (4) Update Tweaks (under Construction)
REM --> Scanner to scan the Number youre typed in and open the specific Menu
set /p auswahl= 
IF %auswahl%==0 goto :Windows 
IF %auswahl%==1 goto :Programs
IF %auswahl%==2 goto :Abfrage
IF %auswahl%==3 goto :Abfrage
IF %auswahl%==4 goto :Abfrage
cls
echo Falsche Eingabe!
goto :Abfrage


:Windows
cls
echo #===================================================================#
echo #                  _______                 _                        #
echo #                 ^|__   __^|               ^| ^|                       #
echo #                    ^| ^|_      _____  __ _^| ^| _____                 #
echo #                    ^| ^\ \ /\ / / _ \/ _` ^| ^|/ / __^|                #
echo #                    ^| ^|^\ V  V /  __/ (_^| ^|   ^<\__ \                #
echo #                    ^|_^| ^\_/\_/ \___^|^\__,_^|_^|^\_\___/                #
echo #                         Version 1.1 - by Xylit                    #
echo #===================================================================#
echo.
echo                                  Windows
echo.
echo (0) Information
echo (1) ProductID 
set /p windows_auswahl= 
IF %windows_auswahl%==0 goto :Windows_Information
IF %windows_auswahl%==1 goto :Windows_productID 
echo Falsche Eingabe!
goto :Windows


:Programs
cls
echo #===================================================================#
echo #                  _______                 _                        #
echo #                 ^|__   __^|               ^| ^|                       #
echo #                    ^| ^|_      _____  __ _^| ^| _____                 #
echo #                    ^| ^\ \ /\ / / _ \/ _` ^| ^|/ / __^|                #
echo #                    ^| ^|^\ V  V /  __/ (_^| ^|   ^<\__ \                #
echo #                    ^|_^| ^\_/\_/ \___^|^\__,_^|_^|^\_\___/                #
echo #                         Version 1.1 - by Xylit                    #
echo #===================================================================#
echo.
echo                                  Programs
echo.
echo (0) Camtasia
echo (1) Kaspersky 
set /p programs_auswahl= 
IF %programs_auswahl%==0 goto :Camtasia
IF %programs_auswahl%==1 goto :Kaspersky
echo Falsche Eingabe!
goto :Programs

:Games
cls
echo #===================================================================#
echo #                  _______                 _                        #
echo #                 ^|__   __^|               ^| ^|                       #
echo #                    ^| ^|_      _____  __ _^| ^| _____                 #
echo #                    ^| ^\ \ /\ / / _ \/ _` ^| ^|/ / __^|                #
echo #                    ^| ^|^\ V  V /  __/ (_^| ^|   ^<\__ \                #
echo #                    ^|_^| ^\_/\_/ \___^|^\__,_^|_^|^\_\___/                #
echo #                         Version 1.1 - by Xylit                    #
echo #===================================================================#
echo
echo                                  Games
echo                             Copy Screenshots
echo.
echo (0) CS:GO
echo (1) Team Fortress 2
echo (2) FarCry 3
set /p games_auswahl= 
IF %games_auswahl%==0 goto :Games_CSGO
IF %games_auswahl%==1 goto :Games_TeamFortress2
IF %games_auswahl%==2 goto :Games_FarCry3
echo Falsche Eingabe!
goto :Games

:Camtasia
cls
echo #===================================================================#
echo #                  _______                 _                        #
echo #                 ^|__   __^|               ^| ^|                       #
echo #                    ^| ^|_      _____  __ _^| ^| _____                 #
echo #                    ^| ^\ \ /\ / / _ \/ _` ^| ^|/ / __^|                #
echo #                    ^| ^|^\ V  V /  __/ (_^| ^|   ^<\__ \                #
echo #                    ^|_^| ^\_/\_/ \___^|^\__,_^|_^|^\_\___/                #
echo #                         Version 1.1 - by Xylit                    #
echo #===================================================================#
echo.
echo                                  Camtasia
echo.
echo (0) Reset Trial
set /p camtasia_auswahl= 
IF %camtasia_auswahl%==0 goto :Camtasia_ResetTrial
IF %camtasia_auswahö%==1 goto :unset
IF %camtasia_auswahl%==2 goto
echo Falsche Eingabe!
goto :Camtasia


:Kaspersky
cls
echo #===================================================================#
echo #                  _______                 _                        #
echo #                 ^|__   __^|               ^| ^|                       #
echo #                    ^| ^|_      _____  __ _^| ^| _____                 #
echo #                    ^| ^\ \ /\ / / _ \/ _` ^| ^|/ / __^|                #
echo #                    ^| ^|^\ V  V /  __/ (_^| ^|   ^<\__ \                #
echo #                    ^|_^| ^\_/\_/ \___^|^\__,_^|_^|^\_\___/                #
echo #                         Version 1.1 - by Xylit                    #
echo #===================================================================#
echo.
echo                                Kaspersky
echo.
set /p ks= 
IF %ks%==1 goto :setdata 
IF %ks%==0 goto :unset
IF %ks%==2 goto
echo Falsche Eingabe!
goto :Kaspersky



:Camtasia_ResetTrial
echo Windows Registry Editor Version 5.00 > Camtasia\ResetTrial.reg
echo [-HKEY_LOCAL_MACHINE\SOFTWARE\Classes\dromjmfile] >> Camtasia\ResetTrial.reg
reg import Camtasia\ResetTrial.reg
cls
echo #===================================================================#
echo #                  _______                 _                        #
echo #                 ^|__   __^|               ^| ^|                       #
echo #                    ^| ^|_      _____  __ _^| ^| _____                 #
echo #                    ^| ^\ \ /\ / / _ \/ _` ^| ^|/ / __^|                #
echo #                    ^| ^|^\ V  V /  __/ (_^| ^|   ^<\__ \                #
echo #                    ^|_^| ^\_/\_/ \___^|^\__,_^|_^|^\_\___/                #
echo #                         Version 1.1 - by Xylit                    #
echo #===================================================================#
echo.
echo                      Camtasia Trialversion resettet!
echo.
pause
goto :Abfrage




:Windows_Information
cls
echo #===================================================================#
echo #                  _______                 _                        #
echo #                 ^|__   __^|               ^| ^|                       #
echo #                    ^| ^|_      _____  __ _^| ^| _____                 #
echo #                    ^| ^\ \ /\ / / _ \/ _` ^| ^|/ / __^|                #
echo #                    ^| ^|^\ V  V /  __/ (_^| ^|   ^<\__ \                #
echo #                    ^|_^| ^\_/\_/ \___^|^\__,_^|_^|^\_\___/                #
echo #                         Version 1.1 - by Xylit                    #
echo #===================================================================#
echo.
echo                           Windows Informations
echo.
echo (0) Ressourcen
echo (1) Product Key
set /p windows_information_auswahl= 
IF %windows_information_auswahl%==0 goto :Windows_Ressourcen
IF %windows_information_auswahl%==1 goto :Windows_productKey
echo Falsche Eingabe!
goto :Camtasia

:Windows_Ressourcen
cls
systeminfo
pause
goto :Abfrage

:Windows_productKey
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "6.3" cscript Tools\GetKeyWin8.vbs
if "%version%" == "6.2" cscript Tools\GetKeyWin8.vbs
if "%version%" == "6.1" cscript Tools\GetKeyWin7.vbs
if "%version%" == "6.0" cscript Tools\GetKeyWin7.vbs
if "%version%" == "10.0" cscript Tools\GetKeyWin8.vbs
timeout 5 >nul
cls
echo #===================================================================#
echo #                  _______                 _                        #
echo #                 ^|__   __^|               ^| ^|                       #
echo #                    ^| ^|_      _____  __ _^| ^| _____                 #
echo #                    ^| ^\ \ /\ / / _ \/ _` ^| ^|/ / __^|                #
echo #                    ^| ^|^\ V  V /  __/ (_^| ^|   ^<\__ \                #
echo #                    ^|_^| ^\_/\_/ \___^|^\__,_^|_^|^\_\___/                #
echo #                         Version 1.1 - by Xylit                    #
echo #===================================================================#
echo.
echo                       Your Windows Key: %Windows_Key%
echo                          %Windows_Key% 
echo.
pause
goto :Abfrage


:Windows_productID 
cls
echo #===================================================================#
echo #                  _______                 _                        #
echo #                 ^|__   __^|               ^| ^|                       #
echo #                    ^| ^|_      _____  __ _^| ^| _____                 #
echo #                    ^| ^\ \ /\ / / _ \/ _` ^| ^|/ / __^|                #
echo #                    ^| ^|^\ V  V /  __/ (_^| ^|   ^<\__ \                #
echo #                    ^|_^| ^\_/\_/ \___^|^\__,_^|_^|^\_\___/                #
echo #                         Version 1.1 - by Xylit                    #
echo #===================================================================#
echo.
echo                            Windows ProductID
echo.
echo (0) Backup Original ProductID (under Construction)
echo (1) Restore Origina ProductID (under Construction)
echo (2) Set Random ProductID
echo (3) Set custom ProductID
echo (4) See actually ProductID
echo WICHTIG! Erstelle speichere zuerst deine ProductID!
set /p windows_productID_auswahl= 
IF %windows_productID_auswahl%==0 goto :Windows_productID
IF %windows_productID_auswahl%==1 goto :Windows_productID
IF %windows_productID_auswahl%==2 goto :Windows_productID_random
IF %windows_productID_auswahl%==3 goto :Windows_productID_custom
IF %windows_productID_auswahl%==4 goto :Windows_productID_see
echo Falsche Eingabe!
goto :Windows_productID


:Windows_productID_see
echo =========================================================
reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductId
echo =========================================================
pause
goto :Abfrage

:Windows_productID_backup
set /a productID=<reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v ProductId
echo Windows Registry Editor Version 5.00 > Windows\ProductID\OriginaID.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion] >> Windows\ProductID\OriginaID.reg
echo "ProductId"="%productID%" >> Windows\ProductID\OriginaID.reg
cls
echo #===================================================================#
echo #                  _______                 _                        #
echo #                 ^|__   __^|               ^| ^|                       #
echo #                    ^| ^|_      _____  __ _^| ^| _____                 #
echo #                    ^| ^\ \ /\ / / _ \/ _` ^| ^|/ / __^|                #
echo #                    ^| ^|^\ V  V /  __/ (_^| ^|   ^<\__ \                #
echo #                    ^|_^| ^\_/\_/ \___^|^\__,_^|_^|^\_\___/                #
echo #                         Version 1.1 - by Xylit                    #
echo #===================================================================#
echo.
echo                              ProductID saved!
echo.
pause
goto :Abfrage

:Windows_productID_original
reg import Windows\ProductID\OriginaID.reg
cls
echo #===================================================================#
echo #                  _______                 _                        #
echo #                 ^|__   __^|               ^| ^|                       #
echo #                    ^| ^|_      _____  __ _^| ^| _____                 #
echo #                    ^| ^\ \ /\ / / _ \/ _` ^| ^|/ / __^|                #
echo #                    ^| ^|^\ V  V /  __/ (_^| ^|   ^<\__ \                #
echo #                    ^|_^| ^\_/\_/ \___^|^\__,_^|_^|^\_\___/                #
echo #                         Version 1.1 - by Xylit                    #
echo #===================================================================#
echo.
echo                            ProductID restored!
echo.
pause
goto :Abfrage

:Windows_productID_random
set randomID=%random%-%random%-%random%-%random%-%random%
echo Windows Registry Editor Version 5.00 > Windows\ProductID\RandomID.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion] >> Windows\ProductID\RandomID.reg
echo "ProductId"="%randomID%" >> Windows\ProductID\RandomID.reg
reg import Windows\ProductID\RandomID.reg
cls
echo #===================================================================#
echo #                  _______                 _                        #
echo #                 ^|__   __^|               ^| ^|                       #
echo #                    ^| ^|_      _____  __ _^| ^| _____                 #
echo #                    ^| ^\ \ /\ / / _ \/ _` ^| ^|/ / __^|                #
echo #                    ^| ^|^\ V  V /  __/ (_^| ^|   ^<\__ \                #
echo #                    ^|_^| ^\_/\_/ \___^|^\__,_^|_^|^\_\___/                #
echo #                         Version 1.1 - by Xylit                    #
echo #===================================================================#
echo.
echo                           ProductID changed to 
echo                                %randomID%
echo.
pause
goto :Abfrage

:Windows_productID_custom
echo "Gebe jetzt deine spezifische ProductID ein"
set /p customID=
echo Windows Registry Editor Version 5.00 > Windows\ProductID\CustomID.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion] >> Windows\ProductID\CustomID.reg
echo "ProductId"="%customID%" >> Windows\ProductID\CustomID.reg
reg import Windows\ProductID\CustomID.reg
cls
echo #===================================================================#
echo #                  _______                 _                        #
echo #                 ^|__   __^|               ^| ^|                       #
echo #                    ^| ^|_      _____  __ _^| ^| _____                 #
echo #                    ^| ^\ \ /\ / / _ \/ _` ^| ^|/ / __^|                #
echo #                    ^| ^|^\ V  V /  __/ (_^| ^|   ^<\__ \                #
echo #                    ^|_^| ^\_/\_/ \___^|^\__,_^|_^|^\_\___/                #
echo #                         Version 1.1 - by Xylit                    #
echo #===================================================================#
echo.
echo                           ProductID changed to
echo                                %customID%
echo.
pause
goto :Abfrage

:Install
cls
echo #===================================================================#
echo #                  _______                 _                        #
echo #                 ^|__   __^|               ^| ^|                       #
echo #                    ^| ^|_      _____  __ _^| ^| _____                 #
echo #                    ^| ^\ \ /\ / / _ \/ _` ^| ^|/ / __^|                #
echo #                    ^| ^|^\ V  V /  __/ (_^| ^|   ^<\__ \                #
echo #                    ^|_^| ^\_/\_/ \___^|^\__,_^|_^|^\_\___/                #
echo #                         Version 1.1 - by Xylit                    #
echo #===================================================================#
echo.
echo                             Installing...
echo.
timeout 3>nul
reg import Tools\Install.reg

:Update
SET FILENAME=%temp%\Tweaks.zip
#setting current version
set /p version=1.0
#checking latest version
Tools\wget\bin\wget.exe --no-check-certificate https://raw.githubusercontent.com/MCR-Xylit/Tweaks/master/version.txt
set /p nwstvrsn=<newversion.txt
set nwstvrsn=%nwstvrsn: =%
if %version% lss %nwstvrsn% goto newupdateavailable
if %version%==%nwstvrsn% goto noupdateavailable

:newupdateavailable
#downloading new version if it exists
echo #===================================================================#
echo #                  _______                 _                        #
echo #                 ^|__   __^|               ^| ^|                       #
echo #                    ^| ^|_      _____  __ _^| ^| _____                 #
echo #                    ^| ^\ \ /\ / / _ \/ _` ^| ^|/ / __^|                #
echo #                    ^| ^|^\ V  V /  __/ (_^| ^|   ^<\__ \                #
echo #                    ^|_^| ^\_/\_/ \___^|^\__,_^|_^|^\_\___/                #
echo #                         Version 1.1 - by Xylit                    #
echo #===================================================================#
echo.
echo                         Downloading Update..
echo.
Tools\wget\bin\wget.exe --no-check-certificate https://github.com/MCR-Xylit/Tweaks/archive/master.zip -P -P %temp%
:noupdateavailable
echo #===================================================================#
echo #                  _______                 _                        #
echo #                 ^|__   __^|               ^| ^|                       #
echo #                    ^| ^|_      _____  __ _^| ^| _____                 #
echo #                    ^| ^\ \ /\ / / _ \/ _` ^| ^|/ / __^|                #
echo #                    ^| ^|^\ V  V /  __/ (_^| ^|   ^<\__ \                #
echo #                    ^|_^| ^\_/\_/ \___^|^\__,_^|_^|^\_\___/                #
echo #                         Version 1.1 - by Xylit                    #
echo #===================================================================#
echo.
echo                          No Update Available
echo.
pause
exit
