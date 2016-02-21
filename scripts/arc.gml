///arc(start[0], peak[1], floor[2], position[3], bias[4])
if(argument[3]<=.5)
    return(lerp(argument[0],argument[1],bias(argument[4],argument[3]*2)));
else
{
    var b=1-argument[4];
    var p=2*argument[3]-1
    return(lerp(argument[1],argument[2],bias(b,p)));
}
