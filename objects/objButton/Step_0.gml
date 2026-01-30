if (InputMousePressed())
{
    if (point_in_rectangle(InputMobileTouchRoomX(), InputMobileTouchRoomY(), x, y, x + (image_xscale * 64), y + (image_yscale * 64)))
    {
        global.touchStartTime = current_time;
        InputMobileVibratePredefined(vibrateKind);
    }
}

if (InputMouseReleased())
{
    global.touchEndTime = current_time;
}