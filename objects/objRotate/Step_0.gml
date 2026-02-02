if (InputMobileRotating())
{
    image_angle = InputMobileRotateAbsoluteAngle();
}

if (InputMobileZooming())
{
    image_xscale = InputMobileZoomScale();
    image_yscale = InputMobileZoomScale();
}