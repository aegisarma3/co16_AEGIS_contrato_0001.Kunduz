titleCut ["", "BLACK faded", 0]; sleep 2;titleCut ["", "BLACK IN", 1];
if (hasInterface) then {
	waituntil {!(isnull player)};
	enableEnvironment false;




"colorCorrections" ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0], [0.75, 0.25, 0, 1.0]]; 
"colorCorrections" ppEffectCommit 1; 
"colorCorrections" ppEffectEnable TRUE; 

"filmGrain" ppEffectAdjust [0.04, 1, 1, 0, 1]; 
"filmGrain" ppEffectCommit 0; 
"filmGrain" ppEffectEnable TRUE;  


	//playMusic "mission";


	[0, 0,false,true] call BIS_fnc_cinemaBorder;


	_camx = getposATL player select 0;
	_camy = getposATL player select 1;
	_camz = getposATL player select 2;


	_camera = "camera" CamCreate [_camx,_camy,_camz + 900];


	_camera CamSetTarget player;
	_camera CameraEffect ["Internal","Back"];
	_camera CamCommit 0;

	_camera camsetpos [_camx,_camy,_camz];
	_camera CamCommit 10;

	[  
		[ 

			[ "AEGIS APRESENTA", "<t size='1.0' font='PuristaMedium'>%1</t><br/>", 0 ], 
			
			[ "Contrato 0001", "<t size='1' font='PuristaBold'>%1</t>", 40 ]

		],
		-safezoneX, 
		0.85, 
		"<t align='right' shadow='1' size='1.0'>%1</t>" 
	] spawn BIS_fnc_typeText;

	waitUntil { camCommitted _camera; };
	[1, 10,false,true] call BIS_fnc_cinemaBorder;




	private [ "_year", "_month", "_day", "_hour", "_minute", "_date", "_time" ];

	_year = ( date select 0 );
	_month = ( date select 1 );
	_day = ( date select 2 );

	if( _month < 10 ) then { _month = format[ "0%1", _month ] };
	if( _day < 10 ) then { _day = format[ "0%1", _day ] };


	_date = format[ "%1-%2-%3", _day, _month, _year ];

	_hour = ( date select 3 );
	_minute = ( date select 4 );

	if( _hour < 10 ) then { _hour = format[ "0%1", _hour ] };
	if( _minute < 10 ) then { _minute = format[ "0%1", _minute ] };


	_time = format[ "%1:%2", _hour, _minute ];

	[  
		[ 

			[ _date, "<t size='1.0' font='PuristaMedium'>%1</t>", 0 ], 
			[ _time, "<t size='1.0' font='PuristaBold'>%1</t><br/>", 5 ], 

			[ "Kunduz", "<t size='0.9' font='PuristaBold'>%1</t><br/>", 5 ], 

			[ "Afeganistão", "<t size='0.9'>%1</t><br/>", 30 ]


		],
		-safezoneX, 
		0.85, 
		"<t align='right' shadow='1' size='1.0'>%1</t>" 
	] spawn BIS_fnc_typeText;
	 

	_camera cameraEffect ["Terminate","Back"];
	camDestroy _camera;


	// Muda as cores
	"ColorCorrections" ppEffectEnable true;
	"ColorCorrections" ppEffectAdjust [ 1, 1.08, -0.06, [ 0.5, 0.5, 0.5, 0 ], [ 1.0, 1.0, 1.0, 1.21 ], [ 0.09, 0.09, 0.09, 0.0 ] ];
	"ColorCorrections" ppEffectCommit 10;
	"filmGrain" ppEffectEnable false;  


	enableEnvironment true;
 };




