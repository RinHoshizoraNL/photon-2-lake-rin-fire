if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2018 Ford F150 LRFD"
VEHICLE.Vehicle		= "smfordresponder"
VEHICLE.Category 	= "Photon 2: Lake Rin Fire Dept."
VEHICLE.Author		= "Rin Hoshizora"

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "temp test",
				SubMaterials = {
					{ Id = 29, Material = "rin/lrfd2/f150/test" }
				},
				BodyGroups = {
					{ BodyGroup = "bed", Value = 2 },
				},
			},
		}
	},
    {
		Category = "Lightbars",
		Options = {
			{
				Option = "Whelen Legacy",
				Components = {
				    {
						Component = "photon_whe_legacy_54",
						Position = Vector( 0, 6.5, 92 ),
						Angles = Angle( 2, 90, 0 ),
						Scale = 0.985,
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
                     {
						Component = "photon_whe_legacy_44",
						Position = Vector( 0, -105, 94 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.985,
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
		Category = "Trim Package",
		Options = {
			{
				Option = "Police Responder",
				BodyGroups = {
					{ BodyGroup = "wheels", Value = 0 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "front bumper", Value = 1 },
					{ BodyGroup = "rear bumper", Value = 0 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "responder badge", Value = 0 },
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
						Position = Vector( -37, 57, 71 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1
					},
					{
						Component = "photon_whe_par46_right",
						Position = Vector( 37, 57, 71 ),
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
				SubMaterials = {
					{ Id = 23, Material = "photon/common/blank" },
				},
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 8.5, 38, 60 ),
						Angles = Angle( 0, 31, 0 ),
						Scale = 1,
						Options = {
							Pole = 2,
							Base = -60,
							Screen = "rin/lrpd2/props/laptop_screen_lrpd",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					}
				},
				BodyGroups = {
					{ BodyGroup = "partition", Value = 1 },
					{ BodyGroup = "center console", Value = 0 },
					{ BodyGroup = "towbar", Value = 1 },
					{ BodyGroup = "pushbar", Value = 0 },
				},
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -131.2, 34 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 134, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 134.7, 26.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( 0, 32.4, 48.2 ),
						Angles = Angle( -56, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( 0, 35.3, 50.6 ),
						Angles = Angle( -56, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 28, 46.2 ),
						Angles = Angle( 0, 0, -56 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 10.5, 46.5, 85 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/smf15018_glass.mdl",
						Position = Vector( 0, 0, 0 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					},
                    {
						Model = "models/anemolis/props/f150_brushguard/anemolis_f150_brushguard.mdl",
						Position = Vector( 0, 133, 42 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1
					},
				}
			}
		}
	},
}