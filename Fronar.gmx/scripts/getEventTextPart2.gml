//getEventTextPart2(char1=0, char2=0, char3=0)

/*char1 = 0;
char2 = 0;
char3 = 0;
char1gender = "";
char2gender = "";
char3gender = "";
char1name = "";
char2name = "";
char3name = "";
if(argument_count > 0){
    char1 =  argument[0];
    char1gender = ds_list_find_value(ds_list_find_value(global.charList, char1), 0);
    char1name = ds_list_find_value(ds_list_find_value(global.charList, char1), 1);
}
if(argument_count > 1){
    char2 =  argument[1];
    char2gender = ds_list_find_value(ds_list_find_value(global.charList, char2), 0);
    char2name = ds_list_find_value(ds_list_find_value(global.charList, char2), 1); 
}
if(argument_count > 2){
    char3 =  argument[2];
    char3gender = ds_list_find_value(ds_list_find_value(global.charList, char3), 0);
    char3name = ds_list_find_value(ds_list_find_value(global.charList, char3), 1); 
}*/

switch(global.event_id) {
        case 0:
            //Abandoned Shack, Requires choice of 1 character
            char = global.event_selected_option;
            chargender = ds_list_find_value(ds_list_find_value(global.charList, char), 0);
            charname = ds_list_find_value(ds_list_find_value(global.charList, char), 1);
            
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
}
