//healevent(eventcharid, amount)
//heal people but don't heal them past max hp.
char = argument[0];
healamt = argument[1];

var i;
for(i = 0; i < healamt; ++i){
    if(ds_list_find_value(ds_list_find_value(global.eventCharList, char), 6) != ds_list_find_value(ds_list_find_value(global.eventCharList, char), 7)) {
        ds_list_replace(ds_list_find_value(global.eventCharList, char), 7 ,ds_list_find_value(ds_list_find_value(global.eventCharList, char), 7) + 1);      
    }
}
