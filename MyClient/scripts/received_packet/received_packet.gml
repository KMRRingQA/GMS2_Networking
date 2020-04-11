buffer = argument0;
msgid = buffer_read(buffer,buffer_u8);


switch(msgid)
{
	
	case network.player_connect:
		var _socket = buffer_read(buffer,buffer_u8);
		var _x = buffer_read(buffer,buffer_u16);
		var _y = buffer_read(buffer,buffer_u16);
		
		var _player = instance_create_depth(_x,_y,depth,obj_player);
		_player.socket = _socket;
		
		ds_map_add(socket_to_instanceid,_socket,_player);
		break;
	
	case network.player_joined:
		var _socket = buffer_read(buffer,buffer_u8);
		var _x = buffer_read(buffer,buffer_u16);
		var _y = buffer_read(buffer,buffer_u16);
		
		var _slave = instance_create_depth(_x,_y,depth,obj_slave);
		_slave.socket = _socket;
		
		ds_map_add(socket_to_instanceid,_socket,_slave);
		break;
		
	case network.player_disconnect:
	
		var _socket = buffer_read(buffer,buffer_u8);
		var _player = ds_map_find_value(socket_to_instanceid,_socket);
		
		with(_player)
		{
			instance_destroy();
		}
		
		ds_map_delete(socket_to_instanceid,_socket);
		
		break;
		
	case network.move:	
		var _sock = buffer_read(buffer,buffer_u8);
		var move_x = buffer_read(buffer,buffer_u16);
		var move_y = buffer_read(buffer,buffer_u16);
		
		_player = ds_map_find_value(socket_to_instanceid,_sock);
		
		_player.x = move_x
		_player.y = move_y
		
		break;
		
	case network.updatePosition:
		var _sock = buffer_read(buffer,buffer_u8);
		var move_x = buffer_read(buffer,buffer_u16);
		var move_y = buffer_read(buffer,buffer_u16);
		
		_player = ds_map_find_value(socket_to_instanceid,_sock);
		
		_player.x = move_x
		_player.y = move_y
		
		break;
}