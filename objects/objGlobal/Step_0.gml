if (InputMobileTap())
{
    lastThing = "Single tap";
    InputMobileVibrate(10);
}
if (InputMobileDoubleTap())
{
    lastThing = "Double tap";
    InputMobileVibrate(30);
}
if (InputMobileLongTap())
{
    lastThing = "Long tap";
    InputMobileVibrate(50);
}

if (InputMouseReleased())
{
    if (InputMobileGestureFlickDown())
    {
        lastThing = "Flick down";
    }
    if (InputMobileGestureFlickUp())
    {
        lastThing = "Flick up";
    }
    if (InputMobileGestureFlickLeft())
    {
        lastThing = "Flick left";
    }
    if (InputMobileGestureFlickRight())
    {
        lastThing = "Flick right";
    }
}