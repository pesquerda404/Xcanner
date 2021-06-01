@echo off
title Xcanner 3.0
REM NO TANCAR LA FINESTRA
if not defined in_subprocess (cmd /k set in_subprocess=y ^& %0 %*) & exit )
REM BANNER MENU PRINCIPAL
:menu
cls
color 04
echo.
echo            ////////////////////////////////////////////////////////////////////////////////////////////////////
echo          ///////////////////////////////////////    WELCOME TO    //////////////////////////////////////////////
echo        //////////////////////////////////////////////////////////////////////////////////////////////////////////
echo      ////////////////////    X   X     XX      X      XX    X  XX    X  XXXXXX  XXXXXX    ////////////////////////
echo    //////////////////////     X X    X        X X     X X   X  X X   X  X       X    X    /////////////////////////
echo  ////////////////////////      X    X        X   X    X  X  X  X  X  X  XXXX    XXXXXX    //////////////////////////
echo   ///////////////////////     X X    X      XXXXXXX   X   X X  X   X X  X       X  X      //////////////////////// 
echo    //////////////////////    X   X     XX  X       X  X    XX  X    XX  XXXXXX  X    X    3.0  ///////////////// 
echo     //////////////////////////////////////////////////////////////////////////////////////////////////////////
echo      ///////////////////////////////////////    by: pesquerda404    ////////// Windows Edition /////////////
echo       ////////////////////////////////////////////////////////////////////////////////////////////////////
echo.
echo.
echo                                                  ////////////
echo  ////////////////////////////////////////////////////MENU////////////////////////////////////////////////////////////
echo  /                                               ////////////                                                       /
echo  /         1-Ping                                                                                                   /
echo  /         2-Tracert                                                                                                /
echo  /         3-Pathping                                                                                               /
echo  /         4-Curl                                                                                                   /
echo  /         5-IPconfig                                                                                               /
echo  /         6-Nslookup                                                                                               /
echo  /         7-Netstat                                                                                                /
echo  /         8-Getmac                                                                                                 /
echo  /         9-Info                                                                                                   /
echo  /                                                                                                                  /
echo  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
echo.
REM REM PS1 MENU PRINCIPAL
set /p of="X3.0>>> "
REM OPCIONS MENU PERINCIPAL
if %of%==1 goto Ping
if %of%==2 goto Tracert
if %of%==3 goto xdmenu
if %of%==4 goto xcmenu
if %of%==5 goto IPconfig
if %of%==6 goto Nslookup
if %of%==7 goto Netstat
if %of%==8 goto Getmac
if %of%==9 goto info
REM PING
:Ping
cls
REM PS1 PING
set /p qu="URL, IP or Host>>> "
cls
REM BANNER MENU PING
:pmenu
echo.
echo                                                  ////////////////
echo  ////////////////////////////////////////////////////PING MENU///////////////////////////////////////////////////////
echo  /                                               ////////////////                                                   /
echo  /         1-Normal Ping                                                                                            /
echo  /         2-Specify number of pakages                                                                              /
echo  /         3-Pakages Size                                                                                           /
echo  /         4-Pakage Route                                                                                           /
echo  /         5-Timeout                                                                                                /
echo  /         6-Exit                                                                                                   /
echo  /                                                                                                                  /
echo  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
echo.
REM OPCIONS PING
set /p md="Select Mode>>> "
if %md%==1 goto normalp
if %md%==2 goto number
if %md%==3 goto size
if %md%==4 goto route
if %md%==5 goto time
if %md%==6 goto menu 
REM NORMAL PING 
:normalp
cls
ping %qu%
pause
cls
goto pmenu
cls
REM NUMBER
:number
cls
REM NUMBER PS1
set /p sz="Select number of pakages 1-4294967295>>> " 
cls
ping -n %sz% %qu%
pause 
cls
goto pmenu
cls
REM SIZE
:size
cls
REM SIZE PS1
set /p po="Select pakage size 0-65500>>> "
cls
ping -l %po% %qu%
pause 
cls
goto pmenu
cls
REM ROUTE
:route
cls
REM ROUTE PS1
set /p ra="Select number of jumps 1-9>>> "
cls
ping -r %ra% %qu%
pause 
cls
goto pmenu
cls
REM TIME
:time
cls
REM TIME PS1
set /p pi="Select timeout (milliseconds)>>> "
cls
ping -w %pi% %qu%
pause 
cls
goto pmenu
cls

REM TRACERT
:Tracert
cls
REM TRACERT PS1
set /p lo="URL, IP or Host>>> "
cls

REM TRACERT MENU
:pathping

:tmenu
echo.
echo                                                  ///////////////////
echo  ////////////////////////////////////////////////////TRACERT MENU////////////////////////////////////////////////////
echo  /                                               ///////////////////                                                /
echo  /         1-Normal Tracert (with host names)                                                                       /
echo  /         2-Normal Tracert (with host ip)                                                                          /
echo  /         3-Timeout                                                                                                /
echo  /         4-Return Route (only IPv6)                                                                               /
echo  /         5-Exit                                                                                                   /
echo  /                                                                                                                  /
echo  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
echo.
REM OPCIONS TRACERT
set /p su="Select Mode>>> "
if %su%==1 goto ntracert
if %su%==2 goto iptracert
if %su%==3 goto ttracert
if %su%==4 goto rtracert
if %su%==5 goto menu 


REM NORMAL TRACERT
:ntracert
cls
tracert %lo%
pause
cls
goto tmenu
cls
REM SHOW IP
:iptracert
cls
tracert -d %lo%
pause
cls
goto tmenu
cls
REM TIMEOUT
:ttracert
REM TIMEOUT PS1
cls
set /p tu="Select timeout (milliseconds)>>> "
cls
tracert -w %tu% %lo%
pause
cls
goto tmenu
cls
REM RETURN
:rtracert
cls
tracert -R %lo%
pause
cls
goto tmenu
cls
REM PATHPING
:xdmenu
REM PATHPING PS1
cls
set /p kb="URL, IP or Host>>> "
cls
REM PATHPING BANNER
:xmenu
cls
echo.
echo                                                  /////////////////////
echo  ////////////////////////////////////////////////////PATHPING MENU///////////////////////////////////////////////////
echo  /                                               /////////////////////                                              /
echo  /         1-Normal Pathping (with host names)                                                                      /
echo  /         2-Normal Pathping (with host ip)                                                                         /
echo  /         3-Jumps Number                                                                                           /
echo  /         4-Timeout                                                                                                /
echo  /         5-Exit                                                                                                   /
echo  /                                                                                                                  /
echo  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
echo.
set /p nj="Select Mode>>> "
if %nj%==1 goto npathping
if %nj%==2 goto ippathping
if %nj%==3 goto jpathping
if %nj%==4 goto xpathping
if %nj%==5 goto menu
REM NORMAL PATHPING
:npathping
cls
pathping %kb%
pause
cls
goto xmenu
cls
REM IP PATHPING
:ippathping
cls
pathping -n %kb%
pause
cls
goto xmenu
cls
REM NUMERO DE SALTS
:jpathping
cls
set /p ri="Select number of jumps>>> "
cls
pathping -h %ri% %kb%
cls
goto xmenu
cls
REM TIMEOUT
:xpathping
cls
set /p ju="Select timeout (milliseconds)>>> "
cls
pathping -p %ju% %kb%
cls
goto xmenu
cls

REM CURL
:xcmenu
cls
set /p he="URL, IP or Host>>> "
:cmenu
cls
echo.
echo                                                  /////////////////
echo  ////////////////////////////////////////////////////CURL MENU///////////////////////////////////////////////////////
echo  /                                               /////////////////                                                  /
echo  /         1-Normal Curl                                                                                            /
echo  /         2-Save Curl                                                                                              /
echo  /         3-Exit                                                                                                   /
echo  /                                                                                                                  /
echo  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
echo.
set /p ti="Select Mode>>> "
cls
if %ti%==1 goto ncurl
if %ti%==2 goto Curl
if %ti%==3 goto menu
REM NORMAL CURL 
:ncurl
cls
curl %he%
pause
cls
goto cmenu
cls

REM SAVE CURL
:Curl
cls
set/p ft="Select Format>>> "
cls
curl %he% -o %he%%ft%
echo %he%.txt Saved successfully
pause
cls
goto cmenu
cls

REM IPCONFIG
:IPconfig
cls
ipconfig
pause
goto menu
cls
REM NSLOOKUP
:Nslookup
cls
set /p ka="URL, IP or Host>>> "
cls
nslookup %ka%
pause
cls
goto menu
cls
REM NETSAT
:Netstat
cls
echo.
echo                                                  ////////////////////
echo  ////////////////////////////////////////////////////NETSTAT MENU////////////////////////////////////////////////////
echo  /                                               ////////////////////                                               /
echo  /         1-Normal Netstat                                                                                         /
echo  /         2-View exe of connection (needs admin)                                                                   /
echo  /         3-Exit                                                                                                   /
echo  /                                                                                                                  /
echo  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
echo.
set /p wa="Select Mode>>> "
if %wa%==1 goto nnetstat
if %wa%==2 goto exenat
if %wa%==3 goto menu
cls
REM NORMAL NETSTAT
:nnetstat
cls
netstat
pause
cls
goto Netstat
cls
REM EXENAT
:exenat
cls
netstat -b
pause
cls
goto Netstat
cls
REM GETMAC
:Getmac
cls
getmac
pause
cls
goto menu
cls
goto menu
REM INFO
:info
cls
echo By: pesquerda404
echo Programmed in batch
echo Github: github.com/pesquerda404
echo This is a batch script that gives to some cmd comands a more graphic appearance.
echo Is focused on beginner people, for learn how this comands work and what they do.
echo I maded 2 versions more before this 3.0 version but they are not posted because this 3.0 version is the most complete.
echo This is a Windows verion, maybe within a time i will do an Linux version.
echo Some Tools need admin so it's better if you run this script whith admin.
pause
goto menu







