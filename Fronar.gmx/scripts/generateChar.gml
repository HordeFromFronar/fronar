///generateChar(#)

//char list format:
//0: gender
//1: first name
//2: last name
//3: age
//4: occupation
//5: interest
//Below are class specific
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

//Initialize general variables
count = argument[0];
gender = "";
firstName = "";
lastName = "";
age = 18;
occupation = "";
interest = "";

while (count) {
    char = ds_list_create();
    //Randomly set gender
    rand = irandom(1);
    switch(rand) {
        case 0: gender = "m"; break;
        default: gender = "f"; break;
    }
    ds_list_add(char, gender);
    
    //Get a random name
    generateName(char, gender);
    
    //Randomly set age
    ds_list_add(char, irandom(47) + 18);
    
    //Get a random occupation
    generateOccupation(char);
    
    //Get a random interest
    generateInterest(char);
   
    //Get class attributes
    generateClass(char);
    
    ds_list_add(global.charList, char);
    
    count--;
}

global.eventCharList = global.charList;