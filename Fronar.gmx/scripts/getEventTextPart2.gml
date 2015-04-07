//getEventTextPart2()

switch(global.event_id) {
        case 0:
            //Abandoned Shack, Requires choice of 1 character
            char = global.event_selected_option;
            chargender = ds_list_find_value(ds_list_find_value(global.eventCharList, char), 0);
            charname = ds_list_find_value(ds_list_find_value(global.eventCharList, char), 1);
            
            text = charname +
            " wraps duct tape around the knife and the end of " + 
            getGenderedPosessive(chargender, false) + 
            " gun. #" +
            getGenderedPronoun(chargender, true) + 
            " takes a few practice swings. " +
            '##"Let' + "'s see those Borgis come at me now!" + '"' +
            "##+3 to " + charname + "'s Melee Damage."             
            return text;
            break;
        case 1:
            //Spike Pit, Requires either a character or do nothing, also has subevents
            option = global.event_selected_option;
            if (option == 0){
                text = 
                "No way in hell am I falling for that again," +
                ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 1) + " says.#" + 
                "The party leaves what is probably a trap and continues on through the trees.";
            } else  {
                char = global.event_selected_option - 1;
                chargender = ds_list_find_value(ds_list_find_value(global.eventCharList, char), 0);
                charname = ds_list_find_value(ds_list_find_value(global.eventCharList, char), 1);
                charpronoun = getGenderedPronoun(chargender, false);
                charposessive = getGenderedPosessive(chargender, false);
                charpronounCaps = getGenderedPronoun(chargender, true);
                charself = getGenderedSelf(chargender);
                //Option 1 and 2 both are character selections
                switch(global.event_subevent){
                    case 0:
                        text = charname + 
                        " notices a low hanging branch on a nearby tree. " + 
                        charpronounCaps + 
                        " could probably climb out" + 
                        "#on the limb and grab the rations from above, and as long as its not too heavy " +
                        charpronoun + " could" +
                        "#untie the sack and swing it over to the edge of the pit.#" + 
                        '#"Seems sturdy enough."##' +
                        charname + 
                        " wraps " + charposessive +
                        " legs around the branch and reaches down. A few seconds later the "  +
                        "#sack is free and lands safely beside the pit. But before " +
                        charpronoun + 
                        " can make it to the trunk of the" + 
                        "#tree, the branch snaps and " + charname + 
                        " falls into the pit below, impaling " + charposessive + " leg on one of" + 
                        "#the spikes. With a scream that sends a flock of birds flying " + charpronoun + " manages to free#" +
                        charself + " and crawl out of the pit, but " + charpronoun + "is bleeding profusely.#" + 
                        "#Turns out the sack is chock-full of non-perishable foodstuffs. Still, someone has a sick sense of humour.#" + 
                        "#+10 Food" + 
                        "#-10 to " + charname + "'s health, and " + charposessive + " movement speed is decreased to 1.";
                        break;
                    case 1:
                        text = charname + 
                        " notices a low hanging branch on a nearby tree. " + 
                        charpronounCaps + 
                        " could probably climb out" + 
                        "#on the limb and grab the rations from above, and as long as its not too heavy " +
                        charpronoun + " could" +
                        "#untie the sack and swing it over to the edge of the pit.#" + 
                        '#"Seems sturdy enough."##' +
                        charname + 
                        " wraps " + charposessive +
                        " legs around the branch and reaches down. A few seconds later the "  +
                        "#sack is free and lands safely beside the pit. But before " +
                        charpronoun + 
                        " can make it to the trunk of the" + 
                        "#tree, the branch snaps and " + charname + 
                        " falls into the pit below, impaling " + charposessive + " leg on one of" + 
                        "#the spikes. With a scream that sends a flock of birds flying " + charpronoun + " manages to free#" +
                        charself + " and crawl out of the pit, but " + charpronoun + " is bleeding profusely.#" + 
                        "#Turns out the sack is chock-full of horse manure. Someone has a sick sense of humour.#" + 
                        "#-10 to " + charname + "'s health, and " + charposessive + " movement speed is decreased to 1.";
                        break;
                    case 2:
                        text = charname + 
                        " notices a low hanging branch on a nearby tree. " + 
                        charpronounCaps + 
                        " could probably climb out" + 
                        "#on the limb and grab the rations from above, and as long as its not too heavy " +
                        charpronoun + " could" +
                        "#untie the sack and swing it over to the edge of the pit.#" + 
                        '#"Seems sturdy enough."##' +
                        charname + 
                        " wraps " + charposessive +
                        " legs around the branch and reaches down. A few seconds later the "  +
                        "#sack is free and lands safely beside the pit. " + 
                        "#Then " + charpronoun + " scampers back to safety. #" + 
                        "#Turns out the sack is chock-full of non-perishable foodstuffs. Still, someone has a sick sense of humour.#" + 
                        "#+10 Food";                 
                        break;
                    case 3:
                        text = charname + 
                        " notices a low hanging branch on a nearby tree. " + 
                        charpronounCaps + 
                        " could probably climb out" + 
                        "#on the limb and grab the rations from above, and as long as its not too heavy " +
                        charpronoun + " could" +
                        "#untie the sack and swing it over to the edge of the pit.#" + 
                        '#"Seems sturdy enough."##' +
                        charname + 
                        " wraps " + charposessive +
                        " legs around the branch and reaches down. A few seconds later the "  +
                        "#sack is free and lands safely beside the pit. " + 
                        "#Then " + charpronoun + " scampers back to safety. #" + 
                        "#Turns out the sack is chock-full of horse manure.  Someone has a sick sense of humour.#";                         
                        break;
                }
            
            }
            return text;
            break;
        case 2:
            switch(global.event_selected_option){
                case 0:
                    text = '"Pleasure doin' + "' business with ye'." + '"#' +
                    "#The party bids her farewell before she disappears into the distance." +
                    "##-10 Food, +5 Parts";
                    break;
                case 1:
                    text = '"I thought y' + "'might need em. You ain't lookin' so good." + '"#' + 
                    "#The party bids her farewell before she disappears into the distance." +
                    "##-10 Food, +5 Med Kits";
                    break;
                case 2:
                    text = '"' + "That's all y'got, eh? Well alright then." + '"' + 
                    "##The party bids her farewell before she disappears into the distance." + 
                    "##-5 Parts, +3 Med Kits";
                    break;
                case 3:
                    char = obj_event_option_4.charId;
                    charname = ds_list_find_value(ds_list_find_value(global.eventCharList, char), 1);
                    chargender = ds_list_find_value(ds_list_find_value(global.eventCharList, char), 0);
                    charposessive = getGenderedPosessive(chargender, false);
                    charpronoun = getGenderedPronoun(chargender, false);
                    text = "Somewhere beneath the woman's hood, a chuckle escapes.#" + 
                    '#"' + "Don't say I didn't warn ye'." + '"#' +
                    "#Before anyone knows what's happened, " + charname + " is on the ground with a bullet through " +
                    charposessive + 
                    "#skull, a stream of blood pouring from the hole in " + 
                    charposessive + 
                    " forehead. The woman doesn't appear to be" + 
                    "#holding a gun. " + charname + "'s lifeless eyes stare up at the sky, " +
                    charposessive + " limbs perfectly spread-eagled, as " +
                    "#though " + charpronoun + " were hit with a spell and not a bullet.#" +
                    '#"' + "Though I s'pose y'won't be sayin' much of anything now. Pleasure doin' business with ye'." + '"#' +
                    "#With a flash of lightning, the woman and her wagon are gone.#" +
                    "#" + charname + " is dead."; 
                    break;
            }
            return text;
            break;
        case 3:
            //Box of Heroin
            text = "";
            char1 = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 1);
            char2 = ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 1);
            char1gender = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 0);
            char1pronoun = getGenderedPronoun(char1gender, false);
            char1posessive = getGenderedPosessive(char1gender, false);
            switch(global.event_selected_option){
                case 0:
                    text += '"' + "Ugh. I couldn’t get all of it. Am I going to be okay?" + '"' + 
                    '##"' + "I guess we’ll find out," + '" ' + char2 + " says." + 
                    "##+1 to " + char1 + "'s Movement Speed."; 
                    break;
                case 1:
                    text += '"' + "Hmm. Tastes kind of… salty. Is it supposed to be salty?" + '" ' + char1 + " asks. " + char1pronoun + " licks" + 
                    "#" + char1posessive + " lips." + 
                    '##"' + "I wouldn't know anything about it," + '" ' + char2 + " says." + 
                    "##-30 to " + char1 + "'s Health." + 
                    "#+2 to " + char1 + "'s Movement Speed.";                
                    break;
            }
            return text;
            break;
        case 4:
            //Lightning
            text = "";
            char = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 1);
            gender = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 0);
            charpronoun = getGenderedPronoun(gender, true);
            charself = getGenderedSelf(gender, false);
            charposessive = getGenderedPosessive(gender, false); 
            switch(global.event_selected_option){
                case 0:
                    if (global.event_subevent == 0) {
                        text += '"' + "We're so lucky!" + '" ' + char + ' says. "' + charpronoun + " throws " + charself + " into a bush of flowers that pillows" +
                        "#" + charposessive + 'fall. "' + "Who’d have thought getting struck by lightning would be such a good thing!" + '"' +
                        "##+1 to Crew's Attack Speed";
                    }
                    else {
                        text += '"' + "We’re so lucky! " + char + " says. " + '"' + "Who’d have thought getting struck by lightning would be such a" + 
                        "#good thing!" + '" ' + charpronoun + " throw " + charself + " into a pile of tall grass, then immediately shrieks." +
                        '##"' + "What the hell is that!" + '"' +
                        "##" + char + " climbs out of the grass pile on all fours, an empty syringe sticking out of " + charposessive + 
                        "#backside." + 
                        '##"Sonofabitch," ' + char + ' says.  "' + "There's the other shoe." + '"' +
                        "##-1 to " + char + "'s Attack Speed.";
                    }
                    break;
                case 1:
                    text += '"' + "Let’s just be thankful we’re not burned to a crisp," + '" ' + char + " says. " + charpronoun + 
                    " hefts " + charposessive + " weapon" +
                    "#back onto " + charposessive + " shoulder, and the crew keeps moving.";
                    break;
            }
            return text;
            break;
        case 5:
            text = "";
            char1 = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 1);
            char2 = ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 1);
            char1gender = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 0);
            char2gender = ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 0);
            char1pronoun = getGenderedPronoun(char1gender, false);
            char2pronoun = getGenderedPronoun(char2gender, false);
            char1posessive = getGenderedPosessive(char1gender, false);
            char1objective = getGenderedObjective(char1gender);
            switch(global.event_selected_option){
                case 0:
                    text += "Inside, " + char1 + " sits down on one of the benches and stares into the empty ring. " + char1pronoun + 
                    "#imagines " + char1pronoun + " can see elephants jumping. Since the Borgis attacked there hasn't been much time" +
                    "#for daydreaming and " + char1pronoun + " relishes  the opportunity, but " + char1posessive + "conscience quickly wears on" + 
                    "#" + char1objective + ": there's still a long way to go before sundown. So " + char1pronoun + " stands and brushes off the thin" +
                    "#layer of dust already accumulated on " + char1posessive + " pants and gets to searching." +
                    "##In a hidden trapdoor in the middle of the ring, " + char1 + " finds a cache of first aid supplies. " + char1pronoun +
                    "#then returns to the group." +
                    "##+5 Med Kits";
                    break;
                case 1:
                    text += '"' + "There's bound to be food stashed around here somewhere." + '"' +
                    "##With the desperation of a starving person, " + char2 + " moves methodically through each and every" + 
                    "#booth, opening cupboards, flipping tables, even going so far as to dismantle a food truck " + char2pronoun + 
                    "#thinks might be hiding Twinkies. At the end of it, " + char2 + " has amassed a sizeable stack of " + 
                    "#non-perishables which " + char2pronoun + " carries back to the group." +
                    "##+12 Food";
                    break;
            }    
            return text;
            break;
        case 6:
            //Forgotten Weapon
            text = "";
            char1 = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 1);
            char2 = ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 1);
            char1gender = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 0);
            char2gender = ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 0);
            char1pronoun = getGenderedPronoun(char1gender, false);
            char2pronoun = getGenderedPronoun(char2gender, false);
            char1posessive = getGenderedPosessive(char1gender, false);   
            char2posessive = getGenderedPosessive(char2gender, false); 
            switch(global.event_selected_option){   
                case 0:
                    text += '"' + "I'll be back as soon as I can." + '"' + 
                    "##" + char1 + " throws " + char1pronoun + " backpack over " + char1posessive + " shoulder and runs back the way the" +
                    "#group came. Here's hoping " + char1pronoun + " makes it back alive." +
                    "##If they don’t, that’s one less mouth to feed." + 
                    "##" + char1 + " dies.";
                    break;
                case 1:
                    text += '"' + "I've had enough of your bullshit, " + char1 + ". You're always pulling shit like this, but not" +
                    '#anymore."' + 
                    "##" + char2 + " loads " + char2posessive + " weapon and fires one off into " + char1 + "'s head. " + char1posessive +
                    "#body and what's left of " + char1posessive + " skull fall to the ground, the bloody mess pooling around" +
                    "#the party's feet." +
                    '##"' + "Good riddance," + '"' + char1pronoun + " says." +
                    "##" + char1 + " dies.";
                    break;
                case 2:
                    text += '"' + "You know, I've had just about enough of you," + '" ' + char2 + " says. " + '"' + "You'd better pray to" +
                    "#God we don't need you tonight, " + char1 + ", or else find a weapon quick, 'cause if the " +
                    "#Borgis don't kill you... I just might." + '"' + 
                    "##" + char1 + "'s Attack decreases to 0."; 
                    break;
            }
            return text;
            break;
        case 8:
            //Library
            text = "";
            char3id = 0;
            if(ds_list_size(global.eventCharList) > 2) {
                char3id = 2;
            }
            char1 = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 1);
            char2 = ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 1);
            char3 = ds_list_find_value(ds_list_find_value(global.eventCharList, char3id), 1);
            char1gender = ds_list_find_value(ds_list_find_value(global.eventCharList, 0), 0);
            char2gender = ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 0);
            char3gender = ds_list_find_value(ds_list_find_value(global.eventCharList, char3id), 0);
            char1pronoun = getGenderedPronoun(char1gender, false);
            char1pronouncaps = getGenderedPronoun(char1gender, true);
            char2pronoun = getGenderedPronoun(char2gender, true);
            char3pronoun = getGenderedPronoun(char3gender, false); 
            char1posessive = getGenderedPosessive(char1gender, false);   
            char2posessive = getGenderedPosessive(char2gender, false); 
            char3posessive = getGenderedPosessive(char3gender, false); 
            char1self = getGenderedSelf(char1gender, false);
            switch(global.event_selected_option){ 
                case 0:
                    text += char1pronouncaps + " takes the book to the front desk and reaches for " + char1posessive + " library card" +
                    "#inside, and stops." +
                    '##"Force of habit," ' + char1pronoun + " laughs to " + char1self + "." +
                    "##+5 to Crew's Damage";
                    break;
                case 1:
                    text += char2pronoun + " opens it up to the chapter on bandages and gets to reading." + 
                    "##+10 to Crew's Health";
                    break;
                case 2:
                    text += '"' + "Woah. I didn't know libraries kept this sort of thing," + '" ' + char3pronoun + " says." +
                    "##+5 to Party's Defense";
                    break;
            }
            return text;
        
}
