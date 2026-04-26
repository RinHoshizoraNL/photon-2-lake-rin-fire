if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Seagrave Marauder Rescue LRFD"
VEHICLE.Vehicle		= "seagrave_rescue_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Fire Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Rescue 1",
				SubMaterials = {
					{ Id = 12, Material = "rin/lrfd2/marauder_rescue/rescue_1" },
				},
			},
		}
	},
	{
		Category = "Front Lights",
		Options = {
			{
				Option = "Osaka LAF150",
				Components = {
					{
						Component = "oss_laf150_lrfd",
						Position = Vector( -27.3, 218.4, 61.4 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
					},
					{
						Component = "oss_laf150_lrfd",
						Position = Vector( 27.3, 218.4, 61.4 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
                        Phase = 90,
					},
				}
			},
		}
	},
	{
		Category = "Side Flashers",
		Options = {
			{
				Option = "Whelen 900",
				Components = {
					{
						Component = "creeper_whelen_900_led_lrfd", --FRONT LEFT
						Position = Vector( -44.7, 122, 102 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
						Phase = 90,
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --FRONT RIGHT
						Position = Vector( 44.7, 122, 102 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --MID LEFT
						Position = Vector( -44.7, -7.8, 102 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --MID RIGHT
						Position = Vector( 44.7, -7.8, 102 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
						Phase = 90,
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --REAR LEFT
						Position = Vector( -44.7, -116.2, 102 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
						Phase = 90,
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --REAR RIGHT
						Position = Vector( 44.7, -116.2, 102 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
					},
				}
			},
		}
	},
	{
		Category = "Rear Flashers",
		Options = {
			{
				Option = "Whelen 900",
				Components = {
					{
						Component = "creeper_whelen_900_led_lrfd", --LEFT
						Position = Vector( -34, -150.4, 102 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.0,
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --RIGHT
						Position = Vector( 34, -150.4, 102 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1.0,
						Phase = 90,
					},
				}
			},
		}
	},
	{
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				Props = {
					{
						Model = "models/supermighty/whelen_liberty/whelen_freedom_70inch.mdl",
						Position = Vector( 0, 200, 107.8),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.8,
					},
					{
						Model = "models/sentry/props/q2b.mdl",
						Position = Vector( -30, 224, 41.1),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -148, 34.5 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -30, 230.9, 31 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
				}
			}
		}
	},
}
