//getEventText()

switch(global.event_id) {
        case 0:
            //Abandoned Shack
            text =
            "Somewhere along the road the party finds an abandoned shack with the windows blown out. " +
            "#After poking around, " + 
            ds_list_find_value(ds_list_find_value(global.charList, 1), 1) +
            " finds some duct tape and a kitchen knife that can be made into a bayonet," +
            "#and some fruits and vegetables growing in what's left of the garden out back." +
            "##+3 Food";
            return text;
            break;
        case 1: 
            //Need to -1 because irandom has inclusive range between 0 and n
            text =
            "After travelling through the trees for some time, the party finds a clearing with a spike pit in the" +
            "#middle, several metres in diameter and about two metres deep. Suspended from ropes on all" + 
            "#sides, an enormous sack marked 'RATIONS' hangs in the middle and dangling over the " +
            "#spikes below." + 
            "#Alright, what asshole set this up? " + 
            ds_list_find_value(ds_list_find_value(global.charList, 1), 1) +
            " says." +
            "#There's no guarantee that whatever's in the bag is actually edible, and retrieving it would be" +
            "#dangerous.";
            return text; 
            break;
}
