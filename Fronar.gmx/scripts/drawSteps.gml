///drawSteps(angle, overworld_step)
for(i = 0; i < 6; ++i) {
    stepobj = instance_create(getStep(i, true, argument[1]), getStep(i, false, argument[1]), obj_footstep);
    with(stepobj){
        image_angle = argument[0];
    } 
}