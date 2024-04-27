-- MIM-104 LTAMDS STR by Currenthill

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);

GT.visual.shape = "Oerlikon_MSU";
GT.visual.shape_dstr = "Oerlikon_MSU";

GT.swing_on_run = false
GT.IR_emission_coeff = 0.08
GT.animation_arguments.locator_rotation = 11;
GT.radar_rotation_period = 0.000000000000000000000000000000000001;
GT.snd.radarRotation = "GndTech/RadarRotation";

GT.toggle_alarm_state_interval = 10.0;

--chassis
GT.sensor = {};
GT.sensor.max_range_finding_target = 160000;
GT.sensor.min_range_finding_target = 1;
GT.sensor.max_alt_finding_target = 50000;
GT.sensor.height = 5.895;

--Burning after hit
GT.visual.fire_size = 1.2; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 1; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 600; --burning time (seconds)

GT.visual.min_time_agony       = 5
GT.visual.max_time_agony       = 120
GT.visual.agony_explosion_size = 5

GT.WS = {};
GT.WS.maxTargetDetectionRange = 160000;
GT.WS.radar_type = 103;
GT.WS.radar_rotation_type = 0;
-- GT.WS.searchRadarMaxElevation = math.rad(90);
-- GT.WS.searchRadarFrequencies = {{50.0e6, 54.0e6}, {2.0e9, 2.2e9}}
GT.WS.fire_on_march = false;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].pos = {0,0,0};
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(-25), math.rad(90)},
					};
GT.WS[ws].drawArgument1 = 50;
GT.WS[ws].drawArgument2 = 51;
GT.WS[ws].omegaY = (2 * math.pi * 30) / 60;
GT.WS[ws].omegaZ = (2 * math.pi * 30) / 60;
GT.WS[ws].pidY = {p = 15, i = 0.02, d = 3, inn = 1.2}
GT.WS[ws].pidZ = {p = 15, i = 0.02, d = 3, inn = 1.2}
GT.WS[ws].LN = {};
GT.WS[ws].LN[1] = {};
GT.WS[ws].LN[1].max_number_of_missiles_channels = 1;
GT.WS[ws].LN[1].type = 103;
GT.WS[ws].LN[1].frequencyRange = {{4.0e9, 8.0e9}, {2.0e9, 4.0e9}}
GT.WS[ws].LN[1].reactionTime = 0.0000000000000000000000000000000000000000000000000000000000000001;
GT.WS[ws].LN[1].reflection_limit = 0.00000000000000000000000000000000000000000000000000000000000000000000000000000000000001;
GT.WS[ws].LN[1].distanceMin = 1; 
GT.WS[ws].LN[1].distanceMax = 160000; 
GT.WS[ws].LN[1].ECM_K = 0;
GT.WS[ws].LN[1].min_trg_alt = 1;
GT.WS[ws].LN[1].max_trg_alt = 50000;
GT.WS[ws].LN[1].beamWidth = math.rad(0.01746);
-- GT.WS[ws].LN[1].depends_on_unit = {{{"MIM104_ECS",},},};
GT.WS[ws].LN[1].maxShootingSpeed = 0;	

for i = 1,125 do
    ws = GT_t.inc_ws();
	GT.WS[ws] = {};
    -- GT.WS[ws].base = 1;
    GT.WS[ws].pos = {0,0,0};
	GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(-25), math.rad(90)},
					};
    GT.WS[ws].omegaY = (2 * math.pi * 30) / 60;
    GT.WS[ws].omegaZ = (2 * math.pi * 30) / 60;
    GT.WS[ws].LN = {};
	-- GT.WS[ws].LN[1] = {};
	-- GT.WS[ws].LN[1].beamWidth = math.rad(360);	
	-- GT.WS[ws].LN[1].frequencyRange = {0.5e9, 0.58e9}	
	-- GT.WS[ws].LN[1].distanceMin = 10;
	-- GT.WS[ws].LN[1].distanceMax = GT.sensor.max_range_finding_target;
	GT.WS[ws].LN = {
		{
			type = 103,
			reflection_limit = 0.0000000000000000000000000000000000000000001,
			distanceMin = 1,
			distanceMax = 160000,
			ECM_K = 0,
			min_trg_alt = 1,
			max_trg_alt = 50000,
			reactionTime = 0.000000000000000000000000000000000000000000001,
			max_number_of_missiles_channels = 1,
		}
	}
	-- set_recursive_metatable(GT.WS[ws].LN[1], GT.WS[1].LN[1])
end

GT.Name = "Oerlikon_MSU";
GT.DisplayName = _("Oerlikon MSU Radar/FLIR");
GT.DisplayNameShort = _('Oerlikon MSU');
GT.Rate = 20;

GT.Sensors = {RADAR = "Oerlikon MSU Radar",};-- OPTIC = "Oerlikon MSU FLIR"};

GT.EPLRS = true

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = 0;
GT.mapclasskey = "P0091000083";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar,WSTYPE_PLACEHOLDER,
				"LR SAM",
				"SAM SR",
				"SAM TR",
				"RADAR_BAND1_FOR_ARM",
				"RADAR_BAND2_FOR_ARM",
				"Datalink"
				};
GT.category = "Air Defence";

GT.Countries = {"USA","Germany","Greece","Israel","Japan","Poland","Spain","Taiwan","Ukraine","Romania","South Korea","Jordan","Saudi Arabia","United Arab Emirates"}

add_surface_unit(GT)
