/****************************************

If you have time for me, review Glare Engine on the marketplace, thanks!

=========================================
> DOCUMENTATION
=========================================
    http://tizsoft.altervista.org/glare/
    
=========================================
> CONTACTS
=========================================
Feature suggestions or bugs reports at 
    
    revolabStaff@gmail.com

=========================================
> CHANGELOG
=========================================
 
v1.6.1
- added Shadow Areas
- new function: glr_shadowarea_create
- new function: glr_shadowarea_set_illumination
- new function: glr_shadowarea_destroy, glr_shadowarea_destroy_all
- improved Demo
- new roof example


v1.5.0
- added glr_mesh_set_directional_shadow_length(mesh id, length)
- workaround to avoid matrix memory leak
- fixed simple lights


v1.4.0

- Added a function to create a mesh from a tile layer glr_mesh_create_from_tiles(static, layer)
- Tile shadows also supports directional lights and ambient occlusion
- Improved light sprites quality
- Added New HD point light mask

v1.3.5

- Replaced d3d_transform functions with new matrix_functions
- Fixed light scaling issues
- Fixed glr_lightsimple_set_scaling
- Fixed flickering shadows using shadowsprites

v1.3.1

- Improved project comments and function descriptions
- changed ds_* functions to ds accessors
- added missing glr_light_set_sprite(light, sprite, subimg)

v1.3.0

- Improved performances of glr_get_illumination(x, y)
- Added glr_get_illumination_update()
- Tidied up Project, splitting demo resources from essentials resources
- Scripts now show up all arguments in code completion
- Added more comments
- Finished online documentation


v1.2.9

- Added glr_mesh_vertex_add_json(mesh id, closed, json string)
- Mesh editor online ->  https://tizzio.github.io/meshgen
- improved mobile example [added buttons to switch options]



v1.2.8

- fixed invisible shadows when scaling is < 0 
- fixed surface issue


v1.2.5

- fixed "Surface does not exists" when switch fullscreen
- removed texture_set_interpolation(true) from glr_render


v1.2.2

- Bugfixes


v1.2.0

- ADDED glr_light_refresh(light)  to refresh static lightmaps
- ADDED static spriteshadows
- ADDED glr_shadowsprite_set_static(id, static)
- ADDED extra argument (static) to glr_shadowsprite_create(...)
- ADDED extra argument (static) to glr_shadowsprite_create_from_instance(...)
- reorganized glr_light_create()
- improved glr_render() performances

=========================================
> Thanks for your support!
=========================================
If you want, send me info/screenshot of your project so
i can it in glare projects list!


****************************************/
