if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2019 Chevrolet Tahoe LRFD"
VEHICLE.Vehicle		= "19tahoe_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Fire Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Chief",
				SubMaterials = {
					{ Id = 21, Material = "rin/lrfd2/tahoe19/chief" }
				},
			},
			{
				Option = "Assistant Chief",
				SubMaterials = {
					{ Id = 21, Material = "rin/lrfd2/tahoe19/assistant_chief" }
				},
			},
			{
				Option = "Deputy Chief",
				SubMaterials = {
					{ Id = 21, Material = "rin/lrfd2/tahoe19/deputy_chief" }
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Whelen Legacy",
				Components = {
				    {
						Component = "photon_whe_legacy_54",
						Position = Vector( 0, -9.5, 88.5 ),
						Angles = Angle( 1, 90, 0 ),
						Scale = 0.965,
						BodyGroups = {
							["Takedown"] = 1,
							["Alley"] = 1,
							["Clamps"] = 2,
							["Gels"] = 1,
						},
						SubMaterials = {
							[3] = "rin/lrfd2/props/legacy"
						},
					},
				}
			},
		}
	},
	{
		Category = "Grille",
		Options = {
			{
				Option = "Whelen Ions",
				Components = {
					{
						Component = "photon_whe_ion",
						Position = Vector( 17.5, 117, 43.9 ),
						Angles = Angle( -1, -8, 0 ),
						Scale = 1,
                    },
                    {
						Component = "photon_whe_ion",
						Position = Vector( -17.5, 117, 43.9 ),
						Angles = Angle( 1, 8, 0 ),
						Scale = 1,
                        Phase = 90,
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
						Position = Vector( -9, -122.9, 47),
						Angles = Angle( 90, 180, 0 ),
						Scale = 1,
						Phase = 180,
					},
					{
						Component = "photon_whe_ion_surface",
						Position = Vector( 9, -122.9, 47),
						Angles = Angle( 90, 180, 0 ),
						Scale = 1
					},
				}
			}
		}
	},
	{
		Category = "Spotlights",
		Options = {
			{
				Option = "Pillar Spotlights",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -37, 40.5, 68 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_whe_par46_right",
						Position = Vector( 37, 40.5, 68 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Inputs = {
							-- Clear the default illumination mode
							["Emergency.SceneForward"] = { ["ON"] = {} },
						}
					}
				},
			},
		}
	},
	{
		Category = "Trim Package",
		Options = {
			{
				Option = "Trim Package",
				BodyGroups = {
					{ BodyGroup = "mirrors", Value = 2 },
					{ BodyGroup = "grille", Value = 1 },
					{ BodyGroup = "wheels", Value = 5 },
				},
			},
		}
	},
	{
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				BodyGroups = {
					{ BodyGroup = "pushbar", Value = 0 },
					{ BodyGroup = "windowbars", Value = 0 },
					{ BodyGroup = "partition", Value = 0 },
					{ BodyGroup = "lightbar", Value = 1 },
					{ BodyGroup = "console", Value = 1 },
					{ BodyGroup = "ions", Value = 1 },
					{ BodyGroup = "dominator", Value = 1 },
					{ BodyGroup = "keychain", Value = 0 },
				},
				Props = {
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 7, 28, 80.5 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( -21, -60, 87.7),
						Angles = Angle( -3, 0, 1 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 21, -60, 87.7),
						Angles = Angle( 3, 0, 1 ),
						Scale = 1
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 8, 14),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 18.05, 40.7 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 20.8, 42 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 15.35, 40.1 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necmdt.mdl",
						Position = Vector( 0, 27.7, 49 ),
						Angles = Angle( -5, 270, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -123.1, 47 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 123.5, 22.1 ),
						Angles = Angle( 4, 90, 0 ),
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