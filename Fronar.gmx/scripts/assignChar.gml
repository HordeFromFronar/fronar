//asignChar()
var i, j, charCount, char;
charCount = ds_list_size(global.charList);
j = 0;

for(i = 0; i<ds_list_size(global.charList); i++) { 
    if (ds_list_find_value(ds_list_find_value(global.charList, 0),3) != 0) {
        if (instance_find(obj_char, j)) {
            char = instance_find(obj_char, j);
            char.charID = i;
            j++;
        }
    }
}
    
for(j=j; j<instance_number(obj_char); j++) { 
    char = instance_find(obj_char, j);
    with(char) {
        instance_destroy();
    }
}
