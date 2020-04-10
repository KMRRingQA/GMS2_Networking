buffer = argument0;
socket = argument1;
msgid = buffer_read(buffer,buffer_u8);


switch(msgid)
{
	case network.move: 
		var move_x = buffer_read(buffer,buffer_u16);
		var move_y = buffer_read(buffer,buffer_u16);
		
		buffer_seek(server_buffer,buffer_seek_start,0);
		buffer_write(server_buffer,buffer_u8,network.move);
		
		buffer_write(server_buffer,buffer_u16,move_x);
		buffer_write(server_buffer,buffer_u16,move_y);
		
		network_send_packet(socket,server_buffer,buffer_tell(server_buffer));
	break;
}