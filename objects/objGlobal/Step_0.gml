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