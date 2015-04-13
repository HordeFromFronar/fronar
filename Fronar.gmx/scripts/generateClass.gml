//generateClass
char = argument[0];

//class randomization values:
//0: hunter
//1: grenadier
//2: soldier
x = irandom(2);

//we need the gender for portraits
gender = ds_list_find_value(char, 0)

switch(x) {
    // Add order:
    //6: max health
    //7: current health
    //8: portrait id
    //9: range
    //10: speed
    //11: damage
    //12: fire rate
    //13: armour
    //14: evasion
    //15: critical
    //16: class
    
    case 0:
        // hunter
        ds_list_add(char, 70); // max health
        ds_list_add(char, 70); // current health
        
        //portrait id (index)
        if (gender == "F") {
            switch (irandom(1)) {
                case 0: ds_list_add(char, 4); break;
                default: ds_list_add(char, 5); break;
            }
        } else {
            switch (irandom(1)) {
                case 0: ds_list_add(char, 6); break;
                default: ds_list_add(char, 7); break;
            }
        }
        
        ds_list_add(char, 9);  // range
        ds_list_add(char, 5);  // speed
        ds_list_add(char, 25);  // damage
        ds_list_add(char, .5);  // fire rate
        ds_list_add(char, 0);  // armour
        ds_list_add(char, 10); // evasion
        ds_list_add(char, 10); // critical
        ds_list_add(char, "Hunter"); // class
        break;
    case 1:
        // grenadier
        ds_list_add(char, 80); // max health
        ds_list_add(char, 80); // current health
        
        //portrait id (index) --- TODO currently all v1 female grenadiers because that's all we have
        if (gender == "F") {
            switch (irandom(1)) {
                case 0: ds_list_add(char, 12); break;
                default: ds_list_add(char, 13); break;
            }
        } else {
            switch (irandom(1)) {
                case 0: ds_list_add(char, 14); break;
                default: ds_list_add(char, 15); break;
            }
        }
        
        ds_list_add(char, 3);  // range
        ds_list_add(char, 2.5);  // speed
        ds_list_add(char, 20);  // damage
        ds_list_add(char, 0.6);  // fire rate
        ds_list_add(char, 0);  // armour
        ds_list_add(char, 10); // evasion
        ds_list_add(char, 10); // critical
        ds_list_add(char, "Grenadier") // class
        break;      
    default:
        // soldier
        ds_list_add(char, 100); // max health
        ds_list_add(char, 100); // current health
        
        //portrait id (index)
        if (gender == "F") {
            switch (irandom(1)) {
                case 0: ds_list_add(char, 0); break;
                default: ds_list_add(char, 1); break;
            }
        } else {
            switch (irandom(1)) {
                case 0: ds_list_add(char, 2); break;
                default: ds_list_add(char, 3); break;
            }
        }
        
        ds_list_add(char, 3);  // range
        ds_list_add(char, 5);  // speed
        ds_list_add(char, 8);  // damage
        ds_list_add(char, 5);  // fire rate
        ds_list_add(char, 0);  // armour
        ds_list_add(char, 10); // evasion
        ds_list_add(char, 10); // critical
        ds_list_add(char, "Soldier"); // class
        break;              
}
