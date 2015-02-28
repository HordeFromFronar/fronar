///glr_shadowarea_create(x, y, w, h, illumination)

var l = ds_list_create();

var px = argument0,
py = argument1,
w = argument2,
h = argument3,
col = argument4;
l[| 0] = px;
l[| 1] = py;
l[| 2] = w;
l[| 3] = h;
l[| 4] = col;

var mesh = d3d_model_create();

d3d_model_primitive_begin(mesh, pr_trianglestrip);
d3d_model_vertex(mesh, 0, 0, 0);
d3d_model_vertex(mesh, w, 0, 0);
d3d_model_vertex(mesh, 0, h, 0);
d3d_model_vertex(mesh, w, h, 0);
d3d_model_primitive_end(mesh);

l[| 5] = mesh;

ds_list_add(global.GLR_SHADOWAREA_LIST, l);

return l;