
if (keyboard_check(ord("W"))){
	buffer_seek(con_client.client_buffer,buffer_seek_start,0);
	buffer_write(con_client.client_buffer,buffer_u8,network.up);
	buffer_write(con_client.client_buffer,buffer_u16,x);
	buffer_write(con_client.client_buffer,buffer_u16,(y-4));
	network_send_packet(con_client.client,con_client.client_buffer,buffer_tell(con_client.client_buffer));
}


left = keyboard_check(ord("A"))
right = keyboard_check(ord("D"))
up = keyboard_check(ord("W"))
down = keyboard_check(ord("S"))





/*
left = keyboard_check(vk_left)
right = keyboard_check(vk_right)
jump = keyboard_check(vk_space)

x_velocity = 4*(right-left);
if (place_meeting(x+x_velocity,y,obj_wall)){
	x_velocity = 0;
}
x+=x_velocity;
 
if (!place_meeting(x,y+1,obj_wall)) {
		y_velocity +=grvty;
}
if(place_meeting(x,y+y_velocity,obj_wall)){
		y_velocity = 0;
}
if (place_meeting(x,y+1,obj_wall) && jump){
		y_velocity = - 12;
}
y+=y_velocity;
