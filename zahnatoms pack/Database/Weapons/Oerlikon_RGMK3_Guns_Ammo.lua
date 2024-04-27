declare_weapon({
    category = CAT_SHELLS,
    name = "Oerlikon_AHEAD",
    user_name = _("35 mm AHEAD"),
    model_name = "tracer_bullet_yellow",
    v0 = 1100,
    Dv0 = 0.0080, -- Deviation of speed
    Da0 = 0.0008, -- Deviation in aiming?
    Da1 = 0.0,
    mass = 0.750,
    round_mass = 1,
    cartridge_mass = 0.25,
    explosive = 0.5,
    life_time = 5,
    caliber = 35.0,
    s = 0,
    j = 0,
    l = 0,
    charTime = 0,
    cx = {0.5, 1.27, 0.7, 0.2, 2.3},
    k1 = 3.5e-09,
    tracer_off = 5,
    scale_tracer = 1.5,
    cartridge = 0
    -- aiming_table = {
    --     precalculateAirDefenceAimingTable = true,
    --     precalculateAimingTable = true,
    --     [1] = {init_vel = 1100.0}
    -- }
});

declare_weapon({
    category = CAT_SHELLS,
    name = "Oerlikon_AHEAD_INVIS",
    user_name = _("35 mm AHEAD INVIS"),
    model_name = "tracer_bullet_yellow",
    v0 = 1100,
    Dv0 = 0.0080,
    Da0 = 0.0008,
    Da1 = 0.0,
    mass = 0.750,
    round_mass = 1,
    cartridge_mass = 0.25,
    explosive = 0.5,
    life_time = 5,
    caliber = 35.0,
    s = 0,
    j = 0,
    l = 0,
    charTime = 0,
    cx = {0.5, 1.27, 0.7, 0.2, 2.3},
    k1 = 3.5e-09,
    tracer_off = -1,
    scale_tracer = 1.5,
    cartridge = 0
    -- aiming_table = {
    --     precalculateAirDefenceAimingTable = true,
    --     precalculateAimingTable = true,
    --     [1] = {init_vel = 1100.0}
    -- }
});

WSN_5 = {}
WSN_5.deviation_error_azimuth = 0.0000002
WSN_5.deviation_error_elevation = 0.0000002
WSN_5.deviation_error_speed_sensor = 0.0000002
WSN_5.deviation_error_stability = 0.0000002
WSN_5.deviation_error_distance = 0.0000002

GT_t.WSN_t[5] = WSN_5;

GT_t.LN_t.Oerlikon_RG_MK3 = {
    name = "Oerlikon 35 mm RG Mk3",
    display_name = _("Oerlikon 35 mm Revolver Gun Mk 3")
};
GT_t.LN_t.Oerlikon_RG_MK3.type = 3;
GT_t.LN_t.Oerlikon_RG_MK3.distanceMin = 0;
GT_t.LN_t.Oerlikon_RG_MK3.distanceMax = 4000;
GT_t.LN_t.Oerlikon_RG_MK3.max_trg_alt = 4000;
GT_t.LN_t.Oerlikon_RG_MK3.reactionTime = 0.5;
GT_t.LN_t.Oerlikon_RG_MK3.maxShootingSpeed = 0;
GT_t.LN_t.Oerlikon_RG_MK3.reflection_limit = 0.02;
GT_t.LN_t.Oerlikon_RG_MK3.beamWidth = math.rad(60);
GT_t.LN_t.Oerlikon_RG_MK3.sensor = {}
GT_t.LN_t.Centurion_C_RAM_Phalanx.useTargetAccelInSight = true
set_recursive_metatable(GT_t.LN_t.Oerlikon_RG_MK3.sensor, GT_t.WSN_t[5]);
GT_t.LN_t.Oerlikon_RG_MK3.PL = {};
GT_t.LN_t.Oerlikon_RG_MK3.PL[1] = {};
GT_t.LN_t.Oerlikon_RG_MK3.PL[1].ammo_capacity = 13 * 30; -- actuall 252
-- GT_t.LN_t.Oerlikon_RG_MK3.PL[1].portionAmmoCapacity = 26 * 10;
GT_t.LN_t.Oerlikon_RG_MK3.PL[1].switch_on_delay = 5;
GT_t.LN_t.Oerlikon_RG_MK3.PL[1].shell_name = {
    "Oerlikon_AHEAD", "Oerlikon_AHEAD_INVIS", "Oerlikon_AHEAD_INVIS",
    "Oerlikon_AHEAD_INVIS", "Oerlikon_AHEAD_INVIS"
};
GT_t.LN_t.Oerlikon_RG_MK3.PL[1].shot_delay = 60 / (1000 * 5);
GT_t.LN_t.Oerlikon_RG_MK3.PL[1].reload_time = 5;
GT_t.LN_t.Oerlikon_RG_MK3.BR = {{pos = {3.95, 0, 0}}};
for i = 2, 30 do
    GT_t.LN_t.Oerlikon_RG_MK3.PL[i] = {};
    set_recursive_metatable(GT_t.LN_t.Oerlikon_RG_MK3.PL[i],
                            GT_t.LN_t.Oerlikon_RG_MK3.PL[1]);
end
