--SENSOR TYPE
local SENSOR_OPTICAL = 0
local SENSOR_RADAR = 1
local SENSOR_IRST = 2
local SENSOR_RWR = 3
--RADAR
local RADAR_AS = 0
local RADAR_SS = 1
local RADAR_MULTIROLE = 2
--
local ASPECT_HEAD_ON = 0
local ASPECT_TAIL_ON = 1
--
local HEMISPHERE_UPPER = 0
local HEMISPHERE_LOWER = 1
--IRST
local ENGINE_MODE_FORSAGE = 0
local ENGINE_MODE_MAXIMAL = 1
local ENGINE_MODE_MINIMAL = 2
--OPTIC
local OPTIC_SENSOR_TV = 0
local OPTIC_SENSOR_LLTV = 1
local OPTIC_SENSOR_IR = 2

Oerlikon_MSU_Radar = {
    Name = "Oerlikon MSU Radar",
    category = SENSOR_RADAR,
    type = RADAR_AS,
    scan_volume = {
        azimuth = {-180, 180},
        elevation = {0, 97}
    },
    max_measuring_distance = 160000,
    detection_distance = 
    {
        [HEMISPHERE_UPPER] = 
        {
            [ASPECT_HEAD_ON] = 160000,
            [ASPECT_TAIL_ON] = 160000,
        },
        [HEMISPHERE_LOWER] = 
        {
            [ASPECT_HEAD_ON] = 160000,
            [ASPECT_TAIL_ON] = 160000,
        },
    },
    lock_on_distance_coeff = 1,
    velocity_limits = 
    {
        radial_velocity_min = -1000,
    },
    scan_period = 0.0000000000000000000000000000000000000005,
    multiple_targets_tracking = true,
}
declare_sensor(Oerlikon_MSU_Radar)

Oerlikon_MSU_IR = 
{
    Name = "Oerlikon MSU FLIR",
    category = SENSOR_OPTICAL,
    type = OPTIC_SENSOR_IR,
    scan_volume =
    {
        azimuth = {-180, 180},
        elevation = {-45, 90},
    },
    view_volume_max = {
        azimuth_sector = 25,
        elevatoin_sector = 25,
    },
    magnifications = {1,5,10},
    resolution = 0.1
}
declare_sensor(Oerlikon_MSU_IR)