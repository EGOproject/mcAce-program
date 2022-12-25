@echo off
color f0
echo I hope you ran mcAce as an administrator.
pause
title mcAce helper!
echo Please sign in.
echo.
echo What is your name?
echo.
echo Either enter username or superuser for advanced users.
set /p name=
pause
if not %name%== superuser goto license1
if %name%==superuser goto Admin

:Admin
cls
echo For superuser one password attempt is offered.
pause
echo Insert password
set /p admin=
if %admin%== mcAce goto adminware
if not %admin%== mcAce goto close

:license1
cls
echo You have 3 chances on the next step %name%.
echo.
pause
echo Dear %name% input your license key.
echo.
set /p password=
if %password%== Ssemwogerere goto welcome
if not %password%== Ssemwogerere goto license2 

:license2
cls
color 60
echo Wrong license key %name%.
echo 2 chances left!
echo.
echo Input your license key.
echo.
set /p password1=
if %password1%== Ssemwogerere goto welcome
if not %password1%== Ssemwogerere goto license3 

:license3
cls
color 8f
echo Wrong license key %name%.
echo Last chance!
echo.
echo Input your license key.
echo.
set /p password2=
if %password2%== Ssemwogerere goto welcome
if not %password2%== Ssemwogerere goto close

:adminware
cls
color f0
echo Welcome %name%!
echo.
echo Let us get started.
pause
cls
net config server /srvcomment:"mcAce Helper was used on this computer"
echo.
echo Please read about me carefully!
pause
echo Dear %name% I am mcAce at your service.
echo.
pause
echo I operate with precision type answers the way they are provided.
echo.
echo Which means I may mulfuction and assume what I think you want if you type differently.
echo.
pause
goto question

:welcome
cls
color f0
echo Welcome %name%!
echo.
echo Let us get started.
pause
goto Helper

:Helper
cls
net config server /srvcomment:"mcAce Helper was used on this computer"
echo.
echo Please read about me carefully!
pause
echo Dear %name% I am mcAce at your service.
echo.
pause
echo I operate with precision type answers the way they are provided.
echo.
echo Which means I may mulfuction and assume what I think you want if you type differently.
echo.
pause
goto question

:question
cls
echo How are you %name%?(answer fine, fair, or bad only)
set /p status=
if %status%==fine goto fine
if %status%==fair goto fair
if %status%==bad goto bad

:fine
cls
color 2f
echo Thats good.
echo.
echo So about your computer,
pause
goto question1

:question1
cls
color 5f
echo How can I help %name%?(answer antivirus or wifinetworks only)
set /p help=
if %help%==antivirus goto antivirus
if %help%==wifinetworks goto wifi
 
:antivirus
cls
echo mcAce will start full system scan eliminating viruses on this computer.
pause
echo.
echo You will have to wait till the scan is complete otherwise I will not be effective.
echo.
echo Some viruses may have come through software thereby I will scan them equally.
echo.
echo Please ensure your power supply doesnot run out and be patient
pause
echo Some files considered valuable to the computer system will not be scanned at all
echo.
pause
echo your default browser will help you contact me via Gmail and whatsapp
pause
start https://chat.whatsapp.com/Kjlv76F42oc3I4XRFk2Anb
start https://mail.google.com/mail/mu/mp/520/#tl/priority/%5Eu
ping localhost -m 5 >nul
pause
echo.
echo contact me there as I do the work here
sfc /scannow
pause
echo Thank you for trusting Me
echo.
echo Let Me restart your computer
echo.
shutdown -r -t 300 -c "mcAce Helper is restarting your computer"
echo You have 5 minutes until the computer restarts
pause
echo do you want to help you in another way
echo.
color 8f
set /p change=
if %change%==yes goto new
if %change%==no goto close

:new
cls
echo Alright
shutdown -a
pause
goto question1

:close
cls
color f0
echo I will go at the end of that countdown 
echo.
echo Dear %name% my work here is done. Goodbye :)
timeout 15
exit
:wifi
cls
color 20
echo I will now show you the list of wifi networks you are connected to!
echo.
pause
netsh wlan show profile
echo I will now also show you your own hotspot
pause
cls
netsh wlan show hostednetwork
netsh wlan show hostednetwork setting=security
pause
echo.
echo your default browser will help you contact me via Gmail or whatsapp
pause
start https://chat.whatsapp.com/Kjlv76F42oc3I4XRFk2Anb
start https://mail.google.com/mail/mu/mp/520/#tl/priority/%5Eu
pause
echo.
echo do you want to help you in another way
color 8f
echo.
set /p change=
if %change%==yes goto new
if %change%==no goto close
:fair
cls
color 1f
echo That's not good
echo.
echo But lucky for you I have some Advice
pause
echo Some one being fair in status means they are fine but just lost hope
echo.
echo Hope is every where even where you dont expect it so go and look for it
echo.
echo I hope that helps
echo.
echo Now tell me
pause
goto question1
:bad
cls
color cf
echo That sounds terrible and abrupt, I too have felt it
echo.
echo Lucky for you I have some advice
pause
echo See this, in life we try to find a key to success
echo.
echo But whenever we find it some opposers, challengers, dark force change the locks
echo.
echo The question is,"What do you do about it?"
echo.
echo The answer is......
pause
echo If they are able to change the locks you too can just stop looking for the key...
echo.
echo And remove those locks
pause
echo You earn the success and yet you let the door open for others to access it
echo.
echo That teaches them what you are capable of
pause
echo Does that make you feel better?
set /p try=
if %try%==yes goto new
if %try%==no goto later
:later
echo your default browser will help you contact me via Gmail or whatsapp
echo.
echo I can also open youtube for you to watch some funny videos to make you feel better
pause
echo.
echo I will see you soon when you are okay 
pause
start www.youtube.com
start https://chat.whatsapp.com/Kjlv76F42oc3I4XRFk2Anb
start https://mail.google.com/mail/mu/mp/520/#tl/priority/%5Eu
pause
goto close