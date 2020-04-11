enum network
{
	player_connect,
	player_joined,
	player_disconnect,
	move,		//=0
	updatePosition,
	chat
}

client = network_create_socket(network_socket_tcp);
connected = network_connect(client,"127.0.0.1",64198);

show_message(connected)

client_buffer = buffer_create(1024,buffer_fixed,1);

socket_to_instanceid = ds_map_create();

//25.129.234.91
//127.0.0.1
//25.89.194.16