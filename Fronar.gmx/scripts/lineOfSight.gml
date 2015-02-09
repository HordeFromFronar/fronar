///lineOfSight(x1, y1, x2, y2)

x1 = argument[0];
y1 = argument[1];
x2 = argument[2];
y2 = argument[3];

if (collision_line( x1, y1, x2, y2, obj_wall_inner, false, true) != noone) {
    return false;
}

if (collision_line( x1, y1, x2, y2, obj_wall_outer, false, true) != noone) {
    return false;
}

return true;