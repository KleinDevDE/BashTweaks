@echo off
title Tweaks v1.0 - Xylit

:Abfrage
echo #===================================================================#
echo #                  _______                 _                        #
echo #                 ^|__   __^|               ^| ^|                       #
echo #                    ^| ^|_      _____  __ _^| ^| _____                 #
echo #                    ^| ^\ \ /\ / / _ \/ _` ^| ^|/ / __^|                #
echo #                    ^| ^|^\ V  V /  __/ (_^| ^|   ^<\__ \                #
echo #                    ^|_^| ^\_/\_/ \___^|^\__,_^|_^|^\_\___/                #
echo #                         Version 1.0 - by Xylit                    #
echo #===================================================================#
echo (0) Windows
echo (1) Kaspersky
echo (2) Camtasia

set /p auswahl= 
IF %auswahl%==0 goto :Windows 
IF %auswahl%==1 goto :Kaspersky
IF %auswahl%==2 goto :Camtasia
cls
echo Falsche Eingabe!
goto :Abfrage


:Windows
cls
echo (0) Information
echo (1) ProductID 
set /p windows_auswahl= 
IF %windows_auswahl%==0 goto :Windows_Information
IF %windows_auswahl%==1 goto :Windows_productID 
echo Falsche Eingabe!
goto :Windows

:Kaspersky
cls
set /p ks= 
IF %ks%==1 goto :setdata 
IF %ks%==0 goto :unset
IF %ks%==2 goto
echo Falsche Eingabe!
goto :Kaspersky

:Camtasia
cls
echo (0) Reset Trial
set /p camtasia_auswahl= 
IF %camtasia_auswahl%==0 goto :Camtasia_ResetTrial
IF %camtasia_auswahö%==1 goto :unset
IF %camtasia_auswahl%==2 goto
echo Falsche Eingabe!
goto :Camtasia

:Camtasia_ResetTrial
echo Windows Registry Editor Version 5.00 > Camtasia\ResetTrial.reg
echo [-HKEY_LOCAL_MACHINE\SOFTWARE\Classes\dromjmfile] >> Camtasia\ResetTrial.reg
elevate reg import Camtasia\ResetTrial.reg
echo Camtasia Testlaufzeit resettet!
pause
goto :Abfrage


:Windows_Information
cls
systeminfo


:Windows_productID 
cls
echo (0) Restore Original ProductID
echo (1) Set Random ProductID
echo (2) Set custom ProductID
set /p windows_productID_auswahl= 
IF %windows_productID_auswahl%==0 goto :Windows_productID_original
IF %windows_productID_auswahl%==1 goto :Windows_productID_random
IF %windows_productID_auswahl%==2 goto :Windows_productID_custom
echo Falsche Eingabe!
goto :Windows_productID

:Windows_productID_original
elevate reg import Windows\ProductID\OriginaID.reg
echo ProductID wiederhergestellt!
pause
goto :Abfrage

:Windows_productID_random
set randomID=%random%-%random%-%random%-%random%-%random%
echo Windows Registry Editor Version 5.00 > Windows\ProductID\RandomID.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion] >> Windows\ProductID\RandomID.reg
echo "ProductId"="%randomID%" >> Windows\ProductID\RandomID.reg
elevate reg import Windows\ProductID\RandomID.reg
echo ProductID changed to %randomID%
pause
goto :Abfrage

:Windows_productID_custom
echo "Gebe jetzt deine spezifische ProductID ein"
set /p customID=
echo Windows Registry Editor Version 5.00 > Windows\ProductID\CustomID.reg
echo [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion] >> Windows\ProductID\CustomID.reg
echo "ProductId"="%customID%" >> Windows\ProductID\CustomID.reg
elevate reg import Windows\ProductID\CustomID.reg
echo "ProductID changed to %customID%"
pause
goto :Abfrage