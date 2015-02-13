//getEventTextPart2(char1=0, char2=0, char3=0)

char1 = 0;
char2 = 0;
char3 = 0;
char1gender = "";
char2gender = "";
char3gender = "";
char1name = "";
char2name = "";
char3name = "";
if(argument_count > 1){
    char1 =  argument[1];
    char1gender = ds_list_find_value(ds_list_find_value(global.charList, char1), 0);
    char1name = ds_list_find_value(ds_list_find_value(global.charList, char1), 1);
}
if(argument_count > 2){
    char2 =  argument[2];
    char2gender = ds_list_find_value(ds_list_find_value(global.charList, char2), 0);
    char2name = ds_list_find_value(ds_list_find_value(global.charList, char2), 1); 
}
if(argument_count > 3){
    char3 =  argument[3];
    char3gender = ds_list_find_value(ds_list_find_value(global.charList, char3), 0);
    char3name = ds_list_find_value(ds_list_find_value(global.charList, char3), 1); 
}

switch(global.event_id) {
        case 0:
            //Abandoned Shack
            
            text = char1name +
            " wraps duct tape around the knife and the end of " + 
            getGenderedPosessive(char1gender, false) + 
            " gun. #" +
            getGenderedPronoun(char1gender, true) + 
            " takes a few practice swings. " +
            '##"Let' + "'s see those Borgis come at me now!" + '"' +
            "##+3 to " + char1name + "'s Melee Damage."             
            return text;
            break;
}
