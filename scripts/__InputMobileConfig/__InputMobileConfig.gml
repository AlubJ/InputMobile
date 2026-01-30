// Feather disable all

// The maximum number of possible multi-touch devices that InputMobile will detect for
// and can be increased or decreased to fit specific purposes. Default 8.
#macro INPUT_MOBILE_MAX_MULTITOUCH_DEVICES 8

// The maximum amount of time in milliseconds that a touch can be held down for it to
// register as a tap and not a tap-and-hold. Default 200.
#macro INPUT_MOBILE_MAX_TAP_TIME 200

// The maximum amount of distance in pixels that a tap can be registered in, if the tap
// exceeds this window then the tap will not be registered. Default 20.
#macro INPUT_MOBILE_MAX_TAP_DISTANCE 20

// The maximum time in milliseconds that a tap or double tap can be registered in.
// If a double tap is not registered in this time window a single tap will be detected
// instead. Default 200.
#macro INPUT_MOBILE_MAX_DOUBLE_TAP_TIME 200

// The maximum distance in pixels from the firt tap that a double tap will be registered.
// This will tune the double tap to a general area. Default 200.
#macro INPUT_MOBILE_MAX_DOUBLE_TAP_DISTANCE 200

// The minimum amount of distance in pixels for a flick gesture to be detected. This
// should be more than `INPUT_MOBILE_MAX_TAP_DISTANCE`. Default 25.
#macro INPUT_MOBILE_MIN_FLICK_DISTANCE 25

// The maximum amount of time in milliseconds for a flick gesture to be registered.
// Default 200.
#macro INPUT_MOBILE_MAX_FLICK_TIME 200