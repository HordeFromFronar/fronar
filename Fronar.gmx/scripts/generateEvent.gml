//generateEvent()
//Returns an integer corresponding to an event id based on current state

var numEvents = 1;
var event = irandom(numEvents-1);
show_debug_message(checkEvent(event));

while(!checkEvent(event)){
    event = irandom(numEvents-1)
}

return event;