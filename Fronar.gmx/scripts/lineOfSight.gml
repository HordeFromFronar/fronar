///lineOfSight(x1, y1, x2, y2, window usage)

x1 = argument[0];
y1 = argument[1];
x2 = argument[2];
y2 = argument[3];
window = argument[4];

if (collision_line( x1, y1, x2, y2, obj_wall_inner, false, true) != noone) {
    return false;
}

if (collision_line( x1, y1, x2, y2, obj_wall_outer, false, true) != noone) {
    return false;
}

if (collision_line( x1, y1, x2, y2, obj_door, false, true) != noone) {
    return false;
}

if (!window) {
    if (collision_line( x1, y1, x2, y2, obj_wall_window, false, true) != noone) {
        return false;
    }
}

return true;

