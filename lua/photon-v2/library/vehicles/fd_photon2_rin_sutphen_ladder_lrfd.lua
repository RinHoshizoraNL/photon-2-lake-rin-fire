if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Sutphen SPH100 Ladder LRFD"
VEHICLE.Vehicle		= "sutphen_ladder_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Fire Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Ladder 2",
				SubMaterials = {
					{ Id = 11, Material = "rin/lrfd2/sutphen_ladder/ladder_2" },
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
						Position = Vector( -34.2, 196.7, 58 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.0
					},
					{
						Component = "oss_laf150_lrfd", --LEFT OUTER
						Position = Vector( -42.2, 196.7, 58 ),
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
						Position = Vector( 34.2, 196.7, 58 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.0
					},
					{
						Component = "oss_laf150_lrfd", --RIGHT OUTER
						Position = Vector( 42.2, 196.7, 58 ),
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
						Position = Vector( -48, 190.9, 47.4 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0
					},
					{
						Component = "oss_laf150_lrfd", --CORNER RIGHT
						Position = Vector( 48, 190.9, 47.4 ),
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
		Category = "Cab Side Lights",
		Options = {
			{
				Option = "Osaka Siren LAF-150",
				Components = {
					{
						Component = "oss_laf150_lrfd", --LEFT
						Position = Vector( -47.7, 97, 98.5 ),
						BodyGroups = {
							["bracket"] = 1,
							["mount"] = 0,
						},
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.0,
						Phase = 90,
					},
					{
						Component = "oss_laf150_lrfd", --RIGHT
						Position = Vector( 47.7, 97, 98.5 ),
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
		Category = "Side Ladder Lights",
		Options = {
			{
				Option = "Whelen Ions",
				Components = {
					{
						Component = "photon_whe_ion_surface",
						Position = Vector( -48.3, -80, 48),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_whe_ion_surface",
						Position = Vector( 48.3, -80, 48),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_whe_ion_surface",
						Position = Vector( -48.3, -128, 48),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_whe_ion_surface",
						Position = Vector( 48.3, -128, 48),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1
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
						Position = Vector( -39.5, -285.1, 60),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						SubMaterials = {
							[6] = "schmal/photon/fedsig_legend/dome_r",
						},
					},
					{
						Component = "creeper_whelen_700_superled",
						Position = Vector( 39.5, -285.1, 60),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						SubMaterials = {
							[6] = "sentry/props/koitoflasher/glass_amber",
						},
					},
					{
						Component = "creeper_whelen_700_superled",
						Position = Vector( -39.5, -285.1, 66),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						SubMaterials = {
							[6] = "sentry/props/koitoflasher/glass",
						},
					},
					{
						Component = "creeper_whelen_700_superled",
						Position = Vector( 39.5, -285.1, 66),
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
						Position = Vector( 0, 172, 103.5),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.8,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, 105, 109.9),
						Angles = Angle( 0, 30, 0 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -285.5, 36 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -19, 211.2, 23.7 ),
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
