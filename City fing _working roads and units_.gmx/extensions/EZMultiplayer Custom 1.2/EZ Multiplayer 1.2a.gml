#define net_init
//net_init(dll,studio);

var filename,dll_type;
filename = argument0;
if (argument1 == true)
{
    dll_type = dll_cdecl;
}
if (argument1 == false)
{
    dll_type = dll_stdcall;
}

if(is_real(argument0) == true)
{
    filename = "dll_39dll.dll";
}
if (file_exists(filename) == true)
{
    external_call(external_define(filename, "dllInit", dll_type, ty_real, 0));
    //Buffer
    global._BufA = external_define(filename, "writebyte", dll_type, ty_real, 2, ty_real,ty_real);
    global._BufB = external_define(filename, "writestring", dll_type, ty_real, 2, ty_string, ty_real);
    global._BufC = external_define(filename, "writeshort", dll_type, ty_real, 2, ty_real, ty_real);
    global._BufD = external_define(filename, "writeint", dll_type, ty_real, 2, ty_real, ty_real);
    global._BufE = external_define(filename, "writefloat", dll_type, ty_real, 2, ty_real, ty_real);
    global._BufF = external_define(filename, "writedouble", dll_type, ty_real, 2, ty_real, ty_real);
    global._BufG = external_define(filename, "readbyte", dll_type, ty_real, 1, ty_real);
    global._BufH = external_define(filename, "readstring", dll_type, ty_string, 1, ty_real);
    global._BufI = external_define(filename, "readshort", dll_type, ty_real, 1, ty_real);
    global._BufJ = external_define(filename, "readint", dll_type, ty_real, 1, ty_real);
    global._BufK = external_define(filename, "readfloat", dll_type, ty_real, 1, ty_real);
    global._BufL = external_define(filename, "readdouble", dll_type, ty_real, 1, ty_real);
    global._BufM = external_define(filename, "clearbuffer", dll_type, ty_real, 1, ty_real);
    global._BufN = external_define(filename, "setpos", dll_type, ty_real, 2, ty_real, ty_real);
    global._BufO = external_define(filename, "getpos", dll_type, ty_real, 2, ty_real, ty_real);
    global._BufQ = external_define(filename, "buffsize", dll_type, ty_real, 1, ty_real);
    global._BufR = external_define(filename, "writechars", dll_type, ty_real, 2, ty_string, ty_real);
    global._BufS = external_define(filename, "readchars", dll_type, ty_string, 2, ty_real, ty_real);
    global._BufU = external_define(filename, "createbuffer", dll_type, ty_real, 0);
    global._BufX = external_define(filename, "freebuffer", dll_type, ty_real, 1, ty_real);
    global._BufY = external_define(filename, "writeushort", dll_type, ty_real, 2, ty_real, ty_real);
    global._BufZ = external_define(filename, "writeuint", dll_type, ty_real, 2, ty_real, ty_real);
    global._BufAA = external_define(filename, "readushort", dll_type, ty_real, 1, ty_real);
    global._BufAB = external_define(filename, "readuint", dll_type, ty_real, 1, ty_real);
    global._BufAC = external_define(filename, "copybuffer", dll_type, ty_real, 2, ty_real, ty_real);
    global._BufAD = external_define(filename, "copybuffer2", dll_type, ty_real,4 , ty_real, ty_real, ty_real, ty_real);
    global._BufAE = external_define(filename, "bytesleft", dll_type, ty_real, 1, ty_real);
    global._BufAF = external_define(filename, "bufferexists", dll_type, ty_real, 1, ty_real);
    global._BufAG = external_define(filename, "readsep", dll_type, ty_string, 2, ty_string, ty_real);
    
    //Sockets
    global._SokA = external_define(filename, "tcpconnect", dll_type, ty_real, 3, ty_string, ty_real, ty_real);
    global._SokB = external_define(filename, "tcplisten", dll_type, ty_real, 3, ty_real, ty_real, ty_real);
    global._SokC = external_define(filename, "tcpaccept", dll_type, ty_real, 2, ty_real, ty_real);
    global._SokD = external_define(filename, "sendmessage", dll_type, ty_real, 4, ty_real, ty_string, ty_real, ty_real);
    global._SokE = external_define(filename, "receivemessage", dll_type, ty_real, 3, ty_real, ty_real, ty_real);
    global._SokF = external_define(filename, "setsync", dll_type, ty_real, 2, ty_real, ty_real);
    global._SokG = external_define(filename, "setformat", dll_type, ty_real, 3, ty_real, ty_real, ty_string);
    global._SokH = external_define(filename, "udpconnect", dll_type, ty_real, 2, ty_real, ty_real);
    global._SokI = external_define(filename, "hostip", dll_type, ty_string, 1, ty_string);
    global._SokJ = external_define(filename, "lastinIP", dll_type, ty_string, 0);
    global._SokK = external_define(filename, "closesock", dll_type, ty_real, 1, ty_real);
    global._SokL = external_define(filename, "tcpip", dll_type, ty_string, 1, ty_real);
    global._SokM = external_define(filename, "socklasterror", dll_type, ty_real, 0);
    global._SokN = external_define(filename, "myhost", dll_type, ty_string, 0);
    global._SokO = external_define(filename, "compareip", dll_type, ty_real, 2, ty_string, ty_string);
    global._SokP = external_define(filename, "sockexit", dll_type, ty_real, 0);
    global._SokQ = external_define(filename, "sockstart", dll_type, ty_real, 0);
    global._SokR = external_define(filename, "getmacaddress", dll_type, ty_string, 0);
    global._SokS = external_define(filename, "peekmessage", dll_type, ty_real, 3, ty_real, ty_real, ty_real);
    global._SokT = external_define(filename, "setnagle", dll_type, ty_real, 2, ty_real, ty_real);
    global._SokU = external_define(filename, "tcpconnected", dll_type, ty_real, 1, ty_real);
    global._SokX = external_define(filename, "getsocketid", dll_type, ty_real, 1, ty_real);
    global._SokY = external_define(filename, "lastinPort", dll_type, ty_real, 0);
}
else
{
    show_message("DLL not found at: "+string(filename));
    game_end();
}

#define net_server_start
//net_server_start(port,players);

var net_port,net_max_players;
net_port = argument0;
net_max_players = argument1;
//net_server_tcp = tcplisten(net_port,net_max_players,1);
global.net_server_tcp = external_call(global._SokB,net_port,net_max_players,1);

global.net_pack_type = 0;
global.net_pack_id = 0;
global.net_pack_num = 0;

global.net_list_players = ds_list_create();
global.net_list_pack = ds_list_create();

#define net_server_update
//net_server_update();

//This checks every frame for a user that wants to connect
var net_stcp;
net_stcp = external_call(global._SokC,global.net_server_tcp,true); //Stores the user's TCP id in "stcp"
if (net_stcp) //Basicaly means, if a connection is made... 
{
var obj;
external_call(global._SokF,net_stcp,0);
ds_list_add(global.net_list_players,net_stcp);
external_call(global._SokF,net_stcp,1); //Time to sync it again
}


//check for messages
var i;
i = -1;
repeat(ds_list_size(global.net_list_players))
{
    var net_pack_size;
    i += 1;
    while(1)
    {    
        net_pack_size = external_call(global._SokE,ds_list_find_value(global.net_list_players,i),0,0); //msize will be filled with a value if there is a message available from the client.
        
        if (net_pack_size == 0) //Uh-oh, the user randomly disconnected, or their client closed out unexpectedly...
        {
            ds_list_delete(global.net_list_players,i);
        }
        
        if (net_pack_size <= 0) 
        {
            break; //We got a packet
        }
                
        global.net_pack_id = external_call(global._BufG,0);
        global.net_pack_num = external_call(global._BufG,0);
        global.net_pack_type = external_call(global._BufG,0);
        
        ds_list_clear(global.net_list_pack);
        
        repeat(global.net_pack_num)
        {
            if (global.net_pack_type == 1)
            {
                ds_list_add(global.net_list_pack,external_call(global._BufJ,0));
            }
            if (global.net_pack_type == 2)
            {
                ds_list_add(global.net_list_pack,external_call(global._BufH,0));
            }
        }
        
        //send them back
        var ii,iii;
        ii = -1;
        repeat(ds_list_size(global.net_list_players))
        {
            ii += 1;
            external_call(global._BufM,0); //Important to clear the buffer
            external_call(global._BufA,global.net_pack_id,0); //The id of the packet we are sending
            external_call(global._BufA,global.net_pack_num,0);
            external_call(global._BufA,global.net_pack_type,0);
            iii = -1;
            repeat(ds_list_size(global.net_list_pack))
            {
                iii += 1;
                if (global.net_pack_type == 1)
                {
                    external_call(global._BufD,ds_list_find_value(global.net_list_pack,iii),0);
                }
                if (global.net_pack_type == 2)
                {
                    external_call(global._BufB,ds_list_find_value(global.net_list_pack,iii),0);
                }
            }
            
            external_call(global._SokD,ds_list_find_value(global.net_list_players,ii),0,0,0);
        }
    }
}

#define net_client_connect
//net_client_connect(ip,port);

var net_client_ip,net_client_port;
net_client_ip = argument0;
net_client_port = argument1;
global.net_client_tcp = external_call(global._SokA,net_client_ip,net_client_port,1);

global.net_list_recieve = 0;
global.net_list_packs = ds_list_create();
global.net_list_recent = ds_list_create();

if (global.net_client_tcp > 0)
{
    return(true);
}
else
{
    return(false);
}

#define net_client_update
//net_client_update();

ds_list_clear(global.net_list_recent);

while(1)
{
    var net_client_pack_size,net_client_pack_id,net_client_num,net_client_type,net_rec;
    net_client_pack_size = external_call(global._SokE,global.net_client_tcp,0,0);
    
    if (net_client_pack_size == 0)
    {
        //To do when the SERVER randomly disconnects
        return false
    }
    
    if (net_client_pack_size <= 0)
    {
        return true
        break;
    }
    
    net_client_pack_id = external_call(global._BufG,0);
    net_client_num = external_call(global._BufG,0);
    net_client_type = external_call(global._BufG,0);
    
    ds_list_add(global.net_list_recent,net_client_pack_id);
    
    if (ds_list_find_index(global.net_list_packs,net_client_pack_id) == -1)
    {
        ds_list_add(global.net_list_packs,net_client_pack_id);
    }
    
    global.net_list_recieve[net_client_pack_id] = ds_list_create();
    ds_list_clear(global.net_list_recieve[net_client_pack_id]);
    
    repeat(net_client_num)
    {
        if (net_client_type == 1)
        {
            net_rec = external_call(global._BufJ,0);
            ds_list_add(global.net_list_recieve[net_client_pack_id],net_rec);
        }
        if (net_client_type == 2)
        {
            net_rec = external_call(global._BufH,0);
            ds_list_add(global.net_list_recieve[net_client_pack_id],net_rec);
        }
    }
}

#define net_client_send
//net_client_send(id,num,type,var1,var2...);

var net_pack_id,net_client_num,net_client_type,i;
net_pack_id = argument[0];
net_client_num = argument[1];
net_client_type = argument[2];

external_call(global._BufM,0);
external_call(global._BufA,net_pack_id,0);
external_call(global._BufA,net_client_num,0);
external_call(global._BufA,net_client_type,0);

i = 2;
repeat(net_client_num)
{
    i += 1;
    if (net_client_type == 1)
    {
        external_call(global._BufD,argument[i],0);
    }
    if (net_client_type == 2)
    {
        external_call(global._BufB,argument[i],0);
    }
}

external_call(global._SokD,global.net_client_tcp,0,0,0);

#define net_client_get
//net_client_get(id,index);

var net_client_id,net_client_index;
net_client_id = argument0;
net_client_index = argument1-1;

if (ds_list_find_index(global.net_list_packs,net_client_id) != -1)
{
    return(ds_list_find_value(global.net_list_recieve[net_client_id],net_client_index));
}
else
{
    return(false);
}

#define net_client_check
//net_client_check(id);

if (ds_list_find_index(global.net_list_recent,argument0) == -1)
{
    return(false);
}
else
{
    return(true);
}

