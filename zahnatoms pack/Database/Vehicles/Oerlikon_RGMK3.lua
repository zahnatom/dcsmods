GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);

GT.visual.shape = "Oerlikon_RG_MK3";
GT.visual.shape_dstr = "Oerlikon_RG_MK3";

GT.toggle_alarm_state_interval = 5;

GT.IR_emission_coeff = 0.08;

GT.AddPropVehicle = {
    { id = "Hydraulic lifts extended" , control = 'checkbox', label = _('Hydraulic lifts extended'), defValue = false, arg=15, boolean_inverted = false} -- boolean_inverted = true by default: element present - argVal=0, absent - argVal=1
}

GT.sensor = {};
GT.sensor.max_range_finding_target = 30000;
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
GT.WS.maxTargetDetectionRange = 30000
GT.WS.radar_type = 103
GT.WS.radar_rotation_type = 0
-- GT.WS.searchRadarMaxElevation = math.rad(85);
-- GT.WS.searchRadarFrequencies = {{8.0e6, 12.0e6}, {12.0e6,18.2e6}}
GT.WS.fire_on_march = false

-- ============================ Phazotron 1RS2-1 TR ==============================================

--GT.WS[1-2].LN[1]
-- ws = GT_t.inc_ws()
-- local first_PANTSIR_tracker_id = ws
-- GT.WS[ws] = {
-- 	center = 'Sensor.1',
--     omegaY = 2,
--     omegaZ = 2,
--     pidY = {p=100, i=0.05, d=12, inn = 50},
--     pidZ = {p=100, i=0.05, d=12, inn = 50},
--     angles = { {math.rad(180), math.rad(-180), math.rad(-90), math.rad(80)} },
--     drawArgument1 = 50,
--     drawArgument2 = 51,
--     LN = {
--         [1] = {
--             type = 102,
--             distanceMin = 0,
--             distanceMax = 30000,
--             reactionTime = 1.0,
--             reflection_limit = 0.03,
-- 			frequencyRange = {{8.0e6, 12.0e6},{12.0e6, 18.0e6},},
--             ECM_K = 0.0,
--             min_trg_alt = 0,
--             max_trg_alt = 15000,
--             max_number_of_missiles_channels = 0,
--             beamWidth = math.rad(90),
--         }
--     }
-- }

-- local PANTSIR_tracker_ws = {{{'self', ws}}}

-- for i=2,2 do 
--     ws = GT_t.inc_ws()
--     GT.WS[ws] = {}
--     set_recursive_metatable(GT.WS[ws], GT.WS[first_PANTSIR_tracker_id])
--     table.insert(PANTSIR_tracker_ws, {{'self', ws}})
-- end	

-- ========================= Pantsir-S1 turret =====================================================

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
GT.WS[ws].reference_angle_Z = math.rad(0);	
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;
GT.WS[ws].pointer = "Muzzle.1"
GT.WS[ws].cockpit = {'_1A29/_1A29', {0.1, 0.0, 0.0} }

-- =========================== 2A38M 30 mm autocannon  =============================================

--GT.WS[3].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Oerlikon_RG_MK3);
__LN.BR = {{ connector_name = 'Muzzle.1', recoilTime = 60/1000 },}								
__LN.createMuzzleFlashEffect = true;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;
__LN.depends_on_unit = {{{"MIM104_ANMPQ65"},},{{"MIM104_ANMPQ65A"},},{{"MIM104_LTAMDS"},},{{"Oerlikon_MSU"},},{{"ELM2084_MMR_AD_RT"},},{{"ELM2084_MMR_WLR"},},{{"ELM2084_MMR_AD_SC"},},{{"ELM2084_MINI_MMR_WLR"},},};

-- ============================ 1TPP1 EOS ===== =======================================================

-- GT.WS[4].LN[1]
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[1]);
GT.WS[ws].reference_angle_Y = math.rad(0)
GT.WS[ws].reference_angle_Z = math.rad(0)
GT.WS[ws].center = 'Sensor.1'
GT.WS[ws].base = 3
GT.WS[ws].angles = {
					{math.rad(150), math.rad(-150), math.rad(-10), math.rad(85)},
					};
GT.WS[ws].drawArgument1 = 50
GT.WS[ws].drawArgument2 = 51
GT.WS[ws].LN[1].reactionTime = 1;
GT.WS[ws].LN[1].distanceMin = 0;
GT.WS[ws].LN[1].distanceMax = 20000;
GT.WS[ws].LN[1].min_trg_alt = 0;
GT.WS[ws].LN[1].max_trg_alt = 20000;
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.SS_t.VYMPEL_TRACKER[2]);
GT.WS[ws].base = ws-1;
local visual_tracker_ws1 = {{{"self", ws-1}}, {{"self", ws}}};

GT.Name = "OerlikonRGMK3"
GT.DisplayName = _("Oerlikon Revolvergun Mk3");
GT.DisplayNameShort = _("Oerlikon RG MK3");
GT.Rate = 25;
GT.Sensors = {
    Optic = {
        "TKN-3B day",
        "TKN-3B night",
        "Tunguska optic sight",
    },
    Radar = {
        "2RL80 air",},
    }


GT.EPLRS = true;
GT.DetectionRange = 30000;
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