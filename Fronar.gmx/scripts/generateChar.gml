//generateChar(id)

//Initialize variables
char = argument[0];
gender = "";
firstName = "";
lastName = "";

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
char.gender = gender;

//Get a random name
generateName(char, gender);
