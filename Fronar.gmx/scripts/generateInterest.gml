///generateInterest(char)

char = argument[0];

interests = ds_list_create();
ds_list_add(interests,
    "Fishing",
    "Stargazing",
    "Herbal remedies",
    "Busking",
    "Cross stitch",
    "Knitting",
    "Water colours",
    "Paper mache",
//    "Retro-style video games",
    "Poetry",
    "Automotive repair",
    "Building computers",
    "Stencil art",
    "Calligraphy",
    "Opera");

interests2 = ds_list_create();
ds_list_add(interests2,
//    "Long distance running",
    "Power yoga",
    "Crossfit training",
//    "Learning new languages",
    "Blackmail",
    "Hunting",
//    "White water rafting",
    "Web design",
    "Carpentry",
    "Candle making",
    "Model cars",
    "Basket weaving",
    "Philosphastering",
    "Kegels",
//    "R-rated horror films");
    );
    
interests3 = ds_list_create();
ds_list_add(interests3,
    "Cat videos",
    "Calculus");

x = irandom(2);
switch(x) {
    case 0:
        ds_list_add(char,ds_list_find_value(interests,irandom(ds_list_size(interests) - 1)));
        break;
    case 1:
        ds_list_add(char,ds_list_find_value(interests2,irandom(ds_list_size(interests2) - 1)));
        break;
    default:
        ds_list_add(char,ds_list_find_value(interests3,irandom(ds_list_size(interests3) - 1)));
        break;                 
}
