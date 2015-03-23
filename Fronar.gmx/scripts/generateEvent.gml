//generateEvent()
//Returns an integer corresponding to an event id based on current state
global.event_subevent = 0;
var numEvents = 9;
//If the event has been predetermined by a previous event, make sure we do that one
//But only if that person is still alive
if(global.next_event != -1 && 
   global.event_char1 != -1 && 
   ds_list_find_value(ds_list_find_value(global.eventCharList, global.event_char1), 7) > 0) {
    return global.next_event;
} else {
    global.next_event = -1;
    global.event_char1 = -1;
}

var event = irandom(numEvents-1);

while(!checkEvent(event)){
    event = irandom(numEvents-1)
}

//When we've found a valid event, add it to the list so we don't do it again
ds_list_add(global.completedEventList, event);
return event;