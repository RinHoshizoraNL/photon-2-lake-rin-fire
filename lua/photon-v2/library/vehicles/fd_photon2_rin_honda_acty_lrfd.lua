if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "1994 Honda Acty LRFD Mini Attacker"
VEHICLE.Vehicle		= "acty_crawler_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Fire Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Fire Marshal",
				SubMaterials = {
					{ Id = 17, Material = "rin/lrfd2/acty/park" },
					{ Id = 30, Material = "rin/lrfd2/acty/rim_yellow" }
				},
			},
		}
	},
	{
		Category = "Beacons",
		Options = {
			{
				Option = "Whelen L31 Beacons",
				Components = {
					{
						Component = "creeper_whelen_l31_lrfd",
						Position = Vector( 15, 6.5, 74.3 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						BodyGroups = {
							["mount"] = 3,
						},
					},
					{
						Component = "creeper_whelen_l31_lrfd",
						Position = Vector( -15, 6.5, 74.3 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						Phase = 90,
						BodyGroups = {
							["mount"] = 3,
						},
					},
				}
			},
		}
	},
	{
		Category = "Rear Lights",
		Options = {
			{
				Option = "Whelen Ion",
				Components = {
					{
						Name = "@rear_ion",
						Component = "photon_whe_ion_surface",
						Position = Vector( 23.7, -65.7, 47 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 0.9,
						States = { "R" },
						Segments = {
							LightEMS = {
								Frames = {
									[1] = "Light"
								},
								Sequences = {
									["STAGE3"] = sequence():TripleFlash( 1, 0 ):SetTiming( 1/20 ),
								}
							},
							["DVI"] = {
								Frames = {
									[0] = "[~R*0.5] 1",
									[1] = "1:~R",
								},
								Sequences = {
									["ON"] = sequence():Sequential(0, 1):Stretch(8),
								}
							},
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									DVI = "ON"
								},
								["MODE2"] = {},
								["MODE3"] = {
									LightEMS = "STAGE3"
								}
							},
						}
					},
					{
						Inherit = "@rear_ion",
						Position = Vector( -23.7, -65.7, 47 ),
						Angles = Angle( 0, 180, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									DVI = "ON:180"
								},
								["MODE2"] = {},
								["MODE3"] = {
									LightEMS = "STAGE3:180"
								}
							},
						}
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
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -69.1, 18 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 11, 70.4, 20.7 ),
						Angles = Angle( 1.5, 88, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 0, 11.85, 72 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/samm/retroskid/retroskid.mdl",
						Position = Vector( 0, 29, -8 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector( 0.75, 0.8, 0.8 ),
						SubMaterials = {
							[7] = "rin/lrfd2/props/yellow",
							[9] = "sentry/shared/env_cubemap_model",
						},
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( 0, 52, 46.5 ),
						Angles = Angle( 2, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( -0.8, 51.5, 34.4 ),
						Angles = Angle( 0, 0, -40 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
		}
	},
}