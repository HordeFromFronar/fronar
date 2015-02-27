///getPriority(obj)
obj = argument[0];
with (obj) {
    ignoreSight = 0;
    
    target_char = instance_nearest(x, y, obj_char);
    target_crate = instance_nearest(x, y, obj_crate_fronar);
    target_door = instance_nearest(x, y, obj_door);
    target_turret = instance_nearest(x, y, obj_turret);
    target_barricade = instance_nearest(x, y, obj_barricade);
    
    if (distance_to_object(target_door) <= distance_to_object(target_char) && 
        distance_to_object(target_door) <= distance_to_object(target_crate) && 
        distance_to_object(target_door) <= distance_to_object(target_turret) &&
        distance_to_object(target_door) <= distance_to_object(target_barricade) &&
        !target_door.open) {
        target = target_door;
        ignoreSight = 1;
    } else if (distance_to_object(target_crate) <= distance_to_object(target_char) && 
        distance_to_object(target_crate) <= distance_to_object(target_turret) &&
        distance_to_object(target_crate) <= distance_to_object(target_barricade)) {
        target = target_crate;
    } else if (distance_to_object(target_char) <= distance_to_object(target_turret) &&
        distance_to_object(target_char) <= distance_to_object(target_barricade)) {
        target = target_char;
    } else if (distance_to_object(target_turret) <= distance_to_object(target_barricade)){
        target = target_turret;
    } else {
        target = target_barricade;
    }
}
