"Scandal" by Sumuk Rao

Chapter 1 - Variables

Section 1 - Global Variables

[Telling Inform that a thing can be readable or not]
a thing can be readable or unreadable.

[cash variable is counter of how much cash player has]
cash is a number variable.
cash is 1000.

[temporary variable for any use]
temp is a number variable.
temp is 0.

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
firstLetter is a readable thing.
The description of firstLetter is "[line break]Greetings,[line break] Hope you are having a gracious day. I am writing this letter to you to propose a business deal. You must know me for my numerous speakeasies - No, sorry, excuse me. I mean my businesses around Illinois. Your store seems to be in the optimal position where you get customers from all over the city. However, I see your business seems to be taking a dip recently and I am willing to help you out. Afterall, it would be a shame [italic type] if [roman type] something were to happen to it. In fact, I'll give you a very good deal. I'll buy your business from you for $1000. SELL your store or IGNORE this letter. But whatever you decide, it's on you![line break] Yours Truly, [line break] Mr. Cal Apone[line break] (PS. You will NOT be allowed to change your answer later.[line break]".

[second letter the player will read]
secondLetter is a readable thing.
The description of secondLetter is "[line break]Greetings,[line break] Hope you are having a gracious day. I am writing this letter to you [bold type] again [roman type]to propose a business deal. I see your business seems to be taking a dip as expected and I am offering help a [bold type] second and final [roman type] time. Afterall, it would be a shame [italic type] if [roman type] something were to happen to it. In fact, I'll give you a very good deal, but not as good as last time: $500. SELL your store or IGNORE this letter. But whatever you decide, it's on you![line break] Yours Truly, [line break] Mr. Cal Apone[line break] (PS. You will NOT be allowed to change your answer later.[line break]".

[This checks whether player sold their store or not]
storeSold is a truth state variable.
storeSold is false.

[This checks whether insaurance was bought]
insaurance is a truth state variable.
insaurance is false.

[This checks whether the daughter is talking]
daughterTalk is a truth state variable.
daughterTalk is false.
daughterTalk2 is a truth state variable.
daughterTalk2 is false.

[This checks whether the police is talking]
policeTalk is a truth state variable.
policeTalk is false.

[This is the player's young daughter]
daughter is a woman.

[This allows us to use Triggerwords]
triggerword is a kind of value.
currentTriggerword is a triggerword that varies.
affirmative is a triggerword.
Understand "Yeah" and "Yes" and "Sure" and "go ahead" and "okay" as affirmative.
negativee is a triggerword.
Understand "No" and "Nah" and "Nope" and "Not at All" as negativee.

[points for the 21 game]
caponeWins is a number variable.
caponeWins is 0.
caponeSum is a number variable.
caponeSum is 0.

playerWins is a number variable.
playerWins is 0.
playerSum is a number variable.
playerSum is 0.

wager is a number variable.
wager is 0.

tempDividend is a number variable.
tempDividend is 0.

gamePlay is a truth state variable.
gamePlay is false.

inSession is a truth state variable.
inSession is false.

half is a triggerword.
Understand "half of my money" and "half" as half.

all is a triggerword.
Understand "all of my money" and "all my money" and "all" as all.

draw is a triggerword.
stop is a triggerword.

Section 2 - Global Functions

Every turn when fightingOrNot is false and inSession is false and gamePlay is false:
	if storeSold is false:
		increase cash by 200;
	say "Cash: [cash][line break]Trust: [trust][line break]".
Every turn when fightingOrNot is true:
	say "Your Health: [health of the player]   Mugger's Health: [health of mugger][line break]".
Every turn when gamePlay is true or inSession is true:
	say "[line break]Wager: [wager], Capone's Wins: [caponeWins], Your Wins: [playerWins][line break]".
	
To calculateWager:
	if currentTriggerword is half:
		if temp is greater than zero:
			decrease temp by 2;
			increase tempDividend by 1;
			calculateWager2;
		if temp is less than zero:
			decrease tempDividend by 1;
			increase wager by tempDividend;
		else if temp is less than 1:
			increase wager by tempDividend;
	if currentTriggerword is all:
		increase wager by cash.
		
To calculateWager2:
	if currentTriggerword is half:
		if temp is greater than zero:
			decrease temp by 2;
			increase tempDividend by 1;
			calculateWager;
		if temp is less than zero:
			decrease tempDividend by 1;
			increase wager by tempDividend;
		else if temp is less than 1:
			increase wager by tempDividend;
	if currentTriggerword is all:
		increase wager by cash.
	
To answerDaughter:
	if currentTriggerword is affirmative:
		say "[italic type]My school today told me that I can't go back unless I pay the school fees. I don't know what that is, but I think they were asking for $3000 or something. Can you pay them that amount, I want to go back to school and have fun with my friends!!";
		if cash is less than 3000:
			say "[bold type] * YOU HAVE LESS THAN $3000, SO SAYING YES WILL MAKE YOU HAVE LESS THAN 0 CASH AND YOU'LL LOSE THE GAME * [roman type]";
	if currentTriggerword is negativee:
		say "[italic type]Well, too bad daddy, I'll ask you anyway. My school today told me that I can't go back unless I pay the school fees. I don't know what that is, but I think they were asking for $3000 or something. Can you pay them that amount, I want to go back to school and have fun with my friends!!";
		if cash is less than 3000:
			say "[bold type] * YOU HAVE LESS THAN $3000, SO SAYING YES WILL MAKE YOU HAVE LESS THAN 0 CASH AND YOU'LL LOSE THE GAME * [roman type]".
			
To answerDaughter2:
	if currentTriggerword is affirmative:
		say "[italic type]OMGG! Thank you so much!!!!";
		decrease cash by 3000;
	if currentTriggerword is negativee:
		say "[italic type]But like everyone is going! Ugh fine, I was just trying to have some fun and be normal but whatever.".

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
	say "You chose to be a Store Owner. Great Choice. Here is the basic overview of the roles of Store Owner. You start off with $1000 and every turn you'll earn a salary of $200.";
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
			say "YIKES! Fighting him was not the best choice. You're knocked out and he just ran away with $500. Better luck next time!" ;
			decrease cash by 500;
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
	say "Congratulations on selling the store!! $1000 has been added to your account. But unfortunately, since you're not employed anymore, you won't be gaining $200 every turn as salary.";
	now player is in levelFour.
	
Section 4 - Level Four

levelFour is a Room.
The description of levelFour is "After that long and tough decision, you plan to clear your mind by taking a walk around the block. As you walk around you come across a tall man in a big suit. He approaches you and attempts to create conversation: [italic type][line break] Good Morning Sir, how are you? As you know many businesses in the area are dipping and hitting low points. I suggest you buy our Businses Insaurance and we'll always keep you covered. We're one of the finest insaurance companies in the nation. [roman type] [line break] Your options are to 1) Keep listening 2) Keep walking and don't care.".

keepListening is an action applying to nothing.
Understand "keep listening" and "Keep listening" and "Keep Listening" as keepListening.
Carry out keepListening:
	say "The man continues and says: [italic type] [line break] We can make this very simple. Just give me $1000 and I'll give you this receipt. I'll make sure to add you into our system. It's a quick process for a lifetime of safetyness, I suggest you go for it. [roman type] [line break] Your options are 1) buy the insaurance 2) keep walking and don't care.".
	
buyTheInsaurance is an action applying to nothing.
Understand "buy the insaurance" and "buy" as buyTheInsaurance.
Carry out buyTheInsaurance:
	say "Nice, it's always good to have an insaurance under the belt.";
	decrease cash by 1000;
	now insaurance is true;
	now the player is in levelFive;
	now daughterTalk is true;
	now daughter is in levelFive.
	
keepWalking is an action applying to nothing.
Understand "keep walking and don't care" and "Keep walking and don't care" as keepWalking.
Carry out keepWalking:
	say "Wise choice, who knows if it was even a legit company.";
	now the player is in levelFive;
	now daughterTalk is true;
	now daughter is in levelFive.
	
Section 5 - Level Five

levelFive is a Room.
The description of levelFive is "You continue on home and finally decide to rest on your couch. Your young 10 year old daughter comes up excited to see you back home. [italic type][line break] Hey Daddy!! Can I ask you a question?[roman type]".


After reading a command when daughterTalk is true:
	if the player's command includes "[triggerword]":
		now currentTriggerword is the triggerword understood;
		answerDaughter;
		now daughterTalk is false;
		now daughterTalk2 is true;
		stop the action;
	else:
		say "Your daughter doesn't understand you. Try again..? (Hint: type Yes or No)";
		stop the action.
		
After reading a command when daughterTalk2 is true:
	if the player's command includes "[triggerword]":
		now currentTriggerword is the triggerword understood;
		answerDaughter2;
		now daughterTalk2 is false;
		now the player is in levelSix;
		stop the action;
	else:
		say "Your daughter doesn't understand you. Try again..? (Hint: type Yes or No)";
		stop the action.
		
Section 6 - Level Six

levelSix is a Room.
The description of levelSix is "Feeling bad about rejecting your daughter's request, you decide to head back to your store. Maybe you could earn more money and grant her wishes....[line break] So now you're back at the store trying to earn as much as possible. When suddenly a man with a large black bag comes into your shop. [line break][italic type]A few people are looking for me and chasing me and I've been cornered. They're trying to steal my money and stuff in this bag. I will pay you $[3000 minus cash plus 200] to let me hide this bag here and let me go out through your back storage door. Please I beg you! [roman type][line break] Although this sounds pretty shady, he is about to pay the amount needed for your daughter's education and it can't hurt to just hide a bag, so it looks like a good deal. Your options are to tell him 1) Hide Bag 2) Go Away.".

hide is an action applying to nothing.
Understand "tell him hide" and "tell him to hide" and "Hide" and "Go Hide"  and "hide bag" as hide.
Carry out hide:
	say "[line break][italic type]Thank you! Here's your cash, I'm out of here![roman type][line break]";
	now temp is 3000;
	decrease temp by cash;
	increase temp by 200;
	increase cash by temp;
	now policeTalk is true;
	now the player is in levelSixOne.
	
goAway is an action applying to nothing.
Understand "go away" and "Go Away" and "Tell him to go away" as goAway.
Carry out goAway:
	say "He shakes his head and turns around to run back out. While he's heading out, a couple of things fall out from his bag. He doesn't bother picking them up and continues to run away.";
	now policeTalk is true;
	now the player is in levelSixTwo.
	
Section 6.1 - Level SixOne

levelSixOne is a Room.
The description of levelSixOne is "Moments later, the police barge into your store. [line break] [italic type] We're looking for a criminal who's been on the run. We saw him come in this area. Do you know of his whereabouts? Just saying, if you're caught lying, you'll be in trouble too.".

After reading a command when policeTalk is true:
	say "Alright, thanks for letting us know. We're going to look around your store for any suspicious activity......[line break]WOAH! HOLD UP! We didn't find the guy hiding here, but you're in trouble. We found this large black bag filled with drugs in your storage. You'll get into huge trouble for this, jail time for sure. Unless, of course, we work it out. You can a) accept this and go to jail and lose the game b) give us the drugs for free and we can ask our boss to cut out a deal for you[if insaurance is true] c) call up your insaurance company to sort it out[end if].";
	now policeTalk is false.
	
accept is an action applying to nothing.
Understand "accept this and go to jail and lose the game" and "accept this" as accept.
Carry out accept:
	end the story finally saying "You've gone to jail and been locked away forever. You've lost this game. You've let your family down as they have no income and will now probably starve and be homeless. You haven't understood the sacrifices people made in the 1920's to stay alive. Try to play the game again to see how the average person would react.".

callInsaurance is an action applying to nothing.
Understand "call up insaurance company" and "call up your insaurance company to sort it out" and "call insaurance" as callInsaurance.
Carry out callInsaurance:
	say "After calling them up multiple times, you're forced to give up. It seems like they've provided a fake number. You've been a victim of insaurance fraud, you're on your own now. I guess you're stuck with option a or b.".
	
giveDrugs is an action applying to nothing.
Understand "give us the drugs for free and we can ask our boss to cut out a deal for you" and "give drugs" and "give them the drugs" and "give us the drugs" as giveDrugs.
Carry out giveDrugs:
	say "Smart choice, we'll handle it for you, come with us!";
	now the player is in levelSeven.
	
Section 6.2 - Level SixTwo

levelSixTwo is a Room.
The description of levelSixTwo is "Moments later, the police barge into your store. [line break] [italic type] We're looking for a criminal who's been on the run. We saw him come in this area. WOAH! HOLD UP! What's this stuff on your floor. IT'S DRUGS. You're getting into a lot of trouble for having this in your shop. Unless, of course, we work it out. You can a) accept this, go to jail, and lose the game b) give us the drugs for free and we can ask our boss to cut out a deal for you[if insaurance is true] c) call up your insaurance company to sort it out[end if].".

Section 7 - AlCapone

levelSeven is a Room.
The description of levelSeven is "WELCOME TO AL CAPONE'S DEN! Al Capone is always here to help. But more than helping, he loves gambling. He'll only help if you're willing to play a game with him. The game of 21. The game is played with a deck of cards. The aim of the game is to get as close to 21 as possible without going over and to do so you can pick up however many cards from the deck as you seem fit. Once you and Al Capone stop drawing cards from the deck, you'll compare each other's cards and whoever is closest to 21 wins the game. Before the games begin, you'll need to wager in an amount and whoever wins 2 out of the 3 total games walks home with that amount of money. You can choose to bet all of your money or half of it. Type play to play the game or leave to get caught by the police and be jailed.".

play is an action applying to nothing.
Understand "play" and "play the game" as play.
Carry out play:
	now gamePlay is true;
	now temp is 0;
	increase temp by cash;
	say "Enter the amount you want to put on the table: ".
	
After reading a command when gamePlay is true:
	if the player's command includes "[triggerword]":
		now currentTriggerword is the triggerword understood;
		calculateWager;
		now gamePlay is false;
		now inSession is true;
		playGame;
	else:
		say "I'm sorry, go back and either say half or all to confirm your bet.".
	
leave is an action applying to nothing.
Carry out leave:
	end the story finally saying "You've gone to jail and been locked away forever. You've lost this game. You've let your family down as they have no income and will now probably starve and be homeless. You haven't understood the sacrifices people made in the 1920's to stay alive. Try to play the game again to see how the average person would react.".

After reading a command when inSession is true:
	if the player's command includes "[triggerword]":
		now currentTriggerword is the triggerword understood;
		drawOrStop;
	else:
		say "Type Draw or Stop";

To playGame:
	let newCard be a random number between 0 and 10;
	increase playerSum by newCard; 
	say "[line break]You Got: [newCard], Your Sum: [playerSum][line break]";
	let newCard be a random number between 0 and 10;
	increase caponeSum by newCard;
	say "[line break]Capone Got: [newCard], Capone's Sum: [caponeSum][line break]";
	if playerWins is less than 2 and caponeWins is less than 2:
		say "Type draw to draw a new card or stop to not draw another card.";
				

To drawOrStop:
	if currentTriggerword is draw:
		let newCard be a random number between 0 and 10;
		increase playerSum by newCard;
		say "[line break]You Got: [newCard], Your Sum: [playerSum][line break]";
		if caponeSum is less than 17:
			let newCard be a random number between 0 and 10;
			increase caponeSum by newCard;
			say "[line break]Capone Got: [newCard], Capone's Sum: [caponeSum][line break]";
		else:
			say "[line break]Capone's Sum: [caponeSum][line break]";
		if playerSum is greater than 21 or caponeSum is greater than 21:
			say "Someone went over 21, type next game to view results and move on to the next game.";
	if currentTriggerword is stop:
		if caponeSum is less than 17:
			let newCard be a random number between 0 and 10;
			increase caponeSum by newCard;
			say "[line break]Capone Got: [newCard], Capone's Sum: [caponeSum][line break]";
		say "Are you sure? Type next game to view results and move on to the next game".
		
nextGame is an action applying to nothing.
Understand "next game" as nextGame.
Carry out nextGame:
	say "[line break]Capone's Sum: [caponeSum], Your Sum: [playerSum][line break]";
	if caponeSum is greater than 21:
		increase playerWins by 1;
		now playerSum is 0;
		now caponeSum is 0;
		playGame;
	else if playerSum is greater than 21:
		increase caponeWins by 1;
		now playerSum is 0;
		now caponeSum is 0;
		playGame;
	else if caponeSum is greater than playerSum:
		increase caponeWins by 1;
		now playerSum is 0;
		now caponeSum is 0;
		playGame;
	else if playerSum is greater than caponeSum:
		increase playerWins by 1;
		now playerSum is 0;
		now caponeSum is 0;
		playGame;
	if caponeWins is greater than 1:
		say "Al Capone has won majority of the games! You lose!";
		decrease cash by wager;
		endGame;
	if playerWins is greater than 1:
		say "You have won majority of the games! Congratulations!";
		increase cash by wager;
		endGame;
		
To endGame:
	end the story finally saying "Game Over".
		


	
	
	


	

		




	
		

  