//checkEvent(eventId)
eventId = argument[0];
//If we've already done the candidate event, don't do it again
if(ds_list_find_index(global.completedEventList, eventId) != -1){
    return false;
}
//Do any sort of checks on the game state to find a legal event
switch(eventId){
    case 0:
        //Abandoned Shack
        return true;
        break;
    case 1: 
        //Spike Pit
        return true;
        break;
    case 2: 
        //Wagon Lady
        return true;
        break;
    case 3:
        //Box of heroin
        //requires >= 2 chars
        return ds_list_size(global.eventCharList) >= 2;
        break;
    case 4:
        //Lightning
        return true;
        break;
    case 5:
        //Circus
        //requires >= 2 chars
        return ds_list_size(global.eventCharList) >= 2;
        break;
    case 6: 
        //Forgotten Weapon
        //requires >= 2 chars and early game
        return ds_list_size(global.eventCharList) >= 2 && global.overworld_step < 3;
        break;
    case 7:
        //Found Weapon
        //only happens if set to next event, not randomly generatable
        return false;
        break;
}
