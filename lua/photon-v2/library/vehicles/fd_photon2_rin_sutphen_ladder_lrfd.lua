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
		Category = "Lightbar",
		Options = {
			{
				Option = "Whelen Rotabeam Freedom",
				Props = {
					{
						Model = "models/sentry/props/rotabar.mdl",
						Position = Vector( 0, 170, 99),
						Angles = Angle( 0, 0, 0 ),
						Scale = 0.85,
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
						Position = Vector( 42, 196.5, 57.7),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/rotabeam.mdl",
						Position = Vector( 34.4, 196.5, 57.7),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/rotabeam.mdl",
						Position = Vector( -42, 196.5, 57.7),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/rotabeam.mdl",
						Position = Vector( -34.4, 196.5, 57.7),
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
		Category = "Corner Lights",
		Options = {
			{
				Option = "Whelen 600 Super-LED",
				Components = {
					{
						Name = "@corner_600",
						Component = "creeper_whelen_600_superled",
						Position = Vector( 46.5, 191, 47.5 ),
						Angles = Angle( 0, -90, 0 ),
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
						Inherit = "@corner_600",
						Position = Vector( -46.5, 191, 47.5 ),
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
						Inherit = "@corner_600",
						Position = Vector( 46.2, 97, 98.5 ),
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
						Inherit = "@corner_600",
						Position = Vector( -46.2, 97, 98.5 ),
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
						Position = Vector( 39, -285.1, 64.2 ),
						Angles = Angle( -62, 180, 0 ),
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
						Position = Vector( -39, -285.1, 64.2 ),
						Angles = Angle( 62, 180, 0 ),
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
						Position = Vector( 32.6, -285.1, 63.5 ),
						Angles = Angle( -62, 180, 0 ),
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
						Inherit = "@rear_ion",
						Position = Vector( -32.6, -285.1, 63.5 ),
						Angles = Angle( 62, 180, 0 ),
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
		Category = "Side Ladder Lights",
		Options = {
			{
				Option = "Whelen Ions",
				Components = {
					{
						Inherit = "@rear_ion",
						Position = Vector( -48.3, -80, 48),
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
						Inherit = "@rear_ion",
						Position = Vector( 48.3, -80, 48),
						Angles = Angle( 0, 270, 0 ),
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
						Position = Vector( -48.3, -128, 48),
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
						Inherit = "@rear_ion",
						Position = Vector( 48.3, -128, 48),
						Angles = Angle( 0, 270, 0 ),
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
