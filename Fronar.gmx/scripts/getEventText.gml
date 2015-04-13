//getEventText()

switch(global.event_id) {
        case 0:
            //Abandoned Shack
            text =
            "Somewhere along the road the crew finds an abandoned shack with the windows blown out." +
            "#After poking around, " + 
            ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 1) +
            " finds some duct tape and a kitchen knife that can be made into a" +
            "#bayonet, and some fruit and vegetables growing in what's left of the garden out back." +
            "##+3 Food";
            return text;
            break;
        case 1: 
            //Spike Pit
            //Need to -1 because irandom has inclusive range between 0 and n
            text =
            "After travelling through the trees for some time, the crew finds a clearing with a spike pit in the" +
            "#middle, several metres in diameter and about two metres deep. Suspended from ropes on all" + 
            "#sides, an enormous sack marked 'RATIONS' hangs in the middle and dangling over the " +
            "#spikes below." + 
            '#"Alright, what asshole set this up?" ' + 
            ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 1) +
            " says." +
            "#There's no guarantee that whatever's in the bag is actually edible, and retrieving it would be" +
            "#dangerous.";
            return text; 
            break;
        case 2:
            //Wagon Lady
            text =
            '"Why who might ye be?"#' + 
            "#An old crone comes toddling up the road. Wearing what looks and smells like old kitchen rags and a" + 
            "#deep hood over her eyes, she pulls a wagon of assorted goods behind her, as if she'd stepped straight" +
            "#out of medieval times.#" +
            '#"' + "I'd be willing to trade with ye' if you've got the goods to spare. Just a warnin' though: I may look old" + 
            "#but I got some fight in me yet. So no funny business, y'hear?" + '"';
            return text;
            break;
        case 3:
            //Box of heroin
            char1 = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 1);
            char2 = ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 1);
            text = 
            "While passing through a junkyard, " + char1 + " trips on a plank of wood and falls into a box of what is" +
            + "#unmistakably heroin." +
            '##"' + "That's definitely heroin," + '"' + " " + char2 + " says. " + '"' + "Don't ask me how I know." + '"' + 
            '##"' + "I couldn't help it, it got in my mouth! What am I supposed to do?" + '"' + 
            '##"' + "Just ride it out, " + char1 + ".  Ride it out." + '"';
            return text;
            break;
        case 4:
            //Lightning
            text =
            "There's not a cloud in the sky but lightning has struck the party. Be it a stroke of a good luck, a fickle" + 
            "#god's caprice, or a Borgi airstrike gone horribly wrong, everyone feels bright, crispy, and very far from" + 
            "#dead. #" + 
            '#"' + "I've never felt better!" + '"' + 
            "##+1 to Crew's Damage" +
            "#The Crew is fully healed.";
            return text;
            break;
        case 5:
            //Circus
            char1 = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 1);
            char2 = ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 1);
            char1gender = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 0);
            char2gender = ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 0);
            char1pronoun = getGenderedPronoun(char1gender, false);
            char2pronoun = getGenderedPronoun(char2gender, false);
            text = 
            "A gust of wind, and a cloud of dust and trash fly through the air - along with it, an old flyer that blows" +
            "#up against " + char1 + "'s foot. Scooping it up, " + char1pronoun + " sees a Ferris wheel and a clown on the front." +
            '##"' + "It's dated September 8. That's the day before the Borgis hit. Think it might still be around?" + '"' + 
            '##"' + "Not sure." + '" ' + char2 + " sighs. " + '"' + "But I haven't been to a circus since I was a kid. Might be nice, and we" +
            "#could use the break. No harm in checking." + '"' +
            "##The party follows the directions on the flyer and arrives at a fenced off field with colourful arches " +
            "#above the turnstile. Within, they find a deserted area populated with carnival booths, a moldy dunk" + 
            "#tank, and empty animal cages. A big top stands at the end of the row. There is no Ferris wheel in sight." +
            '##"' + "Guess we'll look around and report back? Might find some supplies, at least." + '"';
            return text;
            break;
        case 6:
            char1 = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 1);
            char2 = ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 1);
            char1gender = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 0);
            char2gender = ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 0);
            char1pronoun = getGenderedPronoun(char1gender, false);
            char2pronoun = getGenderedPronoun(char2gender, false);
            char1posessive = getGenderedPosessive(char1gender, false);
            text = "Upon reaching the outskirts of a nearby town, " + char1 + " realizes " + char1pronoun + " forgot " + 
            char1posessive +
            "#weapon at last night's camp. Without a weapon " + char1pronoun + "'ll be no good in a fight." +
            '##"' + "I'm really sorry, guys. Should I go back and get it?" + '"' +
            "#" + char2 + " insists that the group keep moving. " + '"' + "We can't afford to backtrack," + '"' + char2pronoun +
            "#says.";
            return text;
            break;
        case 7:
            char1 = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 1);
            char1gender = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 0);
            char1pronoun = getGenderedPronoun(char1gender, false);
            char1posessive = getGenderedPosessive(char1gender, false);
            text = "After taking a piss in the bush, " + char1 + " notices something at " + char1posessive + " feet partially" + 
            "#hidden behind a bush: an old black duffel bag covered in mud. Opening it up, " + char1pronoun + 
            "#finds a weapon almost identical to the one " + char1pronoun + " lost!" +
            "##" + char1 + "'s Attack increases by 1.";
            return text;
            break;
        case 8:
            char1 = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 1);
            char2 = ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 1);
            char1gender = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 0);
            char2gender = ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 0);
            char1pronoun = getGenderedPronoun(char1gender, false);
            char2pronoun = getGenderedPronoun(char2gender, false);
            char1posessive = getGenderedPosessive(char1gender, false);
            text = char1 + " opens the door and a shower of dust falls from the doorframe. Blown-out, ceiling-high" + 
            "#windows shine daylight on rows and rows of books, each covered in its own coat of dust. By the" + 
            "#thickness of it, this library was abandoned long before the Borgis hit." +
            "##" + char2 + " picks up a copy of " + '"Huckleberry Finn"' + " someone has left on the table. A book-shaped" +
            "#outline marks where it might have been sitting for years. " + char2 + " flips it open and stares at the" +
            "#pages without reading them." + 
            '##"' + "Do you think we'll get it all back someday?" + '"' + 
            '##"' + "Say again?" + '" ' + char1 + " calls from two rows over." + 
            "##" + char2 + ' finds a spot on the shelf and puts the book away. "Nevermind," ' + char2pronoun + " mumbles, and" +
            "#continues down the line.";
            return text;
            break;
}
