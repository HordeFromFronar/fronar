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
//16: class

//Initialize general variables
count = argument[0];
gender = "";
firstName = "";
lastName = "";
age = 18;
occupation = "";
interest = "";

// Randomly generate the names once so we can eliminate duplicates
// This is a bit hacky and generates 14 names. kind of makes sense
// since we only have 7 female names, though.
// First 7 are female, remaining 7 are male. This will be a big
// enough pool of names for the purposes of this demo.
// Alternatively, we can split the scripts into generateFemaleNames
// and generateMale names so we're not limited to 7 each, but I'm
// not going to bother with this for now. - Jess
names = generateNames()
name_idx = 0;

while (count) {
    char = ds_list_create();
    //Randomly set gender
    rand = irandom(1);
    switch(rand) {
        case 0: gender = "M"; break;
        default: gender = "F"; break;
    }
    ds_list_add(char, gender);
    
    //Get a random name
    if gender == "F" {
        ds_list_add(char, names[name_idx, 0]);
        ds_list_add(char, names[name_idx, 1]);
    } else {
        ds_list_add(char, names[7+name_idx, 0]);
        ds_list_add(char, names[7+name_idx, 1]);
    }
    ++name_idx;

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
