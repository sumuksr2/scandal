"Scandal" by Sumuk Rao

Chapter 1 - Variables

Section 1 - Global Variables

[cash variable is counter of how much cash player has]
cash is a number variable.
cash is 1000.

[trust variable shows how much trust player has]
trust is a number variable.
trust is 100.

[this records which player is chosen]
storeOwner is a truth state variable.
storeOwner is false. 
cop is a truth state variable.
cop is false.

[this records the hit damage in a fight scene]
A person has a number called health.
The health of the player is 15.
The health of mugger is 15.

[this declares a person called the mugger]
mugger is a person.

[this declares if the player is fighting]
fightingOrNot is a truth state variable.
fightingOrNot is false.

[This checks to see if the three letters that the player gets are read or not]
firstLetterRead is a truth state variable.
firstLetterRead is false.
secondLetterRead is a truth state variable.
secondLetterRead is false.

[first letter the player will read]
firstLetter is a closed openable container.
The description of firstLetter is "[line break]Greetings,[line break] Hope you are having a gracious day. I am writing this letter to you to propose a business deal. You must know me for my numerous speakeasies - No, sorry, excuse me. I mean my businesses around Illinois. Your store seems to be in the optimal position where you get customers from all over the city. However, I see your business seems to be taking a dip recently and I am willing to help you out. Afterall, it would be a shame [italic type] if [roman type] something were to happen to it. In fact, I'll give you a very good deal. I'll buy your business from you for $1000. SELL your store or IGNORE this letter. But whatever you decide, it's on you![line break] Yours Truly, [line break] Mr. Cal Apone[line break] (PS. You will NOT be allowed to change your answer later.[line break]".

[second letter the player will read]
secondLetter is a closed openable container.
The description of secondLetter is "[line break]Greetings,[line break] Hope you are having a gracious day. I am writing this letter to you [bold type] again [roman type]to propose a business deal. I see your business seems to be taking a dip as expected and I am offering help a [bold type] second and final [roman type] time. Afterall, it would be a shame [italic type] if [roman type] something were to happen to it. In fact, I'll give you a very good deal, but not as good as last time: $500. SELL your store or IGNORE this letter. But whatever you decide, it's on you![line break] Yours Truly, [line break] Mr. Cal Apone[line break] (PS. You will NOT be allowed to change your answer later.[line break]".

[This checks whether player sold their store or not]
storeSold is a truth state variable.
storeSold is false.

Section 2 - Global Functions

Every turn when fightingOrNot is false:
	if storeSold is false:
		increase cash by 100;
	say "Cash: [cash][line break]Trust: [trust][line break]".
Every turn when fightingOrNot is true:
	say "Your Health: [health of the player]   Mugger's Health: [health of mugger][line break]".

Chapter 2 - Levels

Section 1 - Level One

levelOne is a Room.
The description of levelOne is  "Salutations! Welcome to the game of deceit. You are in Chicago and the date is March 2, 1922. This game focuses on showing the influence corruption on regular people's lives. You'll play the game as a regular store owner who's just trying to survive and keep his family alive. Throughout the game, you'll be asked to make different decisions. There will always be an option between a corrupt option and a less corrupt option, be sure to choose wisely! You have two monitors: cash and trust. Cash counts how much money you have (if you reach 0 you automatically lose). Trust counts how many corrupt decisions you've taken. You start at 100% trust and the value decreases for every corrupt action (if you reach 0 trust you will NOT automatically lose the game). Type in store owner to start the game.".

storeOwnerTrue is an action applying to nothing.
Understand "store owner" and "shop owner" and "shop man" as storeOwnerTrue.
Check storeOwnerTrue:
	if cop is true or storeOwner is true:
		stop the action.
Carry out storeOwnerTrue:
	now storeOwner is true;
	say "You chose to be a Store Owner. Great Choice. Here is the basic overview of the roles of Store Owner. You start off with $1000 and every turn you'll earn a salary of $100.";
	now the player is in levelTwo.

copTrue is an action applying to nothing.
Understand "cop" and "policeman" and "police officer" as copTrue.
Check copTrue:
	if cop is true or storeOwner is true:
		stop the action.
Carry out copTrue:
	now cop is true;
	say "You chose to be a Cop. Greate Choice. Let's continue.";
	now the player is in levelTwo.

Section 2 - Level Two

levelTwo is a Room.
The description of levelTwo is "It's 5 PM and you just finish a day of hard work. As you leave your warm shop, the fresh bakery smell morphs into the dust and smoke in the dark evening. As you walk home, you sense a strange man at a distance. His tall, shady figure portrays no good news, so you tug your head and keep walking. Moments later, you hear a shriek. You immediately lift your head, only to see the shadow of the strange man pointing a gun at an innocent woman. You can hear his deep voice demanding money and jewelery. As a citizen, you initially feel as if it is your duty to help this woman but then you weigh your options 1) fight the mugger 2) continue walking. If you choose the former, you have a 50% chance of getting mugged and hurt but with the latter you walk home safe and no one gets hurt. What do you chose to do?".

continueWalking is an action applying to nothing.
Understand "continue" and "continue walking" as continueWalking.
Carry out continueWalking:
	say "Smart choice (not a brave one). You continue to walk home and are able to sleep. Rest up for a big day tomorrow. Good Night!";
	now the player is in levelThree.
	
fightMugger is an action applying to nothing.
Understand "fight the mugger" and "fight" and "attack" as fightMugger.
Carry out fightMugger:
	say "Ooh! Very brave, but not so smart. Get ready to fight. Your options are to pound, duck, kick, and run. Each of you start off with a health of 15 and will decrease with each move. Make sure to get him to 0 before you do or else you'll be in trouble!! Good Luck...Oh great, he's already about to hit you, choose one of the fight options above (unless you're a coward, choose run to run away and be safe)!!!";
	now fightingOrNot is true.
	
fighting is an action applying to nothing.
Understand "kick" and "duck" and "pound" and "punch" as fighting.
Instead of fighting:
	if fightingOrNot is true:
		choose a random row in the Table of mugFight;
		let damage be a random number between 0 and 5;
		decrease health of mugger by damage;
		if health of mugger is greater than 0 and health of the player is greater than 0:
			say "[event entry]";
		if health of mugger is 0 or health of mugger is less than 0:
			say "AYYY! You have successfully blacked out the mugger. The woman is saved and you are a good citizen. You can continue walking home.";
			stop the action;
			now fightingOrNot is false;
			now the player is in levelThree;
		let the enemyDamage be a random number between 0 and 5;
		decrease health of the player by enemyDamage;
		if health of the player is 0 or health of the player is less than 0:
			say "YIKES! Fighting him was not the best choice. You're knocked out and he just ran away with $200. Better luck next time!" ;
			decrease cash by 200;
			now fightingOrNot is false;
			stop the action;
			now the player is in levelThree;
	if (fightingOrNot is false):
		say "You're not fighting. No need to kick, duck, or pound for no reason.";
		stop the action.
			
run is an action applying to nothing.
Understand "run away" as run.
Carry out run:
	say "That was a close call. You barely made it out alive! Poor woman though, she'll still be mugged but atleast you tried. You continue to walk home and are able to sleep. Rest up for a big day tomorrow. Good Night!";
	now fightingOrNot is false;
	now the player is in levelThree.

Table of mugFight
event
"Nice move!! Oh no, he's about to come back with a strong kick! Quick, choose another move."
"Good one! Throw another one at him so he doesn't get you!"
"You're on firee! Keep going like this and he'll never get you!"
"BAM! He hits you square in the face and you end up with a black eye. But you can't give up! KEEP FIGHTING!"
"He's got you! He's put you in a headlock, try to get out of it. Throw another move!"

Section 3 - Level Three

levelThree is a Room.
The description of levelThree is "It's a fresh new day and you're ready to head back to the workplace. Except you now see a letter taped onto the door. You weren't expecting anything so what could it be?".

firstLetter is in levelThree.

ignore is an action applying to nothing. 
Understand "ignore letter" and "Ignore" and "IGNORE" as ignore.
Carry out ignore:
	now the player is in levelFour.
	
sell is an action applying to nothing.
Understand "sell store" and "SELL" and "SELL STORE" and "sell my store" and "sell the store" as sell.
Carry out sell:
	now storeSold is true;
	increase cash by 1000;
	say "Congratulations on selling the store!! $1000 has been added to your account. But unfortunately, since you're not employed anymore, you won't be gaining $100 every turn as salary.";
	now player is in levelFour.
	
Section 4 - Level Four

levelFour is a Room.
The description of levelFour is "The game hasn't been developed this far. Thanks for bug testing!".



	
		

  