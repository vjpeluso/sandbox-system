for (var i = 0; i < global.maxItems; i += 1)
{
    if (global.inventory[i] == argument0) //if slot "i" contains argument 0
    {
        return true;
    }
}
return false;