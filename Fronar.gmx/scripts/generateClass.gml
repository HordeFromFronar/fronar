//generateClass

//class randomization values:
//0: hunter
//1: grenadier
//2: soldier
x = irandom(2);

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

    case 0:
        // hunter
        ds_list_add(char, 7); // max health
        ds_list_add(char, 7); // current health
        ds_list_add(char, 0);  // portrait id
        ds_list_add(char, 3);  // rande
        ds_list_add(char, 5);  // speed
        ds_list_add(char, 1);  // damage
        ds_list_add(char, 2);  // fire rate
        ds_list_add(char, 0);  // armour
        ds_list_add(char, 10); // evasion
        ds_list_add(char, 10); // critical
        break;
    case 1:
        // grenadier
        ds_list_add(char, 10); // max health
        ds_list_add(char, 10); // current health
        ds_list_add(char, 0);  // portrait id
        ds_list_add(char, 3);  // rande
        ds_list_add(char, 5);  // speed
        ds_list_add(char, 1);  // damage
        ds_list_add(char, 2);  // fire rate
        ds_list_add(char, 0);  // armour
        ds_list_add(char, 10); // evasion
        ds_list_add(char, 10); // critical
        break;      
    default:
        // soldier
        ds_list_add(char, 10); // max health
        ds_list_add(char, 10); // current health
        ds_list_add(char, 0);  // portrait id
        ds_list_add(char, 3);  // rande
        ds_list_add(char, 5);  // speed
        ds_list_add(char, 1);  // damage
        ds_list_add(char, 2);  // fire rate
        ds_list_add(char, 0);  // armour
        ds_list_add(char, 10); // evasion
        ds_list_add(char, 10); // critical
        break;              
}
