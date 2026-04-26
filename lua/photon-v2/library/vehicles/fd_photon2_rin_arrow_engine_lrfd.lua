if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Pierce Arrow Engine LRFD"
VEHICLE.Vehicle		= "arrowxt_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Fire Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.BodyGroups = {
	["lightbar"] = 1,
	["lightbar_side"] = 1,
	["m9"] = 0,
	["genericlights"] = 1,
}

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Engine 4",
				SubMaterials = {
					{ Id = 11, Material = "rin/lrfd2/arrow_engine/engine_4" },
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
						Position = Vector( -28.9, 171.1, 57.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.93
					},
					{
						Component = "oss_laf150_lrfd", --LEFT OUTER
						Position = Vector( -36.1, 171.1, 57.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.93,
						Phase = 90,
					},
					{
						Component = "oss_laf150_lrfd", --RIGHT INNER
						Position = Vector( 28.9, 171.1, 57.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.93
					},
					{
						Component = "oss_laf150_lrfd", --RIGHT OUTER
						Position = Vector( 36.1, 171.1, 57.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.93,
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
				Option = "Osaka Siren LAF-150",
				Components = {
					{
						Component = "oss_laf150_lrfd", --FRONT LEFT
						Position = Vector( -48.7, 95.2, 96.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0
					},
					{
						Component = "oss_laf150_lrfd", --FRONT RIGHT
						Position = Vector( 48.7, 95.2, 96.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, -90, 0 ),
						Scale = 1.0
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --MIDDLE LEFT
						Position = Vector( -47.1, -35, 101.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
						Phase = 90,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --MIDDLE LEFT CLEAR
						Position = Vector( -47.1, -50, 101.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --REAR LEFT
						Position = Vector( -47.1, -165, 101.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
						Phase = 90,
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --REAR LEFT CLEAR
						Position = Vector( -47.1, -150, 101.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --MIDDLE RIGHT
						Position = Vector( 47.1, -35, 101.3 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
						Phase = 90,
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --MIDDLE RIGHT CLEAR
						Position = Vector( 47.1, -50, 101.3 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0,
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --REAR RIGHT
						Position = Vector( 47.1, -165, 101.3 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
						Phase = 90,
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --REAR RIGHT CLEAR
						Position = Vector( 47.1, -150, 101.3 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0,
					},
					{
						Component = "oss_laf150_lrfd", --REAR LOW LEFT
						Position = Vector( -48.7, -104, 54 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
						Phase = 90,
					},
					{
						Component = "oss_laf150_lrfd", --REAR LOW RIGHT
						Position = Vector( 48.7, -104, 54 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, -90, 0 ),
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
						Position = Vector( -40, -184.2, 105 ),
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
						Position = Vector( 40, -184.2, 105 ),
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
						Component = "creeper_whelen_700_superled",
						Position = Vector( -40.5, -179.5, 82),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						SubMaterials = {
							[6] = "schmal/photon/fedsig_legend/dome_r",
						},
					},
					{
						Component = "creeper_whelen_700_superled",
						Position = Vector( 40.5, -179.5, 82),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						SubMaterials = {
							[6] = "sentry/props/koitoflasher/glass_amber",
						},
					},
					{
						Component = "creeper_whelen_700_superled",
						Position = Vector( -40.5, -179.5, 60),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						SubMaterials = {
							[6] = "sentry/props/koitoflasher/glass",
						},
					},
					{
						Component = "creeper_whelen_700_superled",
						Position = Vector( 40.5, -179.5, 60),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						SubMaterials = {
							[6] = "sentry/props/koitoflasher/glass",
						},
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
						Position = Vector( 0, 140, 106),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.8,
					},
					{
						Model = "models/sentry/props/q2b.mdl",
						Position = Vector( -30, 174, 36.8),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, 119, 102.5),
						Angles = Angle( 0, 30, 0 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -28.8, -180.6, 27 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 25, 181.15, 25.3 ),
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
