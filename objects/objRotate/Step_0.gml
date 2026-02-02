if (InputMobileRotating())
{
    currentRot = InputMobileRotateAbsoluteAngle();
    image_angle = lastRot + currentRot;
}

if (InputMobileRotateEnd())
{
    image_angle = lastRot + currentRot;
    lastRot = image_angle;
    currentRot = 0;
}

if (InputMobileZooming())
{
    currentScale = InputMobileZoomScale() - 1;
    image_xscale = lastScale + currentScale;
    image_yscale = image_xscale;
}

if (InputMobileZoomEnd())
{
    image_xscale = lastScale + currentScale;
    image_yscale = image_xscale;
    lastScale = image_xscale;
    currentScale = 0;
}