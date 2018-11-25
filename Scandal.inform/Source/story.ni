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

Section 2 - Global Functions

Every turn:
	say "Cash: [cash][line break]Trust: [trust][line break]".


Chapter 2 - Levels

Section 1 - Level One

levelOne is a Room.
The description of levelOne is  "Salutations! You are in Chicago and the date is March 2, 1922. This game focuses on showing the influence corruption on regular people's lives. You can choose to play the game as either a Cop or a Store Owner. Throughout the game, you'll be asked to make different decisions. There will always be an option between a corrupt option and a less corrupt option, be sure to choose wisely! You have two monitors: cash and trust. Cash counts how much money you have (if you reach 0 you automatically lose). Trust counts how many corrupt decisions you've taken. You start at 100% trust and the value decreases for every corrupt action (if you reach 0 trust you will NOT automatically lose the game). Start the game by stating if you want to play as a cop or a store owner.".

storeOwnerTrue is an action applying to nothing.
Understand "store owner" and "shop owner" and "shop man" as storeOwnerTrue.
Check storeOwnerTrue:
	if cop is true or storeOwner is true:
		stop the action.
Carry out storeOwnerTrue:
	now storeOwner is true;
	say "You chose to be a Store Owner. Great Choice. Here is the basic overview of the roles of Store Owner. You start off with $1000 and every turn you'll earn a salary of {PLZ FINISH THIS}. ";
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
Understand "continue" and "ignore" and "continue walking" as continueWalking.
Carry out continueWalking:
	say "Smart choice (not a brave one). You manage to get home without being hurt in any way. Good Job!".
	
fightMugger is an action applying to nothing.
Understand "fight the mugger" and "fight" and "attack" as fightMugger.
Carry out fightMugger:
	say "Ooh! Very brave, but not so smart. Get ready to fight. Your options are to punch, duck, kick, and run. Good Luck...Oh great, he's already about to hit you, choose one of the fight options above!!!".
	
fighting is an action applying to nothing.
Understand "punch" and "kick" and "duck" and "pound" as fighting.
Instead of fighting:
	choose a random row in the Table of mugFight;
	say "[event entry]";
	let damage be a random number between 0 and 5;
	decrease health of mugger by damage;
	if health of mugger is less than 0:
		say "[line break] AYYY! You have successfully blacked out the mugger. The woman is saved and you are a good citizen. You can continue walking home.";
		stop the action;
	let the enemyDamage be a random number between 0 and 5;
	decrease health of the player by enemyDamage;
	if health of the player is less than 0:
		say "[line break]YIKES! Fighting him was not the best choice. You're knocked out and he just ran away with $200. Better luck next time!" ;
		decrease cash by 200;
		stop the action.
	
run is an action applying to nothing.
Carry out run:
	say "That was a close call. You barely made it out alive! Poor woman though, she'll still be mugged but atleast you tried.".

Table of mugFight
event
"Nice move!! Oh no, he's about to come back with a strong kick! Quick, choose another move."
"Good one! Throw another one at him so he doesn't get you!"
"You're on firee! Keep going like this and he'll never get you!"
"BAM! He hits you square in the face and you end up with a black eye. But you can't give up! KEEP FIGHTING!"
"He's got you! He's put you in a headlock, try to get out of it. Throw another move!"
	
		

  