buffer = argument0;
msgid = buffer_read(buffer,buffer_u8);


switch(msgid)
{
	case network.move:	
		var move_x = buffer_read(buffer,buffer_u16);
		var move_y = buffer_read(buffer,buffer_u16);
		
		obj_player.x = move_x
		obj_player.y = move_y
		
		break;
}