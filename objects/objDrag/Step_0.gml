var _px = InputMobileTouchRoomX();
var _py = InputMobileTouchRoomY();

if (InputMobileDragStart() && point_in_rectangle(_px, _py, bbox_left, bbox_top, bbox_right, bbox_bottom))
{
    localDragging = true;
}

if (InputMobileDragging() && localDragging)
{
    x = _px;
    y = _py;
}

if (InputMobileFlick() && localDragging)
{
    spd = InputMobileFlickSpeed() / 10;
    dir = InputMobileFlickAngle();
}

if (spd > 0)
{
    x += lengthdir_x(spd, dir);
    y += lengthdir_y(spd, dir);
    spd--;
}

if (InputMobileDragEnd())
{
    localDragging = false;
}