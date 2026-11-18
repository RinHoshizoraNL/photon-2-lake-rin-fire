if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2018 Ford F150 LRFD Battalion"
VEHICLE.Vehicle		= "smfordresponder"
VEHICLE.Category 	= "Photon 2: Lake Rin Fire Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Battalion 69",
				SubMaterials = {
					{ Id = 29, Material = "rin/lrfd2/f150/battalion_69" }
				},
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
						Position = Vector( 0, 6.5, 95.5 ),
						Angles = Angle( 1.5, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[2] = "sentry/shared/glass",
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									DVI = "ON"
								},
								["MODE2"] = {},
								["MODE3"] = {
									All = "CODE3"
								}
							},
						}
					}
				}
			}
		}
	},
	{
		Category = "Rear Lightbar",
		Options = {
			{
				Option = "Dominator",
				Components = {
					{
						Component = "photon_whe_dominator_8",
						Position = Vector( 0, -120, 95.05 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1.1,
						States = {
							[1] = "A",
							[2] = "A",
							[3] = "A",
							[4] = "A",
							[5] = "A",
							[6] = "A",
							[7] = "R",
							[8] = "R",
						},
						Segments = {
							LightEMS = {
								Frames = {
									[1] = "7:R 5:R 4:R 2:R",
									[2] = "8:R 6:R 3:R 1:R"
								},
								Sequences = {
									["STAGE3"] = sequence():TripleFlash( 1, 2 ):SetTiming( 1/20 ),
								}
							},
							["DVI"] = {
								Frames = {
									[0] = "[~R*0.3] 1 2 3 4 5 6 7 8",
									[1] = "7:~R 5:~R 4:~R 2:~R",
									[2] = "8:~R 6:~R 3:~R 1:~R"
								},
								Sequences = {
									["ON"] = sequence():Sequential(1, 2):Stretch(8)
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
						},
						BodyGroups = {
							["bracket"] = 1,
							["wires"] = 1,
						},
					}
				}
			}
		}
	},
	{
		Category = "Grille Lights",
		Options = {
			{
				Option = "Whelen Ion",
				Components = {
					{
						Name = "@grille_ion",
						Component = "photon_whe_ion_surface",
						Position = Vector( 10.35, 130, 44.5 ),
						Angles = Angle( 0, -6, 0 ),
						Scale = 0.85,
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
									[0] = "[~R*0.3] 1",
									[1] = "1:~R",
									[2] = "[~B*0.3] 1",
									[3] = "1:~B",
								},
								Sequences = {
									["ON"] = sequence():Sequential(0, 1):Stretch(8),
									["ONB"] = sequence():Sequential(2, 3):Stretch(8),
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
						Inherit = "@grille_ion",
						Position = Vector( -10.35, 130, 44.5 ),
						Angles = Angle( 0, 6, 0 ),
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
						Inherit = "@grille_ion",
						Position = Vector( 17.9, 128.9, 44.5 ),
						Angles = Angle( 0, -10, 0 ),
						States = {
							[1] = "B",
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									DVI = "ONB:180"
								},
								["MODE2"] = {},
								["MODE3"] = {
									LightEMS = "STAGE3:180"
								}
							},
						}
					},
					{
						Inherit = "@grille_ion",
						Position = Vector( -17.9, 128.9, 44.5 ),
						Angles = Angle( 0, 10, 0 ),
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
				Option = "Whelen Ion",
				Components = {
					{
						Inherit = "@grille_ion",
						Position = Vector( -45, 72, 53 ),
						Angles = Angle( 1, 88, 3 ),
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
						Inherit = "@grille_ion",
						Position = Vector( 45, 72, 53 ),
						Angles = Angle( -1, -88, 3 ),
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
						Inherit = "@grille_ion",
						Position = Vector( -44.7, -112, 57.5 ),
						Angles = Angle( 1, 92, 4 ),
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
						Inherit = "@grille_ion",
						Position = Vector( 44.7, -112, 57.5 ),
						Angles = Angle( -1, -92, 4 ),
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
		Category = "Trim Package",
		Options = {
			{
				Option = "Base",
				BodyGroups = {
					{ BodyGroup = "wheels", Value = 2 },
					{ BodyGroup = "grille", Value = 2 },
					{ BodyGroup = "front bumper", Value = 5 },
					{ BodyGroup = "rear bumper", Value = 2 },
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
					{ BodyGroup = "bed", Value = 2 },
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
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 0, -60, 91.5 ),
						Angles = Angle( 0, 0, -2 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 0, -95, 92.5 ),
						Angles = Angle( 0, 0, -1.5 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
		}
	},
}