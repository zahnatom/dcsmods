-- MIM-104 M903 PAC-3 LN by Currenthill

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_stationary);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STATIC);

GT.visual.shape = "SkyKnight_MLU";
GT.visual.shape_dstr = "SkyKnight_MLU";

GT.swing_on_run = false
GT.IR_emission_coeff = 0.06

GT.toggle_alarm_state_interval = 10.0;

--chassis

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 6.249;

--Burning after hit
GT.visual.fire_size = 1.6; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 2; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 600; --burning time (seconds)

GT.visual.min_time_agony       = 5
GT.visual.max_time_agony       = 120
GT.visual.agony_explosion_size = 10

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 160000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].pos = {-2, 2.109,0};
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(0), math.rad(180)},
					};
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = -1;
GT.WS[ws].omegaY = 0.523599;
GT.WS[ws].omegaZ = 0.0;
GT.WS[ws].pidY = {p=10,i=0.02,d=6};
GT.WS[ws].pidZ = {p=10,i=0.02,d=6};
GT.WS[ws].beamWidth = math.rad(10.0)

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.SkyKnight_Missile);
GT.WS[ws].LN[1].PL[1].shot_delay = 0.01;
__LN.depends_on_unit = {{{"MIM104_ANMPQ65"},},{{"MIM104_ANMPQ65A"},},{{"MIM104_LTAMDS"},},{{"Oerlikon_MSU"},},{{"ELM2084_MMR_AD_RT"},},{{"ELM2084_MMR_WLR"},},{{"ELM2084_MMR_AD_SC"},},{{"ELM2084_MINI_MMR_WLR"},},};
__LN.BR = {
        {connector_name = 'Missile.000', recoilArgument = 30, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.001', recoilArgument = 31, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.002', recoilArgument = 32, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.003', recoilArgument = 33, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.004', recoilArgument = 34, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.005', recoilArgument = 35, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.006', recoilArgument = 36, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.007', recoilArgument = 37, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.008', recoilArgument = 38, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.009', recoilArgument = 39, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.010', recoilArgument = 40, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.011', recoilArgument = 41, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.012', recoilArgument = 42, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.013', recoilArgument = 43, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.014', recoilArgument = 44, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.015', recoilArgument = 45, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.016', recoilArgument = 46, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.017', recoilArgument = 47, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.018', recoilArgument = 48, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.019', recoilArgument = 49, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.020', recoilArgument = 50, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.021', recoilArgument = 51, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.022', recoilArgument = 52, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.023', recoilArgument = 53, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.024', recoilArgument = 54, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.025', recoilArgument = 55, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.026', recoilArgument = 56, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.027', recoilArgument = 57, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.028', recoilArgument = 58, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.029', recoilArgument = 59, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.030', recoilArgument = 60, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.031', recoilArgument = 61, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.032', recoilArgument = 62, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.033', recoilArgument = 63, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.034', recoilArgument = 64, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.035', recoilArgument = 65, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.036', recoilArgument = 66, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.037', recoilArgument = 67, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.038', recoilArgument = 68, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.039', recoilArgument = 69, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.040', recoilArgument = 70, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.041', recoilArgument = 71, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.042', recoilArgument = 72, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.043', recoilArgument = 73, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.044', recoilArgument = 74, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.045', recoilArgument = 75, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.046', recoilArgument = 76, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.047', recoilArgument = 77, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.048', recoilArgument = 78, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.049', recoilArgument = 79, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.050', recoilArgument = 80, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.051', recoilArgument = 81, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.052', recoilArgument = 82, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.053', recoilArgument = 83, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.054', recoilArgument = 84, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.055', recoilArgument = 85, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.056', recoilArgument = 86, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.057', recoilArgument = 87, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.058', recoilArgument = 88, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        {connector_name = 'Missile.059', recoilArgument = 89, recoilT0 = -2, recoilT1 = -1, recoilT2 = 1, recoilTime = 2},
        };
__LN = nil;

GT.Name = "SkyKnight_MLU";
GT.DisplayName = _("SkyKnight MLU Launcher");
GT.DisplayNameShort = _('SkyKnight MLU');
GT.Rate = 10;

GT.EPLRS = true

GT.DetectionRange  = 0;
GT.ThreatRange = 10000;
GT.ThreatRangeMin = 1;
-- GT.AuthoritySector = {math.rad(180), math.rad(-180)};
GT.mapclasskey = "P0091000079";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Miss,WSTYPE_PLACEHOLDER,
				"AA_missile",
				"SAM LL",
				"Datalink"
				};
GT.category = "Air Defence";

GT.Countries = {"USA","Germany","Greece","Israel","Japan","Poland","Spain","Taiwan","Ukraine","Romania","South Korea","Jordan","Saudi Arabia","United Arab Emirates"}

add_surface_unit(GT)
