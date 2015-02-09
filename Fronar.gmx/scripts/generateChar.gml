///generateChar(#)

//char list format:
//0: gender
//1: first name
//2: last name
//3: max health
//4: range
//5: speed
//6: portrait id
//7: age
//8: current health
//9: damage
//10: fire rate
//11: armour
//12: evasion
//13: critical

//Initialize variables
count = argument[0];
gender = "";
firstName = "";
lastName = "";
cHealth = 10;
cRange = 3;
cSpeed = 5;
portraitId = 0;
age = 18;
cDamage = 1;
cRate = 2;
cArmour = 1;
cEvade = 0;
cCrit = 0;

while (count) {
    char = ds_list_create();
    //Randomly set gender & portrait
    rand = irandom(1);
    switch(rand) {
        case 0:
            gender = "m";
            portraitId = irandom(1);
            break;
        case 1:
            gender = "f";
            portraitId = irandom(1) + 2;
            break;
    }
    ds_list_add(char, gender);
    
    //Get a random name
    generateName(char, gender);
    
    ds_list_add(char, cHealth);
    ds_list_add(char, cRange);
    ds_list_add(char, cSpeed);
    ds_list_add(char, portraitId);
    
    //Randomly set age
    ds_list_add(char, irandom(47) + 18);
    
    ds_list_add(char, cHealth);
    ds_list_add(char, cDamage);
    ds_list_add(char, cRate);
    ds_list_add(char, cArmour);
    ds_list_add(char, cEvade);
    ds_list_add(char, cCrit);
    
    ds_list_add(global.charList, char);
    
    count--;
}
