void init_sprites(void){
    sprite_data = (unsigned char *) sprite_list[level];

    spr_index = 0;
    while (spr_index < max_loaded_sprites){
        if (sprite_data[spr_index<<3] == TURN_OFF) break;

        tmp3 = sprite_data[(spr_index<<3)]; low_byte(activesprites_y[spr_index]) = tmp3; 
        tmp3 = sprite_data[(spr_index<<3)+1]; high_byte(activesprites_y[spr_index]) = tmp3; 
        tmp3 = sprite_data[(spr_index<<3)+2]; low_byte(activesprites_x[spr_index]) = tmp3;
        tmp3 = sprite_data[(spr_index<<3)+3]; high_byte(activesprites_x[spr_index]) = tmp3;
        tmp3 = sprite_data[(spr_index<<3)+4]; activesprites_type[spr_index] = tmp3;
        // unused byte 5
        // unused byte 6
        // unused byte 7
        gray_line();
        ++spr_index;
    }
}


char get_position(void){
    tmp5 -= scroll_x;
    tmp6 -= scroll_y;
    temp_x = tmp5 & 0xff;
    temp_y = tmp6 & 0xff;
    if (high_byte(tmp5) || high_byte(tmp6)) return 0;
    return 1;
}

void check_spr_objects(void){
    for (index = 0; index < max_loaded_sprites; ++index){
        activesprites_active[index] = 0;
        //tmp5 = (low_byte(activesprites_screen[index]) << 8) + activesprites_x[index];
        tmp5 = activesprites_x[index];
        //tmp6 = (high_byte(activesprites_y[index]) << 8) + low_byte(activesprites_y[index]);
        tmp6 = activesprites_y[index];

        activesprites_active[index] = get_position();
        low_byte(activesprites_x[index]) = temp_x;
        low_byte(activesprites_y[index]) = temp_y;
    }
}







char sprite_height_lookup(unsigned char type){
    if (type & 0x30) return 0xff;
}


void sprite_collide(){

    Generic.x = high_byte(player.x);
    Generic.y = high_byte(player.y);
    Generic.width = CUBE_WIDTH;
    Generic.height = CUBE_HEIGHT;

    Generic2.width = 0x0f;
    for (index = 0; index < max_loaded_sprites; ++index){
        tmp4 = activesprites_type[index];
        Generic2.height = sprite_height_lookup(tmp4);

        Generic2.x = activesprites_x[index];
        Generic2.y = low_byte(activesprites_y[index]);

    }
}