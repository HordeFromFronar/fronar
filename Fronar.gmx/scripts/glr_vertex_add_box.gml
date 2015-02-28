///glr_vertex_add_box(width, height)
var w, h;
w = argument0;
h = argument1;
glr_mesh_vertex_add(mesh_id, 0, 0);
glr_mesh_vertex_add(mesh_id, w, 0);
glr_mesh_vertex_add(mesh_id, w, h);
glr_mesh_vertex_add(mesh_id, 0, h);
glr_mesh_vertex_add(mesh_id, 0, 0);