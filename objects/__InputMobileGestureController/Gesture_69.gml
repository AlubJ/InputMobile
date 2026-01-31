// Feather disable all

var _system = __InputMobileSystem();

var _deviceID = event_data[? "touch"];
var _device = _system.__touchDevices[_deviceID];

var _deltaX = event_data[? "rawdiffX"];
var _deltaY = event_data[? "rawdiffY"];

_device.__flick = true;
_device.__flickCardinalDirection = __InputMobileGetGeneralCardinalDirection(_deltaX, _deltaY);
_device.__flickSpeed = point_distance(0, 0, _deltaX, _deltaY);
_device.__flickAngle = point_direction(0, 0, _deltaX, _deltaY);