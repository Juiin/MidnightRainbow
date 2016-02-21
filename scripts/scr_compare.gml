///scr_compare(string_01,string_02,string_03,string_04,string_05)

var str;

str[0] = argument0;
str[1] = argument1;
str[2] = argument2;
str[3] = argument3;
str[4] = argument4;

for(var i=0;i<4;i++)
{
    for(var j=i+1;j<5;j++)
    {
        if((str[i] == str[j]) || str[i] == "" || str[j] == "") return false;
    }
}

return true;
