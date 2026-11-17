if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Pierce Arrow Tanker LRFD"
VEHICLE.Vehicle		= "arrowxt_rescue_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Fire Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.BodyGroups = {
	["lightbar"] = 1,
	["lightbar_side"] = 1,
	["genericlights"] = 0,
}

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Tanker 9",
				SubMaterials = {
					{ Id = 12, Material = "rin/lrfd2/arrow_tanker/tanker_9" },
					{ Id = 15, Material = "rin/lrfd2/props/yellow" },
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
            {
				Option = "Whelen Freedom",
				Components = {
					{
                        Component = "lrfd_whelen_freedom70",
                        Position = Vector( 0, 140, 106.2),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.8,
					},
				}
			},
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
						Position = Vector( 29, 169.6, 57.45 ),
						Angles = Angle( 0, 0, 0 ),
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
								["MODE1"] = {},
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
						Position = Vector( -29, 169.6, 57.45 ),
						Angles = Angle( 0, 0, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {
									LightEMS = "STAGE3"
								}
							},
						}
					},
					{
						Inherit = "@front_600",
						Position = Vector( 36.2, 169.6, 57.45 ),
						Angles = Angle( 0, 0, 0 ),
						Segments = {
							LightEMS = {
								Frames = {
									[1] = "1:B 3:B"
								},
							},
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
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
						Position = Vector( -36.2, 169.6, 57.45 ),
						Angles = Angle( 0, 0, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
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
		Category = "Cab Lights",
		Options = {
			{
				Option = "Whelen 600 Super-LED",
				Components = {
					{
						Name = "@corner_600",
						Component = "creeper_whelen_600_superled",
						Position = Vector( 47.2, 95.5, 96.5 ),
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
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {
									LightEMS = "STAGE3:180"
								}
							},
						},
						SubMaterials = {
							[8] = "sentry/props/koitoflasher/glass",
						},
					},
					{
						Inherit = "@corner_600",
						Position = Vector( -47.2, 95.5, 96.5 ),
						Angles = Angle( 0, 90, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
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
		Category = "Side Lights",
		Options = {
			{
				Option = "Whelen 900 Super-LED",
				Components = {
					{
						Name = "@side_900",
						Component = "creeper_whelen_900_led",
						Position = Vector( 47.2, -32, 101 ),
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
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
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
						Position = Vector( 47.2, -230, 101 ),
						Angles = Angle( 0, -90, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {
									LightEMS = "STAGE3"
								}
							},
						}
					},
					{
						Inherit = "@side_900",
						Position = Vector( 47.2, -135, 101 ),
						Angles = Angle( 0, -90, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {
									LightEMS = "STAGE3:180"
								}
							},
						}
					},
					{
						Inherit = "@side_900",
						Position = Vector( -47.2, -32, 101 ),
						Angles = Angle( 0, 90, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {
									LightEMS = "STAGE3:180"
								}
							},
						}
					},
					{
						Inherit = "@side_900",
						Position = Vector( -47.2, -230, 101 ),
						Angles = Angle( 0, 90, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {
									LightEMS = "STAGE3:180"
								}
							},
						}
					},
					{
						Inherit = "@side_900",
						Position = Vector( -47.2, -135, 101 ),
						Angles = Angle( 0, 90, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
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
		Category = "Rear Lights",
		Options = {
			{
				Option = "Whelen 600 Super-LED",
				Components = {
					{
						Inherit = "@corner_600",
						Position = Vector( -40, -241.9, 85 ),
						Angles = Angle( 0, 180, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {
									LightEMS = "STAGE3:180"
								}
							},
						}
					},
					{
						Inherit = "@corner_600",
						Position = Vector( 40, -241.9, 85 ),
						Angles = Angle( 0, 180, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {
									LightEMS = "STAGE3"
								}
							},
						}
					},
					{
						Inherit = "@corner_600",
						Position = Vector( -40, -241.9, 65 ),
						Angles = Angle( 0, 180, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {},
								["MODE3"] = {
									LightEMS = "STAGE3"
								}
							},
						}
					},
					{
						Inherit = "@corner_600",
						Position = Vector( 40, -241.9, 65 ),
						Angles = Angle( 0, 180, 0 ),
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
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
		Category = "Rear Beacons",
		Options = {
			{
				Option = "Rear Beacons",
				Components = {
					{
						Component = "creeper_whelen_l31_lrfd",
						Position = Vector( -40, -246.7, 105 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						BodyGroups = {
							["mount"] = 3,
						},
						SubMaterials = {
							[11] = "sentry/props/koitoflasher/glass",
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
							},
						}
					},
					{
						Component = "creeper_whelen_l31_lrfd",
						Position = Vector( 40, -246.7, 105 ),
						Angles = Angle( 0, 180, 0 ),
						Scale = 1,
						Phase = 90,
						BodyGroups = {
							["mount"] = 3,
						},
						SubMaterials = {
							[11] = "sentry/props/koitoflasher/glass",
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
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
						Position = Vector( -48.3, 64.5, 106.8 ),
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
						Position = Vector( -48.25, -82, 106 ),
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
						Position = Vector( -48.25, -182, 106 ),
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
						Position = Vector( 48.3, 63.5, 106.8 ),
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
						Position = Vector( 48.25, -82, 106 ),
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
						Position = Vector( 48.25, -182, 106 ),
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
		Category = "Equipment",
		Options = {
			{
				Option = "Equipment",
				Props = {
					{
						Model = "models/sentry/props/q2b.mdl",
						Position = Vector( -30, 174, 39),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Model = "models/sentry/props/jp/antenna.mdl",
						Position = Vector( 0, 119, 102.5),
						Angles = Angle( 0, 30, 0 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( -28.8, -243.2, 27 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 25, 181.15, 27.5 ),
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
