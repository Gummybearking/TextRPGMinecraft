@echo off
title Minecraft RPG
:Begin
::Setup::
set Health= 100
set Karma= 0
:::::::::
echo Hello new player, what's your name?
set /p name=
echo Welcome %name%! 
echo You find yourself on a strange beach, with a large forest spreading out infront of you.
echo You smell the faint scent of apples in the air, and feel the soft sand on your feet.
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
pause
exit
::
::
::
:Leftpath
cls
echo As you walk down the path to your left, you see it is well worn, with human shaped footprints.
echo After five minutes of walking, you see a chest inside of what appears to be a statue of tribal worship.
echo The statue has three heads, and appears to be hovering.
echo You feel slightly nauseated, but you ignore it, it's likely lack of food.
echo Do you open their chest, or do you leave the site alone? 
echo [1] Open [2] Leave
set /p openchest=
if %openchest%== 1 GOTO Openchest
if %openchest%== 2 GOTO Leavechest
pause
exit
::
::
::
:Rightpath
cls
echo As you walk down the path to your right you see two red eyes in the folliage, seemingly getting closer.
each you hear a faint Hiss.
ping localhost -n 2 >nul
cls
echo you hear a faint Hiss..
ping localhost -n 2 >nul
cls
echo you hear a faint Hiss...
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
set /a Karma %Karma% + 10 
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
pause
exit
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
echo You wake up, slowly opening your eyes as they adjust to the light.
echo you see several black blurs standing infront of you. 
echo You remember where you are, and suddenly jump out of bed, only to
echo be restrained by what you expect are the villagers.
echo Two iron golems grab your arms, and drag you out of the house.
echo as you begin to struggle, they throw you into one of the larger houses.
echo They force you to sit down, and leave you.
echo Only semi-conscious, you examine the room.
echo You sit upon a soft, highly detailed rug, with more pictures of the three headed idle from before.
echo Once again you feel strange, as if you are forgetting something, and you begin to try to remember how
echo You arrived at that beach the previous day, but the memories evade you.
echo Just then, an old villager enters the room, followed by the two guards from before.
echo The man asks-
echo "Who are you, and how did you get here?"
echo Do you reply truthfuly, or stay silent?
echo [1] Reply [2] Stay silent
set /p Reply=
if %Reply%== 1 GOTO Replytruth
if %Reply%== 2 GOTO Staysilent
pause
exit
::
::
::
:Staysilent
cls
set /a Karma %Karma% + 5
echo You refuse to answer the man, and brace yourself as the two guards grab your arms.
echo You prepare for injurie, but instead they begin to drag you.
echo The old man just frowns and shakes his head.
echo They simply take you outside of the town, and drop you there.
echo The guards remain by the entrance, and you understand that you have been evicted.
echo You walk out into the unknowns of the forest, preparing for the harsh days ahead.
pause
GOTO Forest
::
::
::
:Replytruth
cls
echo You tell the man that your name is %name%.
echo He asks you what brings you to his village,
echo and you reply with your story.
echo He thanks you for youe honesty, and shouts "Zed!"
echo A man walks into the room, wearing a sterytipcal Doctor's outfit (Although you doubt he actually has a medical degree)
echo The old man asks you to drink a red fluid. Famished from your journey, you accept gratefuly.
echo You begin to feel dizzy, and you collapse on the floor.
pause
echo You wake up, and find all of your wounds healed, it would appear that Zed guy
echo had taken care of you, at the request of who you assume is the Village chief.
set Health= 100
echo You now have 100 health.
echo You see that the door has been left open...
echo Do you leave the Village, or do you wait for Zed to return?
echo [1] Leave [2] Wait
set /p Waitforzed=
if %waitforzed%== 1 GOTO Leavezed
if %waitforzed%== 2 GOTO Waitzed
pause
exit
::
::
::
:Waitzed
cls
echo "Why hello there, looks like you healed up nicely!"
echo You turn to see the source of the voice, and see the untrained doctor standing in the doorway.
echo "The ol' man wanted to see ya. You remember the way right?
echo You nod, and head towards the Elder's house, thanking Zed on your way out.
pause
cls
echo You arrive at the Elder's door. You raise your arm to knock, but you notice the door is already slightly ajar.
echo Confused, you push open the door, to a horrendous sight. Chairs are on their sides, tables are crushed, and it appears as though a torrnado has entered the room.
echo "AGHHHHHHH HELP ME"
echo It's the old man! as you turn to the source of the sound, you see both of the golems from earlier dead on the floor.
echo You pick up one of the guards' weapons and run downstairs towards the source of the sound.
pause
cls
echo As you turn the corner, you see the old man surrounded by a group of people who looked, shall we say- Not so kind.
echo But one of them sees you as well. "Ah, fresh meat," he says as he runs towards you with his sword.
echo Almost without thinking, you parry his blow, spin, and cut off his head.
echo Angered, the remaing thugs surround you, and rush you simultaniously.
pause
cls
echo In a fraction of a second, your memoires return to you, and your past is revealed.
echo But, before you can ponder upon these new memories, you must deal with your present danger.
echo You swing your sword at unfathomable speeds, with incredible accuracy and grace. In under half a second, two of the attackers have already been slain, and the other three begin to retreat.
pause
cls
echo Stunned, the old man thanks you for your kindness. In return for saving his life, the man gives you his most prized possesion, he calls it
echo "The Sword of a Thousand Truths." You know of the blade, but you had shrugged it off as mythical. It was rumored to be the most powerful weapon in existance.
echo The old man remembers what he wanted to tell you, and asks you to follow him. He takes you to one of the houses in the village, and tells you it is yours.
echo You thank the man and sit down in order to process your thoughts.
pause
cls
echo Your past... You were once a member of a village known as Sanctuary. You were a powerful warrior, feared by the neighboring villages, and rumored to be a demon and immortal.
echo Although mortal you were, you slayed many an attacker, and fought for justice.
echo But one day, calamity struck your village. A strange monster had come, tearing apart the village, killing men women and children alike. You rush out of your home, ready to fight
echo when you see your village Mage known as Siren.
echo "We have already lost my friend, we have no chance against this powerful beast." You attempt to brush by her, but she suddenly blasts you away with a powerful Zephyr of wind,
echo flinging you across the ocean, and forcing you to forget your past until you were ready to meet this monster once again.
echo as you think more, you realize the monster had flown above the city with three- You know this beast!
echo You rush to the village elder with your warning of how dangerous this monster was.
pause
GOTO TempCreds
GOTO Fightwither
::
::
::
:Leavezed
cls
echo You decide to leave the village, although grateful for their healing
echo You walk outside of the village gates, prepared to face the wilderness on your own.
pause
GOTO Forest
::
::
::
:Forest
cls
echo First things first, you need to find shelter. You walk through the dense forest, and stumble upon a treehouse, about a mile from the village.
echo You see a knife on the window of this tree house, and you pick it up as you knock on the door.
echo An old man comes to the door, telling you to go away.
echo However, the man has no weapons, and you could easily overpower him.
echo Do you attack the old man? If you do not, you might not find suitible shelter elsewhere.
echo [1] Attack [2] Leave
set /p attackoldman=
if %attackoldman%== 1 GOTO Attackman
if %attackoldman%== 2 GOTO Leaveman
pause
exit
::
::
::
:Leaveman
cls
echo You leave the man's home, and venture further into the forest.
echo You come upon an empty camping tent.
echo You find a bow and food inside, along with a warm sleeping bag.
echo As you fall asleep, your dreams turn into the memories of your past.
pause
cls
echo Your past-
echo You were a brave hunter, who was more accurate with a bow than any olympic archer.
echo You reveled in to outdoors, and loved to challenge yourself to survive on your own.
echo One day while you were selling your game in a town known as Sanctuary, a large monster attacked the town, forcing you to flee, but not before you took aim with your mighty bow, and injured the beasts shoulder, causing it to attack you.
echo the monster's magic wiped your memory, and next thing you knew, you were in a boat, floating across the ocean, until you passed out once again.
echo Although you did not get a good look at the monster, you want to warn the Village that it could be nearby.
echo You begin to run back, bow in hand, to warn the villagers.
pause
GOTO TempCreds
::
::
::
:Attackman
cls
set /a Karma %Karma% + 15
echo You decide to attack the old man. With strength and swiftness you never knew you had, you jam you knife into the mans chest.
echo The man dies instantly, however the knife shatters, sending a piece of shrapnel into your arm.
set /a Health= %Health% - 15
echo You lose 15 health, you now have %Health% remaining.
pause
cls
echo You spend the night inside of the house, tortured by the thoughts of your actions.
echo Finally you fall asleep, only to be awoken by shouts and screams from the village nearby. As you look out the window, you see fires and explosions, and you begin to remember you past.
pause
cls
echo Your past-
echo You were a member of the Biscuit gang. You killed innocent people, and stole from the poor and rich alike.
echo You showed no honor in your endeavors, and fought unethicaly.
echo During one of your raids on a town called Sanctuary, a large monster attacked the village, and you ran away, stealing a boat and row.
echo Unfortunatley for you, you were hit by one of the monster's spells, causing you to lose consciousness.
echo This blast was the cause of you lost memories.
echo In order to redeem yourself, you run to the town, without a weapon, in order to save the townspeople from whatever disaster they might be facing.
pause
GOTO TempCreds

:TempCreds
cls
echo TO BE CONTINUED- Part 3
echo Thanks for playing, your score was:
set /a score= %Health%-%Karma%
echo %name%-%score%
pause
cls
echo Remember, contact me on skype at: Gumybearking
pause
exit

