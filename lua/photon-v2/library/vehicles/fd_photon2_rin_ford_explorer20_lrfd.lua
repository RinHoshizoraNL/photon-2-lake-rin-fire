
if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2020 Ford Explorer LRFD"
VEHICLE.Vehicle		= "20fpiu_new_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Fire Dept."
VEHICLE.Author		= "Rin Hoshizora"


VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Battalion 24 Aqua City",
				SubMaterials = {
					{ Id = 20, Material = "rin/lrfd2/explorer20/battalion_24" }
				},
				Props = {
				    {
						Model = "models/schmal/sgm_fpiu20_win.mdl",
						Position = Vector(),
						Angles = Angle(0, 0, 0),
						SubMaterials = {
							[1] = "rin/lrfd2/explorer20/glass_24"
						}
					}
				},
			},
			{
				Option = "Battalion 33 Sakura Heights",
				SubMaterials = {
					{ Id = 20, Material = "rin/lrfd2/explorer20/battalion_33" }
				},
				Props = {
				    {
						Model = "models/schmal/sgm_fpiu20_win.mdl",
						Position = Vector(),
						Angles = Angle(0, 0, 0),
						SubMaterials = {
							[1] = "rin/lrfd2/explorer20/glass_33"
						}
					}
				},
			},
			{
				Option = "Battalion 48 Little Tokyo",
				SubMaterials = {
					{ Id = 20, Material = "rin/lrfd2/explorer20/battalion_48" }
				},
				Props = {
				    {
						Model = "models/schmal/sgm_fpiu20_win.mdl",
						Position = Vector(),
						Angles = Angle(0, 0, 0),
						SubMaterials = {
							[1] = "rin/lrfd2/explorer20/glass_48"
						}
					}
				},
			},
		}
	},
	{
		Category = "Wheels",
		Options = {
			{
				Option = "Hubcaps",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 0 },
				},
			},
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 1 },
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
						Position = Vector( 0, -15.5, 86.3 ),
						Angles = Angle( 1, 90, 0 ),
						Scale = 0.9955,
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
		Category = "Grille Ions",
		Options = {
			{
				Option = "Whelen Ions",
				Components = {
					{
						Component = "photon_whe_ion_surface",
						Position = Vector( -13, 116, 33.3),
						Angles = Angle( 0, 7, 0 ),
						Scale = 1,
						Phase = 180,
					},
					{
						Component = "photon_whe_ion_surface",
						Position = Vector( 13, 116, 33.3),
						Angles = Angle( 0, -7, 0 ),
						Scale = 1
					},
				}
			}
		}
	},
    {
		Category = "Rear Lighting",
		Options = {
            {
				Option = "Spoiler Lights",
				Components = {
					{
						Component = "photon_sos_ford96t",
						Position = Vector( 0, -110.4, 78.1 ),
						Angles = Angle( 0, -90, 0 ),
						Bones = {
							["ford_96t_left"] = { Vector( 0, -20.9, 0 ), Angle( 0, -13.635, 0 ) },
							["ford_96t_right"] = { Vector( 0, 20.9, 0 ), Angle( 0, 13.635, 0 ) },
						}
					},
				},
			},

		}
	},
	{
		Category = "Spotlights",
		Options = {
			{
				Option = "Spotlights",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -39.4, 37, 63 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
					},
					{
						Component = "photon_whe_par46_right",
						Position = Vector( 39.4, 37, 63 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
					}
				},
			}
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "foglights", Value = 1 },
					{ BodyGroup = "console", Value = 1 },
					{ BodyGroup = "laptop", Value = 1 },
					{ BodyGroup = "pushbar", Value = 0 },
                    { BodyGroup = "interceptorbadge", Value = 1 },
				},
				SubMaterials = {
					{ Id = 3, Material = "photon/common/blank" },
					-- { Id = 1, Material = "photon/common/blank" },
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -126.67, 49 ),
						Angles = Angle( -12, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 120, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 120.7, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, 6.5, 14),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 16.55, 40.7 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 19.3, 42 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 13.85, 40.1 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necmdt.mdl",
						Position = Vector( 0, 26.5, 53 ),
						Angles = Angle( -5, 270, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 10.5, 20, 79 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                    {
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( -13.5, 113, 44 ),
						Angles = Angle( 0, 275, 180 ),
						Scale = 0.7,
					},
                     {
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( -19.5, -57, 84.8 ),
						Angles = Angle( -4, 0, 2 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 19.5, -57, 84.8 ),
						Angles = Angle( 4, 0, 2 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
		}
	},
}
