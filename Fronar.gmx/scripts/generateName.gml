//generateName(char, gender)

char = argument[0];
gender = argument[1];

firstNames = ds_list_create();
switch(gender){
    case "m":
        ds_list_add(firstNames,
        "Glenn",
        "Doug",
        "Zak",
        "Schyler",
        "Sean",
        "Derek",
        "Fabian",
        "Jake",
        "David",
        "Nicholas",
        "William",
        "Xuan");
        break;
    case "f":
        ds_list_add(firstNames,
        "Jessica",
        "Katherine",
        "Jaclynn",
        "Kelsey",
        "Kimberly",
        "Kristina",
        "Valerie");
        break;
}

lastNames = ds_list_create();
ds_list_add(lastNames,
"Meyer",
"Bennet",
"Palm",
"Jasniewski",
"Turchansky",
"Yuen",
"Gouglas",
"Kwan",
"Eisman",
"Wong",
"Brand",
"Armfield",
"Wicentowich",
"Prud'homme",
"Kramer");
ds_list_add(lastNames,
"Drozdiak",
"Shostak",
"Sawyer",
"Chen");

ds_list_add(char,ds_list_find_value(firstNames,irandom(ds_list_size(firstNames) - 1)));
ds_list_add(char,ds_list_find_value(lastNames,irandom(ds_list_size(lastNames) - 1)));
