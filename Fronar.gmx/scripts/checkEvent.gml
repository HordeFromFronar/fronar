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
}
