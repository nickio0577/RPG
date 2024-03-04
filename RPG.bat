@ECHO OFF
color 0f
title RENO in GOBLINI

set mec=0
set kljuc=0

:menu
color 07
cls
echo RENO in GOBLINI
echo.
echo.
echo Si normalen clovek....... dokler goblibi napadejo tvojega prijatelja.Zato mores ubiti kralja goblina in resiti prijatelja
echo.
echo.
echo pritisni 1, da zacnes igro
echo pritisni 2, da izves kaj O igri
echo pritisni 3, za izhod

set/p input=Vnesi ukaz: 
if %input% == 1 goto zacetek 
if %input% == 2 goto O igri
if %input% == 3 goto izhod
goto menu


:zacetek
color 07
cls
echo zacel si igro

set/p input=Vnesi ukaz(LEVO, DESNO, GOR ali DOL): 
if %input% == LEVO goto Lavid 
if %input% == DESNO goto Kamen
if %input% == GOR goto Vrata
if %input% == DOL goto Jama 
goto zacetek

:Jama
cls
color 08
echo si v jami. Vidis mec

set/p input=Vnesi ukaz(GOR ali POBERI_MEC)
if %input% == GOR goto dom 
if %input% == POBERI_MEC goto MecGet
goto jama

:MecGet
cls
set  mec=1
echo HURAJ dobil si mec
pause
goto Jama

:dom
color 07
cls
echo spet si doma

set/p input=Vnesi ukaz(LEVO, DESNO, GOR ali DOL): 
if %input% == LEVO goto Lavid 
if %input% == DESNO goto Kamen
if %input% == GOR goto Vrata
if %input% == DOL goto Jama 
goto dom

:Kamen
cls
color 08
echo Vidis kamen. Nekaj je na njemu

set/p input=Vnesi ukaz(LEVO ali POBERI): 
if %input% == LEVO goto dom
if %input% == POBERI goto Kljucget
goto Kamen

:Kljucget
cls
set kljuc=1
echo HURAJ dobil si kljuc
pause
goto Kamen

:Lavid
cls
color 2A
echo Si v gozdu. Vidis Lavida

set/p input=Vnesi ukaz(DESNO ali POGOVOR): 
if %input% == DESNO goto dom
if %input% == POGOVOR goto POGOVORL
goto Lavid

:POGOVORL
cls
color 5D
echo zivjo jas sem Lavid vprasaj me kaj
echo.
echo 1, Kaj so carobne stevilke
echo 2, Kje je kralj goblin
echo 3, Kaj je bilo prislo na svet prej, kokos ali jajce
echo 4, Pojdi nazaj domov

set/p input=Vprasaj kaj Lavida: 
if %input% == 1 goto ksc 
if %input% == 2 goto ks
if %input% == 3 goto kj
if %input% == 4 goto dom

goto POGOVORL

:ksc
color 5D
echo Carobne stevilke so 13573. In dobro si jih zapomni
pause
goto POGOVORL

:ks
color 5D
echo Prvo rabis kljuc da odpres vrata prvo bo tam bil navaden goblin in nato mini boss in potem je tam kralj goblin
pause
goto POGOVORL

:kj
color 5D

echo Prvo je prislo jajce ker je prvo bilo dinozavrsko jajce nato je sele prisla kokos
pause
goto POGOVORL

:Vrata
color 07
cls
echo si pred vrati v GOBLIN DEZELO

set /p input=Vnesi ukaz(DOL ali ODPRI): 

if /i %input% == DOL goto dom
if /i %input% == ODPRI (
    if "%kljuc%" == "0" (
        echo Rabis kljuc da odpres vrata
        pause
    ) else (
        echo HURAJ odprl si vrata
        pause
        goto Goblin
    )
)
goto Vrata

:Goblin
cls
color 02
echo Tukaj je goblin. Hoce te napadeti

set/p input=Vnesi ukaz(DOL ali UPORABI_MEC): 
if /i %input% == DOL goto Vrata
if /i %input% == UPORABI_MEC (
    if "%mec%" == "0" (
        goto GameOver
        pause
 
    ) else (
        echo HURAJ ubil si goblina
        pause
        goto Mini Boss
    )
)

goto Goblin

:GameOver
cls
color 47                                                           
echo GAME OVER
echo.
echo.                                      
e cho.                                               
echo Izgubil si :(
pause       
goto menu

:Mini Boss
color 02
cls
echo Tukaj je Mini Boss. hoce te napadeti.
echo Namig: Da  ga premagas mores unesti najvecje dvomestno sodo stevilo 

set/p input=Vnesi najvecje dvomestno sodo stevilo: 
if %input% == 98 goto boss
goto GameOver


:Boss
color 0A
cls
echo Tukaj je Kralj Goblin. Ce ga premagas je tvoj prijatelj resen
echo Namig: Da ga premagas mores utipkati carobne stevilke

set/p input=Vnesi carobne stevilke: 
if %input% == 13573 goto You win
goto GameOver

:You win 
cls
color 27
echo Hahahaha
echo you win
echo Hahahaha
echo you win

echo You need to grow up
echo GROW UP.Im 38 years old
pause 
goto menu

:O igri
cls
color 07
echo Naredil jo je Nik Bozicek in bila je narjena 1. mar 2024.
echo.
echo Igra govori o fantu Reno, ki hoce resiti svojega prijatelja pred Goblini.
pause 
goto menu

:izhod
color 07
cls
echo @

                             