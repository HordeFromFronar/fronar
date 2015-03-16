//getEventText()

switch(global.event_id) {
        case 0:
            //Abandoned Shack
            text =
            "Somewhere along the road the party finds an abandoned shack with the windows blown out. " +
            "#After poking around, " + 
            ds_list_find_value(ds_list_find_value(global.eventCharList, 1), 1) +
            " finds some duct tape and a kitchen knife that can be made into a bayonet," +
            "#and some fruits and vegetables growing in what's left of the garden out back." +
            "##+3 Food";
            return text;
            break;
        case 1: 
            //Spike Pit
            //Need to -1 because irandom has inclusive range between 0 and n
            text =
            "After travelling through the trees for some time, the party finds a clearing with a spike pit in the" +
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
            "#An old crone comes toddling up the road. Wearing what looks and smells like old kitchen rags and a " + 
            "#deep hood over her eyes, she pulls a wagon of assorted goods behind her, as if she'd stepped straight " +
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
            '##"' + "That's definitely heroin," + '"' + " " + char2 + "says. " + '"' + "Don't ask me how I know." + '"' + 
            '##"' + "I couldn't help it, it got in my mouth! What am I supposed to do?" + '"' + 
            '##"' + "Just ride it out, " + char1 + ".  Ride it out." + '"' +
            "##+5 to " + char1 + "’s Movement Speed";
            return text;
            break;
}
