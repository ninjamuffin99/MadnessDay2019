->auditor_shit
==auditor_shit==
    You get out of some test tubes or something.
    fulpsetbg medbay.png
    fulpfadein
    s
    You appear to be in a lab of some kind.
    You walk up to a computer with a chat app open.
    fulpactor laptop 300 100
    {|There's a daed body lying on the floor| There's two bodies lying on the ground in front of the computer. They both seem to be daed...| There's a group of dead bodies on the floor... all dead...| There's a group of dead bodies on the floor... all dead...| There's so many bodies, you have to wade through them to get ot the computer |There are so many bodies all around you, you cannot even get to the computer}
    Someone is typing...
    :BIGBADAUD999: u up?
    + [new phone who dis?]
    -
    :BIGBADAUD999: alright {~very good....|nice|cool cool}
    :BIGBADAUD999: {~ay|yo} you ready?
    + Yes??[]... I think so...
        :BIGBADAUD999: good.... 
        :BIGBADAUD999: when u ready, you KNOW you ready
        :BIGBADAUD999: this is a big mission, a long con one may call it...
        :BIGBADAUD999: not gonna give too many details, im sure youll cathc on...
        :BIGBADAUD999: *catch
        :BIGBADAUD999: ill give you a choice between a few locations. once you arrive, you'll know what you have to do....
        fulphide laptop
        -> choose_route
    + [No??]
        Everything goes black.
        fulpfadeout
        fulphide laptop
        s
        ->auditor_shit
    
    =choose_route
        fulpfadeout
        {|"Once you arrive, you'll know what you have to do."}
        * [Mall]                               -> hank_intro -> choose_route    
        * {hank_intro} [Cemetary]               -> hank_park -> interludes -> choose_route
        * {hank_intro} [Hank's House]               ->hank_gamer -> interludes -> choose_route
        * [Nightclub]                       -> deimos_sanford_intro -> choose_route
        * {deimos_sanford_intro} [Gas Station]  -> deimos_sanford -> interludes -> choose_route
        * {deimos_sanford_intro} [Mall]         -> deimos_sanford_mall -> interludes ->choose_route
        * {deimos_sanford and deimos_sanford_mall} [Sanford/Deimos ending] -> deimos_sanford_ending -> interludes -> choose_route
        * {hank_park and hank_gamer} [Hank ending] -> hank_ending -> interludes -> choose_route
        - Finished game??
        ->END

== interludes ==
    YOU HEAD BACK TO THE LAB
    {-> second_interlude | -> thrid_interlude | -> final_interlude | ->->}
    = intro_interlude
        In the beginning interlude, you and the auditor do shit i guess
        ->is_away
    = second_interlude
        :BIGBADAUD999: so, have you caught on yet?
        * yeah, i think so....
        - :BIGBADAUD999: good... very good...
        :BIGBADAUD999: yeah
        :BIGBADAUD999: you seem to be deceiving them well
        :BIGBADAUD999: its not going to be too long before youre right in with them
        :BIGBADAUD999: and when theyre ready...
        * ready for what?
        - 
        * whats gonna happen?
        - 
        
        ->is_away
    = thrid_interlude
        You and the Auditor get into a sort of argument about things. He warns you about what will happen if you don't listen to him.
        ->is_away
    = final_interlude
        You try and convince the Auditor that the boys are good and they aren't as bad as he thinks. He cuts off contact with you, but only after he threatens to murder you. Even though he has the power to do so as he pleases....
        ->is_away
    = is_away
        BIGBADAUD999 is away.
        ...
        ->->

== hank_intro ==
    You go to the local mall.
    fulpfadein
    fulpsetbg mall.png
    You walk around for a while, aimlessly strolling through the shops.
    When suddenly
    You see him.
    fulpactor Hank2 300 100
    You introduce yourself and he introduces himself. 
    You hit on him, and he hits on you poorly.
    
    ->->

== hank_park ==
    * [You decide to take a stroll to the cemetary.]
    - It's a nice red day out today. There are other people hanging around the cemetary.
    An overall lovely and nice day.
    * [Sit down at a bench]
    - 
    It's a nice and comfy bench. It's a standard bench made of wood and metal. Nothing too crazy about it.
    :????:Yooooooo!
    You turn and who else do you see than your good old pal Hank!
    :Hank: Hey pal! What's up!
    * [You tell Hank your recent shenanigans]
    * [The sky]
        :Hank: Haha! Now that was a funny joke!
    - :Hank: It's good to see you doing well friend!
    :Hank: I was just strolling by for fun and pleasure!
    :Hank: And turns out I run into you! Ha! My good friend!
    :Hank: What a good and lucky day I am having!
    Hank sits down on the bench beside you and opens up his phone.
    :Hank: HA! Bro look at this funny meme I found!
    Hank pronounced it as "me-me". I'm just letting you know.
    Hank shows you his phone. It's an image of a very fat guy, and it says "gimme more borger!"
    * [Chuckle at it]
        :Hank: I knew you would like it! 
    * [Laugh. HARD.]
        :Hank: I knew you would like it! Haha!
    * [No reaction]
        :Hank: It's very funny! I think you just don't get the joke.
        :Hank: Hey it's Hank J. Wimbleton, here to explain the joke.
        :Hank: Basically it's funny because it is a severly obese Madness grunt depicted in a low quality art style. He is saying 'gimme more borger' because he is hungry and fat people are known to eat a lot of food.
        :Hank: He is overweight, normally Madness grunts are not overweight so this one is different. Another thing that makes it different is the gramatical errors.
        :Hank: Neither 'gimme' nor 'borger' are the correct spelling of either word, and 'gimme' isn't capitalized even though it is the beginning of a setance. That too makes this meme different and odd
        :Hank: it is different thats why its so funny haha do you get it. like if you agree
    - :Hank: I sure do love memes a lot!
    :Hank: Do you got a meme you like to laugh at?
    * [Show Hank a funny wacky meme]
    :Hank: Can I see?
    You bust your phone out. Praying you don't scroll through certain embarrassing pictures that you don't want Hank seeing, you find a meme.
        //show the WE ARE GOING TO BEAT YOU TO DEATH meme
        :Hank: This one is a good one! Can you explain the joke for me?!
        * * [Hey madness grunt here to explain the joke]
        - - What's funny about this joke is....
        * * [They are actually really nice]
        - -
    * [No meme for hank]
        :Hank: Aw man dangit. Oh well! I'll just find some on 9Gag later.
    - 
    A few moments pass by. Hank turns to you.
    :Hank: You're probably wondering why I brought you here....
    :Hank: Well this place has meaning to me...
    :Hank: You see, a long time ago...
    :Hank: An incident happened here...
    :Hank: An incident I would not particularly like to remember...
    :Hank: But it's one that is important...
    * [You let Hank continue]
    - 
    :Hank:
    Hank explains to you the signifigance of this cemetary.
    He tells you about the boombox guy.
    But really it's not too signifigant or anything.
    It's just some dumbass nowhere story.
    
    ->->

==hank_gamer
    You roll up to a decent looking house. There's not really any neighbours or anything. A lone house on the side of this street.
    You go up to the door, and before you can knock, well would you look at that, Hank answers the door!
    :Hank: Hello! My good friend! Welcome to my hous!
    Hank greets you and gestures you to come inside with him
    You follow him. The living room, where he has a niceflatscreen TV, and a few gaming consoles hooked up.
    :Hank: Hey make yourself at home!
    Well, you do. You plop down on the couch in the living room. On the coffee table there's an art book of some kind.
    :Hank: Hey you need anything? I got uhhhhh some soda. A lot of it.
    * (gingerale) [Ginger Ale]
    * (rootbeer) [Root Beer]
    * (cola) [Cola]
    * (water)[Water]
    * (no_drink)[Nothing]
    - :Hank: {no_drink: Huh, alright no problem friend.|Alright, a big ol {water:glass|can} of {gingerale:ginger ale}{rootbeer: rootbeer}{cola: Coke}{water:water} for my pal}
    {not no_drink:Hank {water:brings you|tosses you} the {water:glass|can} of {gingerale:ginger ale}{rootbeer: rootbeer}{cola: Coke}{water:water}}
    * {not no_drink and not water} [You crack the can open.]
        The carbonated drink fizzes away.
    - 
    * {not no_drink} [You take a sip]
        It hits the right spot. Living out here in Nevada sure makes you thirsty!
    - 
    Hank sits down on the chair beside the couch. He grabs the controller to the game console and turns the system on.
    :Hank: Wanna play some video games my good friend?
    * (is_gaming) [Gaming time]
        :Hank: Alright yeah!
        Hank looks around for another controller.
        :Hank: Here we go!
        Hank hands you a thrid party controller. The plastic is clear so you can see the electronics inside. And it has cheap LEDs on the inside so that the controller lights up obnoxiously.
        * * You wiggle the joysticks[] and they feel very crummy. Game too hard and you might just snap them off accidentally.
        - -
        :Hank: I'll let you use my favorite controller. 
        :Hank: See those cool lights?! Ha! I love them!
    * (is_watching) [You decide to just watch]
        :Hank: Alright no problem!
    - Hank boots up a {is_gaming:multiplayer|singleplayer} game.
    It is a first person shooter of some kind.
    Hank loads into the online multiplayer, and he puts on a headset.
    :Hank: The most important part of video gaming is communication!
    {is_gaming: You two|Hank} play{is_watching:s} a match {is_gaming:together}.
    Hank loses the game and calls his teamates the N word.
    :Hank: Gamer moment.
    Hank looks to you and realizes his sin.
    :Hank: Sorry, I get very heated in these video game situations. I apologize if I have offended you!
    Hank's teammates call him gay.
    * [Back Hank up]
        You decide to defend your good pal Hank. You grab Hank's controller and teamkill his teammates.
        They call you gay.
        And then votekick Hank from the game.
        :Hank: DAMNIT! My reputation! Oh well.
    * [Suggest doing something else]
        :Hank: Hmmm, alright yeah
    - :Hank: I don't even like video games they are too hard for me.
    :Hank: Well if we aren't going to play video games, what else do you wanna do?
    :Hank: Maybe we can watch funny internet videos!
    * [Watch cringe compilations]
    - You find a playlist of videos about pickup artists.
    :Hank: Woah! Is this how I should make friends??
    * [You explain that this is the OPPOSITE of how you interact with people]
    - :Hank: Huh, alright I see!
    :Hank: I'm getting a bit hungry, I'm going to order a pizza pie!
    Hank orders a pizza pie.
    You continue to watch various cringe vids. Eventually the pizza comes. For the next few hours you both laugh at socially retarded individuals and eat pepperoni pizza together.
    At some point Hank notices the time.
    :Hank: Woah, I just noticed the time!
    :Hank: It's very late out right now!
    :Hank: What if you stayed overnight?
    :Hank: haha jk...
    :Hank: unless...
    * [Stay overnight]
        :Hank: Hell yeah! Sleepover!
        You stay overnight.
        You and Hank have a good night together, watching wacky internet videos, eating more pizza.
        YOU BOTH GO TO SLEEP AND ABSOLUTELY NO GAY SHIT HAPPENS
        In the morning, you wake up and Hank makes you a bowl of cereal.
        You both watch some cartoons. After a little while you decide to say your farewell to Hank and head home.
    * [Go home]
        :Hank: Alright no problem!
        :Hank: I hope you have a safe trip back home my good friend!
        :Hank: I had a very fun evening with you!
        You head home.
    - 
    ->->
    
== hank_ending ==
    This is the Hank ending.
    Maybe he leaves you to go on a killing spree or something.
    blah blah blah whatever insert some ending here.
    Also shit he shows you his realistic eyes
    
    ->->
    
//DEIMOS AND SANFORD
== deimos_sanford_intro ==
    You roll up to the nightclub where Tricky is the DJ.
    He is playing some dumbass pop song from the early 2010s
    You was at the club
    Bottoms up, when I first met you.
    Couldn't get enough
    Had to get you straight to my bedroom
    You meet Deimos and Sanford
    They are jammin and shit. You check your phone and you get intel from The Auditor, he tells you which song to request the DJ Tricky to play.
    The boys are really into it.
    * [You walk to the center of the dance floor.]
    - Everyone is looking at you!
    * [You bust some moves!]
    - You were cloned with supernatural dance skils and powers.
    A circle forms around, everyone is clapping and shoutin at you, cheering you on.
    You keep bustin some moves, when suddenly, a stranger emerges from the crowd.
    :Sanford: My name is Sanford, I own the dancefloor around here. 
    The crowd parts, one half on this Sanford guys side, the other goes to yours.
    You each bust a move, the party is getting so hot and steamy.
    What moves do you bust?
    * (floss) [The floss]
        BOOOO
        Everyone boo's you so bad, you are forced to leave the dance floor.
        However, Sanford comes over to you
        :Sanford: You got some nerve tryin to dance battle me kid.
        :Sanford: Ayo Deimos check this guy out!
        A man comes, presumably Deimos.
        :Sanford: Hey, take my number pal, maybe I'll show ya how to bust a move like I do.
        
    * [The Robot]
        That was so bland.
        Everyone threw up on the dance floor.
        But it turns out
    * [That Snoop Dogg dance, you know the one]
        Everyone cheers.
        Sanford comes and walks to you
        :Sanford: Hey kid, those moves were pretty sweet. 
        :Sanford: Yo Deimos, come check this dude out.
        A man, presumably Deimos, walks up to you both.
        :Sanford: This my guy Deimos
        Why don't I give you my nubmer, and you can teach me a thing or two.
    - 
    
    ->->

==deimos_sanford_mall==
    You walk into the mall's entrance. Inside you see a clean hall with stores scattered on each side.
    You were supposed to meet up with them... near the food court it seems.
    * [Check the mall's map]
    - Seems you went into the entrance nearest to the food court. Lucky!
    * You walk to the food court[], and right there is Deimos and Sanford! Deimos is patiently waiting, while Sanford seems to be playing a game on his phone.
    - :Deimos: Yoooo!
    :Sanford: Hey! Aw SHIT!
    :Sanford: Just lost, dangit... Ah well let's roll and see what's happenin around here.
    :Deimos: Hey! I thought we were getting some ice cream first!
    :Deimos: We're in the food court anyways.
    :Sanford: Come on, let's just stroll around for a bit, and we just ate a little snack while we were waiting.
    - (mall_choices)
    * (got_ice_cream) [Get ice cream]
        ->getting_ice_cream
    * (explored) [Explore a bit]
        ->going_exploring
    - ->leave_mall
    
    =getting_ice_cream
        :Deimos: Yeah see, let's get some scoops fellas.
        {not explored: :Sanford: Hnng, alright FINE.}
        :Deimos: Heheheh
        - - (icecream_waiting)
        * * [You all stand in line and wait to order]
        {There's a few people in front of you. You are all gonna have to wait a hot minute for some ice cream |The line progresses slightly forward. Hopefully the icecream isn't melted by the time you get to the front...|Alright, the guy in front of you is ordering...and he's taking forever....for a one scoop plain cone....|->exit_loop_icecream}
        ->icecream_waiting
        //There's probably an easier way to do this.
        =exit_loop_icecream
            :Deimos: Finally!
            :Deimos: I'd like a scoop of vanilla!
            :Sanford: Really? An absolute nothing vanilla flavoured ice cream??
            :Deimos: I'm a simple guy Sanford.
            :Sanford: Whatever, hey hook me up with some rocky road, two scoops of it, in a waffle cone.
            "And you?"
            * * [Vanilla]
            * * [Chocolate]
            * * [Mint]
            * * [Cookies and Cream]
            - - :Deimos: Nice!
            The person working at the shop hands the cones to you all, and Deimos pays for it all.
            The boys and you walk over to sit down at a table when suddenly
            :Deimos: AHH!
            Deimos trips and falls onto you, making a mess of your clothes with his ice cream!
            :Sanford: Deimos! You dunce!
            :Deimos: Aw maaaaaaaan.... my ice cream ;_;
            Deimos looks at you, and realizes that he got your clothes messy with his ice cream
            :Deimos: Woah sorry! Man I feel bad...
            * * [You accept Deimos' apology]
            - - :Deimos: Well damn, now you're gonna have to walk around all day in messy clothes...
            :Deimos: Unless...
            :Deimos: How about we hook you up with some new threads fella?
            :Deimos: We're at the mall anyways!
            You would prefer to walk around in clean clothes...
            * * [You accept the offer]
            - -:Deimos: Hell yeah
            :Sanford: Alright, let's go lookin for the store.
        
            -> clothes_store
    
    =clothes_store
        {explored: You remember the clothes store was right next the video game shop.| After looking for a little while, you fellas find the clothes store.}
        You walk into the Hot Topic
        :Sanford: Oh hey, there's my favourite Dragonball Super T-Shirt!
        :Sanford: It has ultra instinct Goku on it!
        :Sanford: My favorite character!
        Sanford points at the clerk
        :Sanford: Hey look at that hot chick with the thumbtack earings!
        :Sanford: That's pretty hip!
        :Sanford: But not as hip as this Legend Of Zelda Monopoly set!
        :Sanford: And it's only 20$ what a steal!
        :Deimos: Sanford this is serious business, we came here on serious business!
        :Deimos: We need to find out friend a shirt! And Fast!
        Deimos nabs the first shirt off the rack.
        It's a Rick and Morty Pickle Rick shirt.
        :Both: Perfect!
        You go try the shirt on. It wraps around your body so nicely, you can see your hot pecks sticking out.
        :Deimos: Damn, that shirt wraps around your body so nicely, you can see your hot pecks sticking out!
        :Sanford: I approve.
        They buy the shirt for you, and also pickup a Finn Wolfhard Stranger Things FunkoPop! figure.
        :Sanford: Wow! It's Comiccon exclusive! And it's at Hottopic! Cool!
        They also get 2 for themselves.
        ->mall_choices
    
    =going_exploring
        You all walk around the mall for a bit. You see some clothes stores.
        :Deimos: Imma head into the video game store, I wanna see what's new.
        :Sanford: Aight, im headin in the arts and crafts store.
        * [Video game]
            You go into the video game shop with Deimos.
            You see all sorts of retro video games.
            And most importantly, you see your good friend Deimos.
            You go up to Deimos, he has a video game in his hand.
            What video game does he have in his hand?
            He's got Link's Crossbow training for the Nintendo Wii
            :Deimos: This shit is a collector's item!
            :Deimos: How lucky am I?!
            :Deimos: You find anything interesting?
            You tell him you haven't looked around yet.
            Deimos looks around.
            :Deimos: Hmmm, you know what, I'll hook you up with something from the bargain bin.
            Hell yeah
            * *  [You go the bargain bin.]
            - - There's an assortment of shitty Nintendo DS shovelware games.
            - - (digloop)
            + + [You dig around in the bargain bin]
            - - 
            In the bin, you find {Lego Star Wars|}
            + + [Keep digging?]
                You decide to keep digging. -> digloop
            * * [Stop diggin]
            - - You pick out a game from the bargain bin, and bring it to Deimos.
            
            
            
        * [Arts and crafts]
            You walk into the arts and crafts shop. There's yarns all around. And it smell like construction paper and Elmer's Glue.
            You see Sanford.
            :Sanford: Let's check out the snail shells, I need em for a project.
            You walk over to the snail section.
            You inspect all the variety of snail shit.
            
            :Sanford: Wow, free samples, wanna try some?
            * * [Eat]
                You put the snail shell in your mouth and crunch down.
                It tastes goooood.
                But suddenly
                You vision goes black!
                You forgot you were allergic to snail shells! 
                YOU DIED
                BAD ENDING!
                ->END
            * * [Crush]
                You crush the snailshells in your hand and spread it around like pixie dust.
                You blow it on Sanford
            * * [Put them on Sanford]
                You make a lovely necklace of snail shells.
                You romantically put it around Sanford's neck.
                He turns to you.
                :Sanford: This is beutiful...
                :Sanford: I love it....
                A shimmer is in his eye, he's never experienced this before from anyone other than Deimos.
                :Sanford: Thank you,,.....
            - - 
        - 
        Video game shop with deimos, or the arts and crafts store with Sanford. Or something by yourself.
        After you all buy shit, you meet up again and head to the food court, or leave the mall
        One of you goes to the lego store.
        -> mall_choices
        
    =leave_mall
        :Sanford: Let's go back to the food court and get somethin special.
        You all go back to the food court.
        Sanford goes up to the ice cream place.
        :Sanford: One large chocolate milkshake please!
        Sanford turns to Deimos
        :Sanford: This time, I'LL carry the stuff.
        Deimos frowns.
        Sanford gets the milkshake from the ice cream employee.
        :Sanford: And three straws please!
        You all walk to a table, and sit down together.
        Deimos on your left side, Sanford on your right.
        You all drink the milkshake at the same time like some Archie, Veronica and Betty ass bullshit
        All lookin cute and shit
        :Deimos: That sure was delicious!
        After a fun day you decide to leave the mall.
        ->->



==deimos_sanford==
    You meet up with the boys at the gas station.
    fulpfadein
    fulpsetbg GasStation.png
    You see Sanford outside pumping gas
    fulpactor sanford 50 60
    fulpactor deimos 400 60
    fulphide deimos
    s
    :Sanford: "Ah hello! Good to see you!" 
    He's currently pumping gas into their car. 
    :Sanford: "Deimos is inside getting some snacks.
    * (in_store) [Go inside with Deimos]
        You head inside the gas station.
        fulpsetbg 711Inside.jpg
        fulphide sanford
        fulpactor deimos 400 60
        s
        You see Deimos.
        :Deimos: "Yooo!" 
        Deimos is holding a variety of snacks and sodas. "
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
    fulpsetbg carinside.jpg
    s
    fulpactor sanford
    fulpactor deimos
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
    
    Sanford turns towards you.
    :Sanford: "So you ever been through this part of the state?"
    * [You tell him about your little travels] 
    - :Sanford: "Interesting, well just you wait until you see Nevada from up in the cliffsides. You can see the whole town from there"
    You're getting a little bored, and hungry too.
    {buy_nothing: Maybe you should have gotten some food... | Good thing Deimos bought some {buy_candy: candy}{buy_jerky: jerky}{buy_soda: soda} for you.}
    * (eating_snacks) {in_store && not buy_nothing} [{in_store && not buy_nothing: You {buy_soda:crack }open your{buy_candy: candy}{buy_jerky: jerky}{buy_soda: soda} and {buy_soda: take a sip | eat some.}}]
        
    * (saved_snacks) {in_store && not buy_nothing} [You save it for later]
        You never know when you'll need some {buy_candy: candy}{buy_jerky: jerky}{buy_soda: soda} handy. 
    * ->
    - 
    Sanford turns the radio on. Some cool ass drum and bass techno ass music starts playing and breaks the somewhat awkward silence. 
    :Deimos: "Hell yeah"
    This music sets the mood nicely. Three homies cruising through Nevada listening to cool ass drum and bass techno ass music. Few words are being spoken, but you feel the bond forming between you three, as you join them on this small little adventure.
    
    Cliffsides off in the distance ahead of the car start moving towards you. It's not too long when the car approaches it.
    The car follows a rough path up the sides. It reaches a spot that overlooks the plains and you can see the town far off in the distance.
    Sanford turns the car off.
    :Sanford: Here we are!
    * [You all get out of the car]
    - You look at the Nevada horizon. 
    You and Deimos lean up against the hood of the car, together you watch the sun as it dips and falls behind the far away mountains.
    :Deimos: What a sight huh.
    Sanford is still behind the car getting some stuff out of the trunk.
    :Sanford: Amen!
    He comes up front with a picnic basket.
    :Deimos: What's this shit?
    :Sanford: Uhh... it's a picnic basket?
    :Deimos: What are we, some suburban white family on a Saturday out in the park?
    :Sanford: ....
    Sanford opens the basket, revealing something steaming wrapped up in a foil of some sort.
    :Sanford: I brought some Philly cheesesteaks....
    :Deimos: What the.... huh.. alright I GUESS
    Deimos grabs one, and hands it to you.
    :Deimos: Yo, you like some Philly cheesesteak?
    * (ate_sandwich) [Hook me up]
        :Deimos: Hell yeah, I gotchu
        Deimos hands you the wrapped sandwich. It's warm to the touch.
        * * You unwrap it[], and you see the appetizing sandwich.
        - - 
        * * You take a bite[] and it tastes delicious.
        - - 
        
    * [Uhhh... no thanks...]
        :Deimos: Huh... alright... suit yourself...
        :Sanford: Come on Deimos quit bein weird about it
    - The boys take a bite of their sandwiches{ate_sandwich: as well|.}
    :Deimos: Man this shit is good
    :Deimos: I needed something to get the stale jerky taste out of my mouth...
    :Sanford: How many times do I need to tell you not to eat whatever car jerky you find?
    :Deimos: Eh whatever
    :Deimos: That stuff still a little tasty
    //fadeout
    You all enjoy the sunset and eating food together. You finish some snacks, while you hang out with your bros.
    The evening was tranquil, outside of town not too much happens. 
    ESPECIALLY NOT GAY SHIT, NO GAY SHIT HAPPENED.
    The boys drive back into town with you, and they drop you off.
    You head home.
    ->->

== deimos_sanford_ending
    You meetup with Sanford and Deimos.
    You get in their car
    Deimos dies somehow
    ->->







