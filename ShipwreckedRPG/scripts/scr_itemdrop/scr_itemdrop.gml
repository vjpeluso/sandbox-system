for (var i = 0; i < global.maxItems; i += 1)
{
    if (global.inventory[i] == argument0) //if slot "i" contains argument0
    {
        global.inventory[i] = -1;
        return true;
    }
}
return false;