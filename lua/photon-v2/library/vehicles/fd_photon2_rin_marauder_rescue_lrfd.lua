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
		Category = "Lightbar",
		Options = {
			{
				Option = "Whelen Rotabeam Freedom",
				Props = {
					{
						Model = "models/sentry/props/rotabar.mdl",
						Position = Vector( 0, 198, 103.1),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.9,
					},
				}
			}
		}
	},
	{
		Category = "Front Lights",
		Options = {
			{
				Option = "Whelen Rotabeams",
				Props = {
					{
						Model = "models/sentry/props/rotabeam.mdl",
						Position = Vector( 27.4, 218.3, 61.1),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/rotabeam.mdl",
						Position = Vector( -27.4, 218.3, 61.1),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[3] = "sentry/shared/glass",
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
				Option = "Whelen 900",
				Components = {
					{
						Name = "@side_900",
						Component = "creeper_whelen_900_led",
						Position = Vector( -44.7, 122, 102 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Segments = {
							LightEMS = {
								Frames = {
									[1] = "1:R 3:R"
								},
								Sequences = {
									["STAGE3"] = sequence():TripleFlash( 1, 0 ):SetTiming( 1/20 ),
								}
							},
							["DVI"] = {
								Frames = {
									[0] = "[~R*0.5] 1 3",
									[1] = "1:~R 3:~R",
								},
								Sequences = {
									["ON"] = sequence():Sequential(0, 1):Stretch(8)
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
						Inherit = "@side_900",
						Position = Vector( -44.7, -7.8, 102 ),
						Angles = Angle( 0, 90, 0 ),
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
					{
						Inherit = "@side_900",
						Position = Vector( -44.7, -116.1, 102 ),
						Angles = Angle( 0, 90, 0 ),
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
						Inherit = "@side_900",
						Position = Vector( 44.7, 122, 102 ),
						Angles = Angle( 0, -90, 0 ),
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
					{
						Inherit = "@side_900",
						Position = Vector( 44.7, -7.8, 102 ),
						Angles = Angle( 0, -90, 0 ),
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
						Inherit = "@side_900",
						Position = Vector( 44.7, -116.1, 102 ),
						Angles = Angle( 0, -90, 0 ),
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
		Category = "Rear Flashers",
		Options = {
			{
				Option = "Whelen 900",
				Components = {
					{
						Inherit = "@side_900",
						Position = Vector( -34, -150.4, 102 ),
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
					{
						Inherit = "@side_900",
						Position = Vector( 34, -150.4, 102 ),
						Angles = Angle( 0, 180, 0 ),
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
