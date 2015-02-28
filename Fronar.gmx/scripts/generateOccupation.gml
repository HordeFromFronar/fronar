///generateOccupation(char)

char = argument[0];

occupations = ds_list_create();
ds_list_add(occupations,
    "Mortician",
    "Game designer",
    "Farm hand",
    "Neurosurgeon",
    "Programmer",
    "Architect",
    "Hotel receptionist",
    "Unemployed",
    "Taxidermist",
    "Book editor",
    "Carpenter",
    "Clothing designer",
    "Gun range manager",
    "Florist",
    "Cosmetician");

occupations2 = ds_list_create();
ds_list_add(occupations2,
    "Forklift operator",
    "Courtesy clerk",
    "Full-time student",
    "Electrician",
    "College professor",
    "Day care worker",
    "Food truck driver",
    "Crime scene investigator",
    "C-list actor",
    "Comedian",
    "Carpet cleaner",
    "Pokémon master",
    "Logger",
    "Professional blogger",
    "Water sanitation specialist");
    
occupations3 = ds_list_create();
ds_list_add(occupations3,
    "Prostitute",
    "Baker",
    "Insurance adjuster",
    "Psychologist",
    "Home care worker",
    "Pediatric nurse",
    "Hitman",
    "Human resource manager",
    "Startup CEO",
    "Valet",
    "Wedding photographer",
    "Plumber",
    "Drummer",
    "Lounge singer",
    "Auctioneer");

occupations4 = ds_list_create();
ds_list_add(occupations4,    
    "Air conditioning repair person",
    "Photojournalist",
    "Porn star",
    "Feng shui consultant",
    "Rapper",
    "Drifter",
    "Con artist",
    "Beat cop");
    
x = irandom(2);
switch(x) {
    case 0:
        ds_list_add(char,ds_list_find_value(occupations,irandom(ds_list_size(occupations) - 1)));
        break;
    case 1:
        ds_list_add(char,ds_list_find_value(occupations2,irandom(ds_list_size(occupations2) - 1)));
        break;        
    case 2:
        ds_list_add(char,ds_list_find_value(occupations3,irandom(ds_list_size(occupations3) - 1)));
        break;
    default:
        ds_list_add(char,ds_list_find_value(occupations4,irandom(ds_list_size(occupations4) - 1)));
        break;                 
}
