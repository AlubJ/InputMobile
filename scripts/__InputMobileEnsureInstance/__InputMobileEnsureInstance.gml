// Feather disable

function __InputMobileEnsureInstance()
{
    if (!instance_exists(__InputMobileGestureController))
	{
		instance_activate_object(__InputMobileGestureController);		
		if (instance_exists(__InputMobileGestureController))
		{
			InputPlugInWarning("`__InputMobileGestureController` was deactivated. Please ensure that this object instance is never deactivated.");
		}
		else
		{
			instance_create_depth(0, 0, 0, __InputMobileGestureController);
		}
	}
}