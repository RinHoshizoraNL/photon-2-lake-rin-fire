if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2014 Ford F550 LRFD Rescue"
VEHICLE.Vehicle		= "f550_rescue_sm"
VEHICLE.Category 	= "Photon 2: Lake Rin Fire Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Scuba Rescue",
				SubMaterials = {
					{ Id = 2, Material = "rin/lrfd2/f550/scuba_13" }
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
						Position = Vector( 0, 29, 96.7 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									All = "CODE3"
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
		Category = "Front Lights",
		Options = {
			{
				Option = "Whelen 600 Super-LED",
				Components = {
					{
						Name = "@front_600",
						Component = "creeper_whelen_600_superled",
						Position = Vector( 15, 155, 43.1 ),
						Angles = Angle( 0, -4, 0 ),
						Scale = 0.8,
						Segments = {
							LightEMS = {
								Frames = {
									[1] = "1:R 3:R"
								},
								Sequences = {
									["STAGE3"] = sequence():TripleFlash( 1, 0 ):SetTiming( 1/20 ),
								}
							},
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									LightEMS = "STAGE3:180"
								},
								["MODE2"] = {},
								["MODE3"] = {
									LightEMS = "STAGE3"
								}
							},
						},
						SubMaterials = {
							[8] = "sentry/props/koitoflasher/glass",
						},
					},
					{
						Inherit = "@front_600",
						Position = Vector( -15, 155, 43.1 ),
						Angles = Angle( 0, 4, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									LightEMS = "STAGE3:180"
								},
								["MODE2"] = {},
								["MODE3"] = {
									LightEMS = "STAGE3:180"
								}
							},
						}
					},
					{
						Inherit = "@front_600",
						Position = Vector( 15, 155, 52.2 ),
						Angles = Angle( 0, -4, 0 ),
						Segments = {
							LightEMS = {
								Frames = {
									[1] = "1:B 3:B"
								},
							},
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									LightEMS = "STAGE3:180"
								},
								["MODE2"] = {},
								["MODE3"] = {
									LightEMS = "STAGE3:180"
								}
							},
						},
						SubMaterials = {
							[8] = "sentry/props/koitoflasher/glass_blue",
						},
					},
					{
						Inherit = "@front_600",
						Position = Vector( -15, 155, 52.2 ),
						Angles = Angle( 0, 4, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									LightEMS = "STAGE3:180"
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
		Category = "Left Lights",
		Options = {
			{
				Option = "Whelen 900 LED",
				Components = {
					{
						Name = "@side_900",
						Component = "creeper_whelen_900_led",
						Position = Vector( -55.5, -42.5, 94 ),
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
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									LightEMS = "STAGE3"
								},
								["MODE2"] = {},
								["MODE3"] = {
									LightEMS = "STAGE3"
								}
							},
						},
						SubMaterials = {
							[6] = "sentry/props/koitoflasher/glass",
						},
					},
					{
						Inherit = "@side_900",
						Position = Vector( -55.5, -144, 94 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = {
									LightEMS = "STAGE3:180"
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
		Category = "Right Lights",
		Options = {
			{
				Option = "Whelen 900 LED",
				Components = {
					{
						Inherit = "@side_900",
						Position = Vector( 55.5, -42.5, 94 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									LightEMS = "STAGE3:180"
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
						Position = Vector( 55.5, -144, 94 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									LightEMS = "STAGE3"
								},
								["MODE2"] = {},
								["MODE3"] = {
									LightEMS = "STAGE3"
								}
							},
						}
					},
				}
			}
		}
	},
	{
		Category = "Rear Lights",
		Options = {
			{
				Option = "Whelen 900 LED",
				Components = {
					{
						Inherit = "@side_900",
						Position = Vector( 25, -167.8, 96 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									LightEMS = "STAGE3:180"
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
						Position = Vector( -25, -167.8, 96 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									LightEMS = "STAGE3"
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
						Position = Vector( 40, -167.8, 75 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									LightEMS = "STAGE3"
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
						Position = Vector( -40, -167.8, 75 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									LightEMS = "STAGE3:180"
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
		Category = "Left Scene Lights",
		Options = {
			{
				Option = "Left Scene Lights",
				Components = {
					{
						Component = "samm_illum_bar",
						Position = Vector( -56.75, -42, 100 ),
						Angles = Angle( 0, 90, -10 ),
						Scale = 1,
						Inputs = {
							["Emergency.SceneRight"] = {
								["ON"] = {}
							},
							["Emergency.SceneForward"] = {
								["ON"] = {}
							},
						}
					},
					{
						Component = "samm_illum_bar",
						Position = Vector( -56.75, -92, 100 ),
						Angles = Angle( 0, 90, -10 ),
						Scale = 1,
						Inputs = {
							["Emergency.SceneRight"] = {
								["ON"] = {}
							},
							["Emergency.SceneForward"] = {
								["ON"] = {}
							},
						}
					},
					{
						Component = "samm_illum_bar",
						Position = Vector( -56.75, -143, 100 ),
						Angles = Angle( 0, 90, -10 ),
						Scale = 1,
						Inputs = {
							["Emergency.SceneRight"] = {
								["ON"] = {}
							},
							["Emergency.SceneForward"] = {
								["ON"] = {}
							},
						}
					},
				}
			},
		}
	},
	{
		Category = "Right Scene Lights",
		Options = {
			{
				Option = "Right Scene Lights",
				Components = {
					{
						Component = "samm_illum_bar",
						Position = Vector( 56.75, -42, 100 ),
						Angles = Angle( 0, -90, -10 ),
						Scale = 1,
						Inputs = {
							["Emergency.SceneLeft"] = {
								["ON"] = {}
							},
							["Emergency.SceneForward"] = {
								["ON"] = {}
							},
						}
					},
					{
						Component = "samm_illum_bar",
						Position = Vector( 56.75, -92, 100 ),
						Angles = Angle( 0, -90, -10 ),
						Scale = 1,
						Inputs = {
							["Emergency.SceneLeft"] = {
								["ON"] = {}
							},
							["Emergency.SceneForward"] = {
								["ON"] = {}
							},
						}
					},
					{
						Component = "samm_illum_bar",
						Position = Vector( 56.75, -143, 100 ),
						Angles = Angle( 0, -90, -10 ),
						Scale = 1,
						Inputs = {
							["Emergency.SceneLeft"] = {
								["ON"] = {}
							},
							["Emergency.SceneForward"] = {
								["ON"] = {}
							},
						}
					},
				}
			},
		}
	},
	{
		Category = "Tail Lights",
		Options = {
			{
				Option = "Tail Lights",
				Components = {
					{
						Component = "creeper_whelen_600_btt",
						Position = Vector( -39, -167.7, 55 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					},
					{
						Component = "creeper_whelen_600_turn_left",
						Position = Vector( -39, -167.7, 48 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					},
					{
						Component = "creeper_whelen_600_rev",
						Position = Vector( -39, -167.7, 41 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					},
					{
						Component = "creeper_whelen_600_btt",
						Position = Vector( 39, -167.7, 55 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					},
					{
						Component = "creeper_whelen_600_turn_right",
						Position = Vector( 39, -167.7, 48 ),
						Angles = Angle( 180, 180, 0 ),
						Scale = 1,
					},
					{
						Component = "creeper_whelen_600_rev",
						Position = Vector( 39, -167.7, 41 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
					},
				}
			},
		}
	},
	{
		Category = "Police Equipment",
		Options = {
			{
				Option = "Police Equipment",
				BodyGroups = {
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "bumper", Value = 1 },
				},	
				Props = {
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -167.8, 31 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 158, 29.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 158.7, 29.5 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.99,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, 5, 92.8),
						Angles = Angle( 0, 30, 0 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, -90, 104.75),
						Angles = Angle( 0, 30, 0 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
					{
						Model = "models/schmal/antenna_vhf_1.mdl",
						Position = Vector( 45.5, 146, 35.5),
						Angles = Angle( 0, 20, 0 ),
						Scale = 1,
					},
					{
						Model = "models/schmal/antenna_vhf_1.mdl",
						Position = Vector( -45.5, 146, 35.5),
						Angles = Angle( 0, 20, 0 ),
						Scale = 1,
					},
					{
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( -12, 154.5, 27.5),
						Angles = Angle( 0, 274, 0 ),
						Scale = 1,
					},
					{
						Model = "models/sentry/props/jp/patlitespeaker.mdl",
						Position = Vector( 12, 154.5, 27.5),
						Angles = Angle( 0, 266, 0 ),
						Scale = 1,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 82, 69.7),
						Angles = Angle( 0, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necmdt.mdl",
						Position = Vector( 0, 74, 60 ),
						Angles = Angle( -5, 270, 0 ),
						Scale = 0.8,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
				}
			}
		}
	},
}
