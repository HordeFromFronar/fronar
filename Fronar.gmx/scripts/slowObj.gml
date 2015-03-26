///slowObj(obj, speed, time)
var obj = argument[0];
var slow_speed = argument[1];
var slow_time = argument[2];

obj.moveSpeed = slow_speed
obj.slowed = true;
obj.slowTime = slow_time;