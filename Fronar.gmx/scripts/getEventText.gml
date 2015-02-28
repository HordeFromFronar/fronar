//getEventText(char1=0, char2=0, char3=0)
char1 = 0;
char2 = 0;
char3 = 0;
if(argument_count > 1){
    char1 =  argument[1];
}
if(argument_count > 2){
    char2 =  argument[2];
}
if(argument_count > 3){
    char3 =  argument[3];
}

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
}