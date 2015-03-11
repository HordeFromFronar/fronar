//generateEvent()
//Returns an integer corresponding to an event id based on current state

global.event_subevent = 0;
var numEvents = 1;
var event = irandom(numEvents-1);
show_debug_message(checkEvent(event));

while(!checkEvent(event)){
    event = irandom(numEvents-1)
}

return event;
