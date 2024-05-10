GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);

GT.visual.shape = "Oerlikon_RG_MK3";
GT.visual.shape_dstr = "Oerlikon_RG_MK3";

GT.toggle_alarm_state_interval = 5;

GT.IR_emission_coeff = 0.08;

GT.AddPropVehicle = {
    { id = "Hydraulic lifts extended" , control = 'checkbox', label = _('Hydraulic lifts extended'), defValue = true, arg=15, boolean_inverted = false} -- boolean_inverted = true by default: element present - argVal=0, absent - argVal=1
}

GT.sensor = {};
GT.sensor.max_range_finding_target = 1;
GT.sensor.min_range_finding_target = 0;
GT.sensor.max_alt_finding_target = 30000;
GT.sensor.min_alt_finding_target = 0;
GT.sensor.height = 2;

-- Burning after hit
GT.visual.fire_size = 0.8; --relative burning size
GT.visual.fire_pos[1] = -1.5; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 1.5; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)
GT.visual.dust_pos = {1.1, 0.05, 0}
GT.visual.dirt_pos = {-1.1, 0.05, 0}

GT.visual.min_time_agony       = 5
GT.visual.max_time_agony       = 120
GT.visual.agony_explosion_size = 5

GT.WS = {}
local ws;
GT.WS.maxTargetDetectionRange = 160000
GT.WS.radar_type = 103
GT.WS.radar_rotation_type = 0
-- GT.WS.searchRadarMaxElevation = math.rad(85);
-- GT.WS.searchRadarFrequencies = {{8.0e6, 12.0e6}, {12.0e6,18.2e6}}
GT.WS.fire_on_march = false

--GT.WS[3]
local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = "Tower.1";
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-10), math.rad(85)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].animation_alarm_state = {time = 0.5, arg = 15}  
GT.WS[ws].omegaY = math.rad(57);
GT.WS[ws].omegaZ = math.rad(115);
GT.WS[ws].pidY = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT.WS[ws].pidZ = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT.WS[ws].reference_angle_Y = math.rad(0);
GT.WS[ws].reference_angle_Z = math.rad(5);	
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].pointer = "Muzzle.1"
GT.WS[ws].cockpit = {'Gepard/Gepard', {0.1, 0.0, 0.0} }

--GT.WS[3].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Oerlikon_RG_MK3);
__LN.BR = {{ connector_name = 'Muzzle.1', recoilTime = 60/1000 },}								
__LN.createMuzzleFlashEffect = true;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;
__LN.depends_on_unit = {{{"MIM104_ANMPQ65"},},{{"MIM104_ANMPQ65A"},},{{"MIM104_LTAMDS"},},{{"Oerlikon_MSU"},},{{"ELM2084_MMR_AD_RT"},},{{"ELM2084_MMR_WLR"},},{{"ELM2084_MMR_AD_SC"},},{{"ELM2084_MINI_MMR_WLR"},},};

GT.Name = "OerlikonRGMK3"
GT.DisplayName = _("Oerlikon Revolvergun Mk3");
GT.DisplayNameShort = _("Oerlikon RG MK3");
GT.Rate = 25;


GT.EPLRS = true;
GT.DetectionRange = 0;
GT.ThreatRange = 4000;
GT.airWeaponDist = 4000;
GT.ThreatRangeMin = 0;
GT.mapclasskey = "P0091000017";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar_Gun,WSTYPE_PLACEHOLDER,
                "AA_flak",
                "SAM SR",
                "SAM TR",
                "RADAR_BAND1_FOR_ARM",
				"Datalink",
                };
GT.category = "Air Defence";

GT.tags  =
{
    "Air Defence",
    "AAA",
}
GT.Countries = {"USA","Germany","Greece","Israel","Japan","Poland","Spain","Taiwan","Ukraine","Romania","South Korea","Jordan","Saudi Arabia","United Arab Emirates"}
add_surface_unit(GT)
