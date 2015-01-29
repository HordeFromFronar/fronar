//unHightlightRange()


character = global.selected;
if(character) {// && object_is_ancestor(character, object_index)  ){
    //Get the location of the object 
    myX = character.x;
    myY = character.y;
    z = 1000000; //Depth - This is the default for some reason
    //Get the range of the object
    range = character.range;
    //Get the tile we currently live on
    //tile = tile_layer_find(depth, x, y);
    //Do a search
    ymodifier = 1;
    yrange = 0;
    for(i = myX - (32*range); i <= myX + (32*range); i += 32){
//        for (j = 0; j < yrange; ++j){
            //Set the background tile to red or something
//            for(k = myY - (32*yrange); k < myY + (32*yrange); k += 32){
                tile = tile_layer_find(z, i, myY);
                 
                //show_debug_message(string(tile) + " is the tile index with bg "+ string(tile_get_background(tile)));
               // tile_set_background(tile, 0);
               if(tile_exists(tile)){
                    tile_set_alpha(tile, 1);
               }
//           }
//        }
        yrange += ymodifier;
        if(yrange == range){
            ymodifier = -ymodifier;
        }
         
    }     
}