if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Pierce Arrow Tanker LRFD"
VEHICLE.Vehicle		= "arrowxt_rescue_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Fire Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.BodyGroups = {
	["lightbar"] = 1,
	["lightbar_side"] = 1,
	["genericlights"] = 0,
}

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Tanker 9",
				SubMaterials = {
					{ Id = 12, Material = "rin/lrfd2/arrow_tanker/tanker_9" },
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
		Category = "Rear Beacons",
		Options = {
			{
				Option = "Rear Beacons",
				Components = {
					{
						Component = "creeper_whelen_l31_lrfd",
						Position = Vector( -40, -246.7, 105 ),
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
						Position = Vector( 40, -246.7, 105 ),
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
		Category = "Rear 700s",
		Options = {
			{
				Option = "Whelen 700s",
				Components = {
					{
						Component = "creeper_whelen_700_superled",
						Position = Vector( -40.5, -242, 82),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						SubMaterials = {
							[6] = "schmal/photon/fedsig_legend/dome_r",
						},
					},
					{
						Component = "creeper_whelen_700_superled",
						Position = Vector( 40.5, -242, 82),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						SubMaterials = {
							[6] = "sentry/props/koitoflasher/glass_amber",
						},
					},
					{
						Component = "creeper_whelen_700_superled",
						Position = Vector( -40.5, -242, 60),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						SubMaterials = {
							[6] = "sentry/props/koitoflasher/glass",
						},
					},
					{
						Component = "creeper_whelen_700_superled",
						Position = Vector( 40.5, -242, 60),
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
		Category = "Side Flashers",
		Options = {
			{
				Option = "Osaka Siren LAF-150",
				Components = {
					{
						Component = "oss_laf150_lrfd", --OSS LEFT
						Position = Vector( -48.7, 95.2, 96.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0
					},
					{
						Component = "oss_laf150_lrfd",
						Position = Vector( -48.7, -104, 54 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0
					},
					{
						Component = "oss_laf150_lrfd",
						Position = Vector( -48.7, -166, 54 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0
					},
					{
						Component = "oss_laf150_lrfd", --OSS RIGHT
						Position = Vector( 48.7, 95.2, 96.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0
					},
					{
						Component = "oss_laf150_lrfd",
						Position = Vector( 48.7, -104, 54 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0
					},
					{
						Component = "oss_laf150_lrfd",
						Position = Vector( 48.7, -166, 54 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --WHELEN LEFT
						Position = Vector( -47.1, -35, 101.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
						Phase = 90,
					},
					{
						Component = "creeper_whelen_900_led_lrfd",
						Position = Vector( -47.1, -85, 101.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
					},
					{
						Component = "creeper_whelen_900_led_lrfd", 
						Position = Vector( -47.1, -135, 101.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
						Phase = 90,
					},
					{
						Component = "creeper_whelen_900_led_lrfd",
						Position = Vector( -47.1, -185, 101.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
					},
					{
						Component = "creeper_whelen_900_led_lrfd", 
						Position = Vector( -47.1, -230, 101.3 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
						Phase = 90,
					},
					{
						Component = "creeper_whelen_900_led_lrfd", --WHELEN RIGHT
						Position = Vector( 47.1, -35, 101.3 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
						Phase = 90,
					},
					{
						Component = "creeper_whelen_900_led_lrfd",
						Position = Vector( 47.1, -85, 101.3 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0,
					},
					{
						Component = "creeper_whelen_900_led_lrfd", 
						Position = Vector( 47.1, -135, 101.3 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
						Phase = 90,
					},
					{
						Component = "creeper_whelen_900_led_lrfd",
						Position = Vector( 47.1, -185, 101.3 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0,
					},
					{
						Component = "creeper_whelen_900_led_lrfd", 
						Position = Vector( 47.1, -230, 101.3 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.0,
						SubMaterials = {
							[6] = "sentry/himedic/gls_red_front"
						},
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
						Position = Vector( 0, 140, 106),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.8,
					},
					{
						Model = "models/sentry/props/q2b.mdl",
						Position = Vector( -30, 174, 39),
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
						Position = Vector( -28.8, -243.2, 27 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 25, 181.15, 27.5 ),
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
