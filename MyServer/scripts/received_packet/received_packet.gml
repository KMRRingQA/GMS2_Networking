buffer = argument0;
socket = argument1;
msgid = buffer_read(buffer,buffer_u8);


switch(msgid)
{
	case network.move: 
		var move_x = buffer_read(buffer,buffer_u16);
		var move_y = buffer_read(buffer,buffer_u16);
		
		var _player = ds_map_find_value(socket_to_instanceid,socket);
		_player.x = move_x
		_player.y = move_y
		
		var i = 0;
		repeat(ds_list_size(socket_list)){
			
			var _sock = ds_list_find_value(socket_list,i)
			
			buffer_seek(server_buffer,buffer_seek_start,0);
			buffer_write(server_buffer,buffer_u8,network.move);
			buffer_write(server_buffer,buffer_u8,socket);
			buffer_write(server_buffer,buffer_u16,move_x);
			buffer_write(server_buffer,buffer_u16,move_y);
		
			network_send_packet(_sock,server_buffer,buffer_tell(server_buffer));
			i++;
		}
	break;
	
	case network.updatePosition:
		var move_x = buffer_read(buffer,buffer_u16);
		var move_y = buffer_read(buffer,buffer_u16);
		
		var _player = ds_map_find_value(socket_to_instanceid,socket);
		_player.x = move_x
		_player.y = move_y
		
		var i = 0;
		repeat(ds_list_size(socket_list))
		{
			var _sock = ds_list_find_value(socket_list,i);
			if _sock != socket
			{
				var _sock = ds_list_find_value(socket_list,i)
			
				buffer_seek(server_buffer,buffer_seek_start,0);
				buffer_write(server_buffer,buffer_u8,network.updatePosition);
				buffer_write(server_buffer,buffer_u8,socket);
				buffer_write(server_buffer,buffer_u16,move_x);
				buffer_write(server_buffer,buffer_u16,move_y);
		
				network_send_packet(_sock,server_buffer,buffer_tell(server_buffer));	
			}
			i++;
		}
	break;
}