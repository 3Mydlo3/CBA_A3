#include "script_component.hpp"
/* ----------------------------------------------------------------------------
Function: CBA_fnc_findMax

Description:
    Find largest numeric value with index in an array.

Parameters:
    _array: Array with Numbers

Example:
    (begin example)
    _result = [0, 4, 3, -2] call CBA_fnc_findMax
    (end)

Returns:
    _max: largest value in array
    _index: index of the largest value in array
    nil on failure

Author:
    joko // Jonas, commy2, Dorbedo

---------------------------------------------------------------------------- */
SCRIPT(findMax);

[_this] params [["_array", [], [[]]]];

if !(_array isEqualTypeAll 0) exitWith {nil};

private _reverse = + _array;
reverse _reverse;

private _max = selectMax _reverse;
[_max, count _array - (_reverse find _max) - 1]
