//ModifyMedicine(value)
ds_list_replace(global.resourceList, 1, ds_list_find_value(global.resourceList, 1) + argument[0]);           