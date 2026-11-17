if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Sutphen Monarch Engine LRFD"
VEHICLE.Vehicle		= "sutphen_engine_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Fire Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Engine 45 Little Tokyo",
				SubMaterials = {
					{ Id = 14, Material = "rin/lrfd2/sutphen_engine/engine_45" },
				},
			},
			{
				Option = "Engine 86 Aqua City",
				SubMaterials = {
					{ Id = 14, Material = "rin/lrfd2/sutphen_engine/engine_86" },
				},
			},
		}
	},
	{
		Category = "Standard",
		Options = {
			{
				Option = "Vehicle Lighting",
				Components = {
					{
						Component = "samm_sut_eng_lights",
					}
				}
			}
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
						Position = Vector( 0, 174.7, 98.7),
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
						Position = Vector( 41.5, 195.9, 58.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/rotabeam.mdl",
						Position = Vector( 33.5, 195.9, 58.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/rotabeam.mdl",
						Position = Vector( -41.5, 195.9, 58.5),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						SubMaterials = {
							[3] = "sentry/shared/glass",
						},
					},
					{
						Model = "models/sentry/props/rotabeam.mdl",
						Position = Vector( -33.5, 195.9, 58.5),
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
						Position = Vector( 45.8, 190.5, 48.4 ),
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
						Position = Vector( -45.8, 190.5, 48.4 ),
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
		Category = "Side Lights",
		Options = {
			{
				Option = "Whelen 900 Super-LED",
				Components = {
					{
						Name = "@side_900",
						Component = "creeper_whelen_900_led",
						Position = Vector( 46.8, -22, 101 ),
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
						Inherit = "@side_900",
						Position = Vector( 46.8, -153, 101 ),
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
						Position = Vector( 45.4, 70.5, 101 ),
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
						Position = Vector( -46.8, -22, 101 ),
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
						Position = Vector( -46.8, -153, 101 ),
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
						Position = Vector( -45.4, 70.5, 101 ),
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
				}
			},
		}
	},
	{
		Category = "Rear Beacons",
		Options = {
			{
				Option = "Whelen L31 Beacons",
				Components = {
					{
						Component = "creeper_whelen_l31_lrfd",
						Position = Vector( 40.5, -170.1, 110.5 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						BodyGroups = {
							["mount"] = 3,
						},
					},
					{
						Component = "creeper_whelen_l31_lrfd",
						Position = Vector( -40.5, -170.1, 110.5 ),
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
						Position = Vector( 40, -165.5, 90 ),
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
						Position = Vector( -40, -165.5, 90 ),
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
						Inherit = "@rear_ion",
						Position = Vector( 40, -165.5, 70 ),
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
						Inherit = "@rear_ion",
						Position = Vector( -40, -165.5, 70 ),
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
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, 119, 112),
						Angles = Angle( 0, 30, 0 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 32, -165.6, 28.5 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -30, 210.5, 24.5 ),
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
