if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Sutphen Monarch Engine LRFD"
VEHICLE.Vehicle		= "sutphen_engine_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Fire Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Engine 86",
				SubMaterials = {
					{ Id = 14, Material = "rin/lrfd2/sutphen_engine/engine_86" },
				},
			},
		}
	},
	{
		Category = "Front Flashers",
		Options = {
			{
				Option = "Osaka Siren LAF-150",
				Components = {
					{
						Component = "oss_laf150_lrfd", --LEFT INNER
						Position = Vector( -33.2, 196.2, 58.8 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.0
					},
					{
						Component = "oss_laf150_lrfd", --LEFT OUTER
						Position = Vector( -41.5, 196.2, 58.8 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Phase = 90,
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.0
					},
					{
						Component = "oss_laf150_lrfd", --RIGHT INNER
						Position = Vector( 33.2, 196.2, 58.8 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.0
					},
					{
						Component = "oss_laf150_lrfd", --RIGHT OUTER
						Position = Vector( 41.5, 196.2, 58.8 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Phase = 90,
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.0
					},
					{
						Component = "oss_laf150_lrfd", --CORNER LEFT
						Position = Vector( -47.1, 190.5, 48.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0
					},
					{
						Component = "oss_laf150_lrfd", --CORNER RIGHT
						Position = Vector( 47.1, 190.5, 48.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, -90, 0 ),
						Scale = 1.0
					},
				}
			},
		}
	},
	{
		Category = "Side Flashers",
		Options = {
			{
				Option = "Osaka Siren LAF-150",
				Components = {
					{
						Component = "oss_laf150_lrfd", --FRONT LEFT
						Position = Vector( -46.7, 127, 102.7 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Phase = 90,
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0
					},
					{
						Component = "oss_laf150_lrfd", --FRONT RIGHT
						Position = Vector( 46.7, 127, 102.7 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Phase = 90,
						Angles = Angle( 0, -90, 0 ),
						Scale = 1.0
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --MIDDLE LEFT
						Position = Vector( -46.6, -20, 102.7 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --MIDDLE CLEAR LEFT
						Position = Vector( -46.6, -35, 102.7 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
						Phase = 90,
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --MIDDLE RIGHT
						Position = Vector( 46.6, -20, 102.7 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --MIDDLE CLEAR RIGHT
						Position = Vector( 46.6, -35, 102.7 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0,
						Phase = 90,
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --REAR LEFT
						Position = Vector( -46.6, -155, 102.7 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --REAR CLEAR LEFT
						Position = Vector( -46.6, -140, 102.7 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
						Phase = 90,
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --REAR RIGHT
						Position = Vector( 46.6, -155, 102.7 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --REAR CLEAR RIGHT
						Position = Vector( 46.6, -140, 102.7 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0,
						Phase = 90,
					},
				}
			},
		}
	},
	{
		Category = "Rear Beacons",
		Options = {
			{
				Option = "Rear Beacons",
				Components = {
					{
						Component = "creeper_whelen_l31_lrfd",
						Position = Vector( -41, -170.1, 110 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						BodyGroups = {
							["mount"] = 3,
						},
						SubMaterials = {
							[11] = "sentry/props/koitoflasher/glass",
						},
					},
					{
						Component = "creeper_whelen_l31_lrfd",
						Position = Vector( 41, -170.1, 110 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						Phase = 90,
						BodyGroups = {
							["mount"] = 3,
						},
						SubMaterials = {
							[11] = "sentry/props/koitoflasher/glass",
						},
					},
				}
			}
		}
	},
	{
		Category = "Rear Ions",
		Options = {
			{
				Option = "Whelen Ions",
				Components = {
					{
						Component = "photon_whe_ion_surface",
						Position = Vector( -40.5, -165.5, 90),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						States = {
							[1] = "B",
						},
					},
					{
						Component = "photon_whe_ion_surface",
						Position = Vector( 40.5, -165.5, 90),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						Phase = 180,
						States = {
							[1] = "A",
						},
					},
					{
						Component = "photon_whe_ion_surface",
						Position = Vector( -40.5, -165.5, 60),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						Phase = 180,
					},
					{
						Component = "photon_whe_ion_surface",
						Position = Vector( 40.5, -165.5, 60),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1
					},
				}
			}
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
						Position = Vector( 0, 174.7, 103.5),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.8,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, 119, 112),
						Angles = Angle( 0, 30, 0 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 32, -165.6, 28.5 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -30, 210.5, 24.5 ),
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
