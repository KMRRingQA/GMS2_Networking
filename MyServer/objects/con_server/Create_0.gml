port = 64198;
max_clients = 12;

network_create_server(network_socket_tcp,port,max_clients);

server_buffer = buffer_create(1024,buffer_fixed,1);
socket_list = ds_list_create();
