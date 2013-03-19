@echo off
title Minecraft RPG
::Setup::
set Health= 100
:::::::::
echo Hello new player, what's your name?
set /p name=
echo Welcome %name%! 
echo You find yourself on a strange beach, with a large forest spreading out infront of you.
echo It would appear that there are natives, as two paths split infront of you.
echo No use standing here, choose a path [1] Left Path [2] Right Path
set /p pathchoice=
echo %pathchoice% it is!
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
if %pathchoice%== 1 (
    GOTO Leftpath
)
if %pathchoice%== 2 (
    GOTO Rightpath
)
::
::
::
:Leftpath
cls
echo As you walk down the path to your left, you see a chest hidden inside of an ancient temple
echo Do you open it? [1] YES [2] NO
set /p openchest=
if %openchest%== 1 GOTO Openchest
if %openchest%== 2 GOTO Leavechest
::
::
::
:Rightpath
cls
echo As you walk down the path to your right, you hear a faint Hiss.
ping localhost -n 2 >nul
cls
echo As you walk down the path to your right, you hear a faint Hiss..
ping localhost -n 2 >nul
cls
echo As you walk down the path to your right, you hear a faint Hiss...
echo BOOOOOMMMMMM
set /a Health= %Health% - 10
echo You lose 10 Health! You have %Health% remaining.
echo You decide that the Left Path might have been the better idea.
pause
GOTO Leftpath
::
::
::
:Openchest
cls
echo You decide to open the chest
echo Fun fact: In 1.5, Mojang added trap chests that explode tnt! Wait a second!
ping localhost -n 2 >nul
echo KA-BOOM!
set /a Health= %Health% - 10
echo You lose 10 Health! You have %Health% remaining.
echo You leave the chest and continue on your journey.
pause
GOTO Leavechest
::
::
::
:Leavechest
cls
echo After leaving the chest alone, you reach a dead end of branches.
echo You are about to turn around when a light in the distance catches your eye.
echo As you take a better look, you see an NPC village.
echo Do you make your way through the bushes and reach the village for the night
echo or do you turn around and attempt to find shelter elsewhere?
echo [1] Enter the village [2] Turn around
set /p Entervillage=
if %Entervillage%== 1 GOTO Enterthevillage
if %Entervillage%== 2 GOTO Turnaround
::
::
::
:Enterthevillage
cls
echo You force your way through the bushes into the town.
echo Although you make it, you scratch your arm and leg on a sharp branch,
set /a Health= %Health% - 5
echo and lose 5 health, you now have %Health% remaining.
pause
GOTO TheVillage
::
::
::
:Turnaround
cls
echo After what you think is an hour, you find a mountain cave in which to take shelter.
echo You sleep peacefully through the night,
echo and in the morning find an alternate pathway into the village.
pause
GOTO TheVillage
::
:::::::::::::
:: SCENE 2 ::
:::::::::::::
::
:TheVillage
cls
echo You enter the Village
echo --------SCENE 2-------
pause
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
cls
echo You wander into the village...
echo Although you see fires and furnished houses, the place seems deserted.
echo You see an empty house with food and a bed. Your eyes begin shutting,
echo and you pass out onto the bed.
pause
cls
echo TO BE CONTINUED!
pause
echo Programmed By Gummybearking
echo Thanks for playing, please let me know of
echo any suggestions you have at the contacts below
echo Skype: Gumybearking (YES, 1 "M")
echo Email: Gumyplugins@yahoo.com
echo or contact me at the Voxpopuliguild forum
pause
exit

