//getStep(step, Xcoordinate?, overworld_step = global.overworld_step)
//show_debug_message("getstep called with global "  + string(global.overworld_step));
step = argument[0];
//true if we want x, false if y
Xcoord = argument[1];
//need this passed in for when we draw old step sets
//show_debug_message("getstep now has global "  + string(global.overworld_step));
//show_debug_message(argument_count);
if(argument_count > 2){
    over_step = argument[2];
}
else {
    over_step = global.overworld_step;
}
//show_debug_message(string(argument_count)+"overworld step is " + string(overworld_step));
if(Xcoord) {    
    switch(over_step){
        case 1:
            if (step % 2 == 0){
                return 64;
            }else {
                return 80;
            }
            break;
        case 2:
            switch(step){
                case 0:
                    return 112;
                case 1:
                    return 128;
                case 2:
                    return 160;
                case 3:
                    return 176;
                case 4:
                    return 200;
                case 5:
                    return 200;
            }   
            break;
        case 3:
            switch(step){
                case 0:
                    return 256;
                case 1:
                    return 288;
                case 2:
                    return 288;
                case 3:
                    return 312;
                case 4:
                    return 312;
                case 5:
                    return 336;
            }   
            break;    
        case 5:
            switch(step){
                case 0:
                    return 370;
                case 1:
                    return 370;
                case 2:
                    return 408;
                case 3:
                    return 408;
                case 4:
                    return 432;
                case 5:
                    return 424;
            }   
            break;             
    }
} else {
    switch(over_step){
        case 1:
            return 288 + step * 16;
            break;    
        case 2:    
            switch(step){
                case 0:
                    return 416;
                case 1:
                    return 432;
                case 2:
                    return 432;
                case 3:
                    return 448;
                case 4:
                    return 440;
                case 5:
                    return 456;
            }   
            break;   
        case 3:    
            switch(step){
                case 0:
                    return 440;
                case 1:
                    return 448;
                case 2:
                    return 424;
                case 3:
                    return 438;
                case 4:
                    return 408;
                case 5:
                    return 400;
            }   
            break; 
        case 5:    
            switch(step){
                case 0:
                    return 352;
                case 1:
                    return 340;
                case 2:
                    return 336;
                case 3:
                    return 312;
                case 4:
                    return 312;
                case 5:
                    return 288;
            }   
            break;                       
    }
}

