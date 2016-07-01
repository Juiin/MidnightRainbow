///scr_key_already_in_use(key);
var keycode = argument0;


for(var i=0;i<array_length_1d(key);i++)
{
    if(keycode == key[i]) return true;    
}
return false;
