


/*
buffer_seek(con_client.client_buffer,buffer_seek_start,0);
buffer_write(con_client.client_buffer,buffer_u8,network.move);
buffer_write(con_client.client_buffer,buffer_u16,mouse_x);
buffer_write(con_client.client_buffer,buffer_u16,mouse_y);
network_send_packet(con_client.client,con_client.client_buffer,buffer_tell(con_client.client_buffer));