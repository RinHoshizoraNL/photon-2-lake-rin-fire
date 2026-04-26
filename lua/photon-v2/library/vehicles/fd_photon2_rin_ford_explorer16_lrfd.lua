if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2016 Ford Explorer LRFD"
VEHICLE.Vehicle		= "sm16fpiu"
VEHICLE.Category 	= "Photon 2: Lake Rin Fire Dept."
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.SubMaterials = {
	[5] = "photon/common/blank",
	[28] = "photon/common/blank",
}

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Battalion 13 Lighthouse Point",
				SubMaterials = {
					{ Id = 15, Material = "rin/lrfd2/explorer16/battalion_13" }
				},
                BodyGroups = {
					{ BodyGroup = "pushbar", Value = 0 },
                    { BodyGroup = "rear seats", Value = 0 },
                    { BodyGroup = "partition", Value = 1 },
					{ BodyGroup = "foglights", Value = 0 },
					{ BodyGroup = "pi badge", Value = 1 },
				},
                Props = {
				{
						Model = "models/schmal/sm_fpiu16_glass.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, -90, 0 ),
						SubMaterials = {
							[1] = "schmal/liveries/sm_fpiu16/lvmpd_modulate",
							[2] = "rin/lrfd2/explorer16/glass_13",
						}
					}
				}
			},
		}
	},
    	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Freedom",
				Components = {
					{
						Component = "lrfd_photon_whe_freedom",
						Position = Vector( 0, -12, 88.4 ),
						Angles = Angle( 1.7, 90, 0 ),
						Scale = 1.02
					}
				}
			}
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
						Position = Vector( -17, 115.2, 32.7),
						Angles = Angle( 0, 7, 0 ),
						Scale = 1,
						Phase = 180,
					},
					{
						Component = "photon_whe_ion_surface",
						Position = Vector( 17, 115.2, 32.7),
						Angles = Angle( 0, -7, 0 ),
						Scale = 1
					},
				}
			}
		}
	},
	{
		Category = "Spoiler Lights",
		Options = {
            {
				Option = "Spoiler Lights",
				Components = {
					{
						Component = "photon_sos_ford96t",
						Position = Vector( 0, -104, 78.7),
						Angles = Angle( 0, -90, 0 ),
						Bones = {
							["ford_96t_left"] = { Vector( 0, -17, 0 ), Angle( -1, -11.5, 0 ) },
							["ford_96t_right"] = { Vector( 0, 17, 0 ), Angle( 1, 11.5, 0 ) },
						}
					},
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
					{ BodyGroup = "wheels", Value = 1 },
				},
			},
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "wheels", Value = 0 },
				},
			},
		}
	},
    {
		Category = "Spotlights",
		Options = {
			{
				Option = "PAR46 LED",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -39, 41, 62 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
					},
					{
						Component = "photon_whe_par46_right",
						Position = Vector( 39, 41, 62 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
					}
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
					{ BodyGroup = "bobblehead", Value = 6 },
				},
                Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 7.8, 21.5, 48 ),
						Angles = Angle( 0, 31, 0 ),
						Scale = 0.9,
						Options = {
							Pole = 0,
							Base = -60,
							Screen = "rin/lrpd2/props/laptop_screen_lrpd",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -120.5, 50 ),
						Angles = Angle( -18, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1.06,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( 0, 15, 36.5 ),
						Angles = Angle( -58, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 40, 58.85 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 17.5, 39 ),
						Angles = Angle( 0, 0, -58 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 8, 30, 75.2 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
                    {
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( -19, -55, 84.5 ),
						Angles = Angle( -4.5, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 19, -55, 84.5 ),
						Angles = Angle( 4.5, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
		}
	},
}