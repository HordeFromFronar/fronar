///generateNames()

firstNamesMale = ds_list_create();
firstNamesFemale = ds_list_create();
ds_list_add(firstNamesMale,
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

ds_list_add(firstNamesFemale,
        "Jessica",
        "Katherine",
        "Jaclynn",
        "Kelsey",
        "Kimberly",
        "Kristina",
        "Valerie");

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

names[] = 0;

for (i = 0; i < 7; ++i) {
    idx = irandom(ds_list_size(firstNamesFemale));
    names[i, 0] = ds_list_find_value(firstNamesFemale, idx);
    ds_list_delete(firstNamesFemale, idx);
}

for (i = 7; i < 14; ++i) {
    idx = irandom(ds_list_size(firstNamesMale));
    names[i, 0] = ds_list_find_value(firstNamesMale, idx);
    ds_list_delete(firstNamesMale, idx);
}

for (i = 0; i < 14; ++i) {
    idx = irandom(ds_list_size(lastNames));
    names[i, 1] = ds_list_find_value(lastNames, idx);
    ds_list_delete(lastNames, idx);
}

return names;
