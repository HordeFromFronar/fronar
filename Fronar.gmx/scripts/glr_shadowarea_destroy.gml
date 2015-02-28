///glr_shadowarea_destroy(id)
 
var l = argument0;
mesh = l[| 5];
d3d_model_destroy(mesh); 
ds_list_delete(global.GLR_SHADOWAREA_LIST, ds_list_find_index(global.GLR_SHADOWAREA_LIST, l));
ds_list_destroy(l);