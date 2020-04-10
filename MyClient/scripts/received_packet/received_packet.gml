buffer = argument0;
msgid = buffer_read(buffer,buffer_u8);


switch(msgid)
{
	case 1:	//Hello World
		var message = buffer_read(buffer,buffer_string)
		show_message(message);
		break;
}