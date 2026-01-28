// Feather disable all

function __InputMobileGetGeneralCardinalDirection(_dx, _dy)
{
    if (abs(_dx) > abs(_dy))
    {
        if (_dx > 0)
        {
            return 0;
        }
        else
        {
            return 180;
        }
    }
    else
    {
        if (_dy > 0)
        {
            return 90;
        }
        else
        {
            return 270;
        }
    }
}