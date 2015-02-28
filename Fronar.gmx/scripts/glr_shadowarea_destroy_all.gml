///glr_shadowarea_destroy_all()
 
var s = ds_list_size(global.GLR_SHADOWAREA_LIST);
 
var l;
for(var i = 0; i < s; i++){
    l = global.GLR_SHADOWAREA_LIST[| i];
    mesh = l[| 5];
    d3d_model_destroy(mesh);
    ds_list_destroy(l);
}
ds_list_clear(global.GLR_SHADOWAREA_LIST);