//generateChar(#)

//char list format:
//0: gender
//1: first name
//2: last name
//3: health
//4: range
//5: speed

//Initialize variables
count = argument[0];
gender = "";
firstName = "";
lastName = "";
cHealth = 10;
cRange = 3;
cSpeed = 5;

while (count) {
    char = ds_list_create();
    //Randomly set gender
    rand = irandom(1);
    switch(rand) {
        case 0:
            gender = "m";
            break;
        case 1:
            gender = "f";
            break;
    }
    ds_list_add(char, gender);
    
    //Get a random name
    generateName(char, gender);
    
    ds_list_add(char, cHealth);
    ds_list_add(char, cRange);
    ds_list_add(char, cSpeed);
    
    ds_list_add(global.charList, char);
    
    count--;
}
