enum network
{
	player_connect,
	player_joined,
	player_disconnect,
	move,		//=0
	updatePosition,		//=1...
	chat
}

port = 64198;
max_clients = 12;

network_create_server(network_socket_tcp,port,max_clients);

server_buffer = buffer_create(1024,buffer_fixed,1);
socket_list = ds_list_create();
socket_to_instanceid = ds_map_create();
global.playercount = 0;
playerSpawn_x=500;
playerSpawn_y=300;
