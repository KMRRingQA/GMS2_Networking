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
		break;
	
	case network.player_joined:
		var _socket = buffer_read(buffer,buffer_u8);
		var _x = buffer_read(buffer,buffer_u16);
		var _y = buffer_read(buffer,buffer_u16);
		
		var _slave = instance_create_depth(_x,_y,depth,obj_slave);
		_slave.socket = _socket;
		break;
	case network.move:	
		var move_x = buffer_read(buffer,buffer_u16);
		var move_y = buffer_read(buffer,buffer_u16);
		
		obj_player.x = move_x
		obj_player.y = move_y
		
		break;
}