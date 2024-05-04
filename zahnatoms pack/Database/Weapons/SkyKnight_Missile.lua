local namename = 'SkyKnight'
Sky_Knight_Missile = {
    category        = CAT_MISSILES,
    name            = namename,
    user_name       = _(namename),
    model           = 'SkyKnight_Missile',
    mass            = 35,
    wsTypeOfWeapon  = {4,4,34,WSTYPE_PLACEHOLDER},

    Escort 			= 0,
    Head_Type 		= 2,
	sigma 			= {0.001, 0.001, 0.001},
    M 				= 35.0,
    H_max 			= 7500.0,
    H_min 			= 50.0,
    Diam 			= 115.0,
    Cx_pil 			= 2,
    D_max 			= 10000.0,
    D_min 			= 0.0,
    Head_Form 		= 0,
    Life_Time 		= 180.0,
    Nr_max 			= 75,
    v_min 			= 1.0,
    v_mid 			= 2200.0,
    Mach_max 		= 4,
    t_b 			= 0.0,
    t_acc 			= 0.0,
    t_marsh 		= 5,
    Range_max 		= 10000.0,
    H_min_t 		= 1.0,
    Fi_start    	= 3.14152, -- angle of tracking at firing
    Fi_rak      	= 3.14152,
    Fi_excort   	= 2, --3.14152,
    Fi_search   	= 99.9, --search angle limit
    OmViz_max   	= 99.9, --search line speed limit
	exhaust2	    = { 1, 1, 1, 0.5 },
    X_back 			= -1.5,
    Y_back 			= 0.0,
    Z_back 			= 0.0,
	exhaust1 	    = { 0.0603, 0.0067, 0.0075, 0.001 },
    X_back_acc      = -1.5,
    Y_back_acc      = 0,
    Z_back_acc      = 0,
    Reflection 		= 0.01,
    KillDistance 	= 20.0,
	hoj 			= 1,	
	ccm_k0 			= 0.01,	
	
	active_radar_lock_dist	= 25000.0,
	go_active_by_default	= 1,	
	
	PN_coeffs = {4, 				
				1000.0 ,0.975,		
				2500.0, 1.15,
                8500, 1.2,
                10000, 1.3};		

	warhead = enhanced_a2a_warhead(25.0); 

    shape_table_data = {
        {
            name     = namename,
            file     = 'SkyKnight_Missile',
            life     = 1,
            fire     = {0, 1},
            username = "SkyKnight",
            index    = WSTYPE_PLACEHOLDER,
        },
    },
    ModelData = {
        58 ,  -- model params count
		0.1,   -- characteristic square (характеристическая площадь) old 0.09 -- 4
		
		-- Cx dependency parameters
		0.025 , -- Cx_k0 plank Cx0 of subsonics ( M << 1) old 0.1 -- 0.17
		0.065 , -- Cx_k1 peak height of the wave crisis old 0.1 -- 0.22
		0.01 , -- Cx_k2 steepness of the front on the way to the wave crisis 
		0.035, -- Cx_k3 bar Cx0 on supersonic ( M >> 1) old 0.06 -- 0.033
		0.9 , -- Cx_k4 steepness of the decline behind the wave crisis old 1.2 -- 2.0
		0.7 , -- polar dump coefficient (proportional to sqrt (M^2-1)) 
		
		-- Cy dependency parameters
		0.7 , -- Cy_k0 plank Sy0 on reverberation ( M << 1) old 0.8 -- 1.57
		0.6	 , -- Cy_k1 plank Cy0 on supersonic ( M >> 1)
		0.9  , -- Cy_k2 steepness of the recession (front) behind the wave crisis
		
		0.7 , -- 7 Alfa_max maximum trim angle, radians 1.0
		0.0, -- Extra G by trust vector
        
        -- Engine data. Time, fuel flow, thrust.    
--    t_statr        t_b     t_accel     t_march     t_inertial        t_break        t_end            -- Stage
        0.0,        0.3,    0.01,          4,        0.0,            0.0,        1.0e9,         -- time of stage, sec
         0.0,        0.0,    0.0,        4.0,        0.0,            0.0,        0.0,           -- fuel flow rate in second, kg/sec(секундный расход массы топлива кг/сек)
         0.0,        0.0,    0.0,    5000.0,    0.0,            0.0,        0.0,           -- thrust, newtons
    
        60, -- self-destruction timer, sec
		180.0,  -- power system operation time, sec
		0,  -- absolute altitude of self-destruction, m
		0.05, -- control activation delay time (departure, safety maneuver), sec
		999999999999999999, -- range to the target at the time of launch, above which the missile performs the "hill" maneuver, m
		99999999999999999, -- range to the target at which the "hill" maneuver ends and the missile switches to pure proportional navigation (should be greater than or equal to the previous parameter), m
		0.0,  -- sine of elevation angle of slide set trajectory
		50.0, -- longitudinal acceleration cocking fuse
		50.0, -- speed module reported by the ejection device, expelling charge, etc.
		1.19, -- characteristic of the SAU-RAKETA system, second-order filter coefficient K0
		1.0, -- characteristic of the SAU-RAKETA system, second-order filter coefficient K1
		2.0, -- SAU-RAKETA system characteristic, control loop bandwidth
		-- ZRP. Data for calculating launch ranges (indication on the sight)
		0.0, -- derivative of range with respect to carrier speed at a height of 1 km, PPP
		0.0, -- derivative of range with respect to target speed at 1 km altitude, ZPS
		0.0, -- height derivative of range derivative with respect to target speed, ZPS
		10000.0, -- range angle 180 degrees (towards), H=5000m, V=900km/h, m
		2500.0, -- range angle 0 (in pursuit) hail, H=5000m, V=900km/h, m
		2500.0, -- range angle 180 (towards) deg, H=10000m, V=900km/h, m
		2500.0,  -- range angle 0 (in pursuit) hail, H=10000m, V=900km/h, m
		10000.0, -- range angle 180 (towards) deg, H=1000m, V=900km/h, m
		2500.0, -- range angle 0 (in pursuit) hail, H=1000m, V=900km/h, m
		1.0, -- offset back from the zero of the backsight of the reachability zone
		1.4, -- percentage of guaranteed range from the range in PPP at an altitude of 1 km
		-3.0, -- derivative of the percentage of guaranteed range in PPP with respect to height
		0.5, -- Change in the coefficients of the slope of the curve in the upper and lower hemispheres from the height of the carrier.
    },
}

declare_weapon(Sky_Knight_Missile)

GT_t.LN_t.SkyKnight_Missile = {}; 
GT_t.LN_t.SkyKnight_Missile.type = 4;
GT_t.LN_t.SkyKnight_Missile.distanceMin = 0;
GT_t.LN_t.SkyKnight_Missile.distanceMax = 10000;
GT_t.LN_t.SkyKnight_Missile.maxShootingSpeed = 0;
GT_t.LN_t.SkyKnight_Missile.show_external_missile = true
GT_t.LN_t.SkyKnight_Missile.launch_delay = 0.09;
GT_t.LN_t.SkyKnight_Missile.barrels_reload_type = 3;
GT_t.LN_t.SkyKnight_Missile.reactionTime = 0.00000000001;
GT_t.LN_t.SkyKnight_Missile.reflection_limit = 0.0000000000002;
GT_t.LN_t.SkyKnight_Missile.ECM_K = 0
GT_t.LN_t.SkyKnight_Missile.beamWidth = math.rad(5.0);
GT_t.LN_t.SkyKnight_Missile.sensor = {};
set_recursive_metatable(GT_t.LN_t.SkyKnight_Missile.sensor, GT_t.WSN_t[0]);
GT_t.LN_t.SkyKnight_Missile.PL = {};
GT_t.LN_t.SkyKnight_Missile.PL[1] = {};
GT_t.LN_t.SkyKnight_Missile.PL[1].ammo_capacity = 60;
GT_t.LN_t.SkyKnight_Missile.PL[1].type_ammunition = Sky_Knight_Missile.wsTypeOfWeapon;
GT_t.LN_t.SkyKnight_Missile.PL[1].reload_time = 3600;
GT_t.LN_t.SkyKnight_Missile.BR = {};
