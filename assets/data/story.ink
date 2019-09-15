MADNESS GAME LMAO

->deimos_sanford

You wake up in a lab. 
* [Enter next room]
- You walk up to enter the next room. The automatic door has no trouble sliding up and opening for you, revealing the room behind.
There's a heavy metal table in the room. The room is illuminated by a sole window and the blood red skies, shining light on papers that are on the table.
Right next to the entrance you entered, there's a single locker that's ajar, with it's padlock laying on the floor.

* (locker) [Locker]
    You open up the locker.
    Inside there's nothing but a few papers. You skim through them. They're too technical for you to understand, they all seem to be some reports of some sort. 
    * * However there's a paper that stand out from the rest. 
    - - A photo of 2 people. One with a headset and visor, the other with shades and a bandana.
    Who are they?
* [Table]
    You walk up to the large table. There are some office supplies on it. Some pens, a stapler.
    A variety of different papers are scattered across it. Some paper's are reports, some are pictures of different places. 
    On top of the mess of papers though, an image of someone. A picture taken from afar. He has some red goggles, and a bandana over his head and face. Seems like all these reports are about this person...
- 
* [Go to the {locker: table|locker}]
-
BZZZZZZZZZZZZZZZZZ
BZZZZZZZZZZZZZZZZZZZ
Alarms go off around you!
Before you could get to the {locker: table | locker}, what seems like an entire army start rushing into the lab room. You see them investigate the lab shit.
* [Run for the window]
    You try to sneak towards the window, but the guards spot you from the other room.
    One shoots towards you, but miss and actually break the window. Perfect!
    You run towards it, and without giving it a second thought, you dive through.
    You fall a few stories before you hit the ground and blackout. 
    ->streets_intro
* Fight them

==streets_intro==
FADE BACK IN

You start regaining consciousness. 

->END







==deimos_sanford==
You meet up with the boys at the gas station.
:Sanford: "Ah hello! Good to see you!" 
He's currently pumping gas into their car. 
:Sanford: "Deimos is inside getting some snacks.
* (in_store) [Go inside with Deimos]
    You head inside the gas station. You see Deimos.
    :Deimos: "Yooo!" 
    Deimos is holding a variety of snacks on sodas. "
    :Deimos: I'm just grabbin' a bunch of snacks. Nab what you want from here, I gotchu.
    Aw sweet. What a nice guy :3
    Well you're in a gas station, your options are a bit limited.
    * * (buy_candy) You get some candy[], specifically a nice chocolate bar and some gummies.
    * * (buy_jerky) You get some beef jerky[]. There's nothin like eatin some jerky with the boys.
    * * (buy_soda) You get a bottle of soda[]. Just some cola will do. As long as that shit is fizzy and roughens your teeth up, it's good enough for you.
    * * (buy_nothing) You get nothing[]. Don't wanna feel like a schmooze when you guys are hanging out for the first time.
    - - You walk up to the counter with Deimos. {buy_nothing: Deimos places his snacks on the counter| You place your {buy_candy: candy}{buy_jerky: jerky}{buy_soda: soda} on the counter along with Deimos' snacks.}
    {not buy_nothing: As promised, Deimos buys you your stuff, what a gentleman. Both of you head out the store. Sanford seems to be finsihing up the fill up too.}
* (in_car) Stay with Sanford
    :Sanford: "It's a little breezy out today, feel free to hop in the backseat bud."
    You hop in the backseat of the car. There's a little bit of trash in the backseat. Some empty chip bags, candy wrappers, and a half eaten bag of beef jerky.
    Grab some?
    * * (grabbed_jerky) [Yes]
        Eat it?
        * * * (ate_car_jerky) [Yes]
            You take a hard chomp on the piece of jerky. It's VERY chew-y.... Although it still has a deliciously salty taste. A tinge of sweetness too. At one point this was the finest of jerky.
        * * * (saved_car_jerky) [No]
            You put it in your pocket for later. It's likely you'll need it for something more important in the story. You never know what may happen. 
    * * [No]
        You decide not to grab a piece. Maybe it was just a trap.... Maybe it was a test.... Deimos and Sanford are seeing if you trying to sneak some of their secret stash of jerky.... Well, well, well, looks like you may have passed. 
    - - Just as Sanford finishes up the fill up, Deimos comes walking out with a bag of snacks.
- :Deimos: "Alright, let's bounce!"
* {not in_car} [You get in the car]
* ->
- 
You all get into the car. Deimos in the drivers seat, Sanford riding shotgun. You in the back like a goon.
{grabbed_jerky && ate_car_jerky: Deimos sniffs. "Why it smell like jerky? "Huh?" Sanford looks to you. He notices the open bag of jerky. He looks back to you. Now back to the bag.}
{grabbed_jerky && ate_car_jerky: "Aw nice some leftover jerky!" Deimos grabs a handful of jerky. "Want some?"}
* {grabbed_jerky && ate_car_jerky} [Grab some]
    You grab some jerky too. Even though you already ate some.... At least he offered it this time rather than you STEALING IT.
    :Deimos: "Kinda stale huh?"
    You nod in agreement
* {grabbed_jerky && ate_car_jerky} "No thanks" 
    :Deimos: "Alright no biggie" 
    Deimos takes a bite 
    :Deimos: "This stuff is a little.... stale..."
* ->
- Deimos starts the car and it comes to life. 
The car gets pulled out of the gas station and into the streets. Not too long later you're all on the open highway, driving through the empty grey plains. 
Nothing in sight other than some power poles and the baren red skyline.
Sanford turns the radio on. Some cool ass drum and bass techno ass music starts playing and braeks the somewhat awkward silence. 
:Deimos: "Hell yeah"
Sanford seems to turn towards you.
:Sanford: "So you ever been through this part of the state?"
* [You tell him about your little travels] 
- :Sanford: "Interesting, well just you wait until you see Nevada from up in the cliffsides. You can see the whole town from there"
{in_store && not buy_nothing: You {buy_soda: crack} open your{buy_candy: candy}{buy_jerky: jerky}{buy_soda: soda} and {buy_soda: take a sip | eat some.}}

->END












