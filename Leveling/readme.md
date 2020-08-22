# Overview

To make the most of MAD, your accounts need to be at level 30.  The following is a quick rundown of what an account needs to be levelwise for modes:

1. Monster scanning - you can have any level account find monsters, spawnpoints and TTH but to get the IV of it the account needs to be level 30 or higher.  Lower than 30 and MAD will ignore the IV data from the encounter as they are random.
2. Raids - any account over level 5 will work, which is the level you need to be to examine gyms
3. Quests - should be level 30 or higher.  Some rewards like monsters will be the same for all accounts that spin the stop for the quest.  However, say a level 5 was spun a stop that should be ultra balls, but since they can't get them based on their level the rewards for that quest would be erroneous for a level 30+ that also spins it (no testing for less than level 30 accounts regarding this has been done).

# Usage of instances, fences and stop dump

Consider running on a seperate instance of MAD and DB.  Make a backup first of db.  Import the stops without editing in say HeidiSQL.  For the fences, you will need to edit the file and set the variable for instance ID to match yours.  Make your areas from the fences.  Make your walkers from the area.

# Buying accounts

I had run up against the Google account registration limit, so in order to have more accounts, I bought some.  I had back luck buying accounts off of ebay for the most part.  I took 4x low level ptc accounts and leveled them to 30.  The person selling them took them back via recovery.  I did buy a couple from a guy in Israel - google accounts so I could setup the recovery myself but they were also in Hebrew.

# Making accounts

Level 30 accounts are created with MAD in what is called level mode.  This just goes around spinning stops.  You will need to spin just under 8000 stops to get an account to 30 (2 million xp) if you don't use lucky eggs.  Don't worry, set things up correctly and MAD will handle things for you.

I can't see routefree leveling being faster than using actual routes, so I only use routes.  Staying focused on the densest areas and not back tracking is they key.  Make sure you have ortools installed to speed up route calcs.  Make sure to pop eggs as they come, using my NYC routes the densest are at the beginning, might as well get the most XP per egg.

# Why can't I get 30 in one run

You need to start using eggs as they come...

There appears to be a stop spun limit per week of 7k.  As shown by the math provided by eevvee33 @ https://discordapp.com/channels/465247740553592832/465247740553592835/669635127156146178 breaks down why your worker will get stuck at about level 29.8 and hang.  Simply rest it for a few days and finish it off.  The math is shown as follows:

* spin a new pokestop: 250xp
* spin 10th new pokestop in a row: 500xp
* daily spin streak (days 1-6): 500xp
* daily spin streak (day 7): 2000xp
* This explains why we hit level 29.8 after spinning 7000 stops:
  * 6300 new stops (250xp)
  * 700 new stops as 10th new stop in a row (500xp)
  * 6 daily streaks (500xp)
  * 1 7th day streak (2000xp)
* 6300*250 + 700*500 + 6*500 + 2000 = 1930000 xp (level 29.8)
