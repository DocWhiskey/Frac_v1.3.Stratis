//@file Version: 1.2
//@file Name: gearLevel3.sqf
private ["_player"];
_player = _this;


_player setVariable ["cmoney", (_player getVariable "cmoney") + 300, true];

{_player removeWeapon _x} forEach weapons _player;
{_player removeMagazine _x} forEach magazines _player;

removeBackpack _player;
removeGoggles _player;

_player addBackpack "B_Carryall_oli"; //BackPack

_player linkItem "NVGoggles";
_player linkItem "ItemGPS";
_player addWeapon "Binocular";
_player addMagazines ["HandGrenade", 2];
_player addItem "FirstAidKit";
_player addGoggles "G_Sport_Red";

_player addMagazines ["11Rnd_45ACP_Mag", 4];
_player addWeapon "hgun_Pistol_heavy_01_F";

_player addMagazines ["30Rnd_45ACP_Mag_SMG_01", 3];
_player addWeapon "SMG_01_F";
_player addPrimaryWeaponItem "optic_Holosight_smg";

_player selectWeapon "SMG_01_F";

switch (true) do
{
	case (["_medic_", typeOf _player] call fn_findString != -1):
	{
		_player addItem "MediKit";
		_player removeItem "";
	};
	case (["_engineer_", typeOf _player] call fn_findString != -1):
	{
		_player addItem "ToolKit";
		_player removeItem "";
	};
	case (["_sniper_", typeOf _player] call fn_findString != -1):
	{
		_player addWeapon "Rangefinder"; 
		_player removeItem "";
	};
		case (["_diver_", typeOf _player] call fn_findString != -1):
	{
		_player addVest "V_RebreatherIA";
		_player removeItem "";

	};
};



