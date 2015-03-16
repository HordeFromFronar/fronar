//generateEvent()
//Returns an integer corresponding to an event id based on current state
global.event_subevent = 0;
var numEvents = 4;
//If the event has been predetermined by a previous event, make sure we do that one
if(global.next_event != -1) {
    return global.next_event;
}

var event = irandom(numEvents-1);

while(!checkEvent(event)){
    event = irandom(numEvents-1)
}

//When we've found a valid event, add it to the list so we don't do it again
ds_list_add(global.completedEventList, event);
return event;
