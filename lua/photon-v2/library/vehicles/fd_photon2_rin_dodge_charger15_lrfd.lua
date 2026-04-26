if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2015 Dodge Charger LRFD"
VEHICLE.Vehicle		= "15charger_fm2_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Fire Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Siren = {
	{
		T1 = "whelen_epsilon/wail_alt",
		T2 = "whelen_epsilon/yelp_alt",
		T3 = "whelen_epsilon/woop",
		T4 = "whelen_epsilon/warb",
		T5 = "whelen_epsilon/hilo",
		AIR = "whelen_epsilon/airhorn",
		MAN = "whelen_epsilon/wail_alt"
	}
}

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Fire Marshal",
				SubMaterials = {
					{ Id = 4, Material = "rin/lrfd2/charger15/marshal" }
				},
			},
		}
	},
	{
		Category = "Wheels",
		Options = {
			{
				Option = "AWD Hubcaps",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 4 },
					{ BodyGroup = "wheels_rear", Value = 4 },
					{ BodyGroup = "badge", Value = 1 }
				},
			},
			{
				Option = "AWD Hubcaps Black",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 5 },
					{ BodyGroup = "wheels_rear", Value = 5 },
					{ BodyGroup = "badge", Value = 1 }
				},
			},
			{
				Option = "AWD Steelies",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 3 },
					{ BodyGroup = "wheels_rear", Value = 3 },
					{ BodyGroup = "badge", Value = 1 }
				},
			},
			{
				Option = "RWD Hubcaps",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 1 },
					{ BodyGroup = "wheels_rear", Value = 1 },
					{ BodyGroup = "badge", Value = 0 }
				},
			},
			{
				Option = "RWD Hubcaps Black",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 2 },
					{ BodyGroup = "wheels_rear", Value = 2 },
					{ BodyGroup = "badge", Value = 0 }
				},
			},
			{
				Option = "RWD Steelies",
				BodyGroups = {
					{ BodyGroup = "wheels_front", Value = 0 },
					{ BodyGroup = "wheels_rear", Value = 0 },
					{ BodyGroup = "badge", Value = 0 }
				},
			}
		}
	},
	{
		Category = "Spotlights",
		Options = {
			{
				Option = "Pillar Spotlights",
				Components = {
					{
						Component = "photon_whe_par46_left",
						Position = Vector( -34.5, 28, 58 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_whe_par46_right",
						Position = Vector( 34.5, 28, 58 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Inputs = {
							-- Clear the default illumination mode
							["Emergency.SceneForward"] = { ["ON"] = {} },
						}
					}
				}
			}
		}
	},
	{
		Category = "Standard",
		Options = {
			{
				Option = "Option",
				Components = {
					{
						Component = "photon_standard_sgmchar15",
						Segments = {
							TailFlasher = {
								Frames = {
									[2] = "13 14",
									[3] = "15 16"
								},
								Sequences = {
									["STAGE3"] = sequence():Alternate( 2, 3 ):SetVariableTiming( 1/14, 1/6, 0.75 )
								}
							}
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE2"] = {},
								["MODE3"] = {
									WigWag = "WIGWAG",
									TailFlasher = "STAGE3"
								}
							},
							["Emergency.Cut"] = {
								["REAR"] = {
									TailFlasher = "OFF"
								}
							}
						}
					}
				}
			}
		}
	},
	{
		Category = "Forward Facing Interior Lightbar",
		Options = {
			{
				Option = "Inner Edge XLP",
				Components = {
					{
						Component = "photon_whe_inneredgexlp",
						Position = Vector( 0, 19, 66.5 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Options = {
							Offset = 1.15
						},
						RenderMode = RENDERMODE_NONE,
						StateMap = "[W] 1 7 13 14 15 16 17 18 19 20 21 22 [R] 2 3 4 5 6 [R] 8 9 10 11 12",
						Segments = {
							Light = {
								Frames = {
									[1] = "1 2 3 4 5 6 7 8 9 10 11 12",
									[2] = "7 2 3 4 5 6",
									[3] = "1 8 9 10 11 12",
									[4] = "[~R] 2 3 4 5 6",
									[5] = "[~R] 8 9 10 11 12", 
									[6] = "[W] 1 7 13 14 15 16 17 18 19 20 21 22",
								},
								Sequences = {
									STAGE2 = sequence()
										:FlashHold( 3, 2, 6 ):FlashHold( 2, 2, 6 )
									,
								}
							},
							Marker = {
								Frames = {
									[1] = "[R*0.8] 5 6 11 12"
								},
								Sequences = {
									["ON"] = { 1 }
								}
							}
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {
									Light = "STAGE2"
								},
								["MODE3"] = {
									Takedown = "ALT",
									Inner = "FLASH:90",
									Center = "FLASH:45",
									Outer = "FLASH:0",
								}
							},
							["Emergency.Marker"] = {
								["ON"] = { Marker = "ON" }
							}
						}
					},
				}
			}
		}
	},
	{
		Category = "Rear Facing Interior Lightbar",
		Options = {
			{
				Option = "Dominator",
				Components = {
					{
						Component = "photon_whe_dominator_8",
						Position = Vector( 0, -85.5, 58.6 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						BodyGroups = {
							["Bracket"] = 1,
							["Wires"] = 1
						},
						RenderMode = RENDERMODE_NONE,
						StateMap = "[R] 1 2 3 4 5 6 7 8",
						Segments = {
							All = {
								Frames = {
									[1] = "1 2 3 4 5 6 7 8",
									-- SWOOSHY AHH
									-- 7 5 3 1 2 4 6 8
									[2] = "7",
									[3] = "7 5",
									[4] = "5 3",
									[5] = "3 1",
									[6] = "1 2",
									[7] = "2 4",
									[8] = "4 6",
									[9] = "6 8",
									[10] = "8",
									[11] = "7 3 2 6",
									[12] = "5 1 4 8",
									[13] = "Left",
									[14] = "Right"
								},
								Sequences = {
									ALL = { 1 },
									STAGE1 = sequence()
										:Add( 2,3,4,5,6,7,8,9,10,9,8,7,6,5,4,3 )
										:SetTiming(1/16),
									STAGE2 = sequence()
										:FlashHold( 13, 4, 8 ):FlashHold( 14, 4, 8 ):FlashHold( 13, 4, 8 ):FlashHold( 14, 4, 8 ):FlashHold( 13, 4, 8 ):FlashHold( 14, 4, 8 )
										:FlashHold( 11, 4, 8 ):FlashHold( 12, 4, 8 ):FlashHold( 11, 4, 8 ):FlashHold( 12, 4, 8 ):FlashHold( 11, 4, 8 ):FlashHold( 12, 4, 8 )
										:SetTiming(1/32),
									STAGE3 = sequence()
										:Add( 2,3,4,5,6,7,8,9,10,9,8,7,6,5,4,3 ):Do(2)
										:TripleFlash( 11, 12, 24 ):Do(6)
										:TripleFlash( 13, 14, 24 ):Do(6)
										:Alternate( 13, 14, 4 ):Do(4)
										:Add( 2,3,4,5,6,7,8,9,10,9,8,7,6,5,4,3 ):Do(2)
										:Alternate( 11, 12, 4 ):Do(4)
										:Alternate( 13, 14, 4 ):Do(8)
										:FlashHold( 13, 4, 4 )
										:FlashHold( 14, 4, 4 )
										:FlashHold( 13, 4, 4 )
										:FlashHold( 14, 4, 4 )
										:QuadFlash( 11, 12, 24 ):Do(2)
										:SetTiming(1/32),
								}
							}
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = { All = "STAGE1" },
								["MODE2"] = { All = "STAGE2" },
								["MODE3"] = { All = "STAGE3" }
							}
						}
					},
				}
			}
		}
	},
	{
		Category = "Rear Facing Interior Lights",
		Options = {
			{
				Option = "Whelen Ions",
				Components = {
					{
						Name = "@rear_ion_spitfire",
						Component = "photon_whe_ion_spitfire",
						Position = Vector( 9.5, -58.5, 68 ),
						Angles = Angle( -2, 180, 0 ),
						Scale = 0.75,
						Bones = {
							["suction_mount"] = { Vector( 0, 0, 0), Angle( 0, 0, 0 ), 1 }
						},
						RenderMode = RENDERMODE_NONE,
						States = {
							[1] = "R",
							[2] = "B"
						},
						Segments = {
							Light = {
								Frames = {
									[1] = "[1] Light",
									[2] = "[2] Light"
								},
								Sequences = {
									["STAGE1"] = sequence()
										:Add( 2,2,2,0 ):AppendPhaseGap():Add( 1,1,1,0 ):AppendPhaseGap()
										:SetTiming( 1/12 )
									,
									["STAGE2"] = sequence()
										:FlashHold( 1, 2, 8 )
										:Hold(10)
										:FlashHold( 2, 2, 8 )
										:Hold(10)
									,
									["STAGE3"] = sequence()
										:FlashHold( 1, 2, 3 )
										:Hold(5)
										:FlashHold( 2, 2, 3 )
										:Hold(5)
									,
								}
							},
							Marker = {
								Frames = {
									[1] = "[R*0.6] Light",
								},
								Sequences = {
									["ON"] = { 1 }
								}
							}
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									Light = "STAGE1"
								},
								["MODE2"] = {
									Light = "STAGE2"
								},
								["MODE3"] = {
									Light = "STAGE3"
								}
							},
							["Emergency.Marker"] = {
								["ON"] = { Marker = "ON" }
							}
						}
					},
					{
						Inherit = "@rear_ion_spitfire",
						Position = Vector( -9.5, -58.5, 68 ),
						Angles = Angle( 2, 180, 0 ),
						States = {
							[1] = "A",
							[2] = "R"
						},
						Phase = 90
					}
				}
			}
		}
	},
	{
		Category = "Side Facing Exterior Lights",
		Options = {
			{
				Option = "Whelen Ions",
				Props = {
					-- MOUNTS
					{
						Name = "@side_ion_mount",
						Model = "models/props_phx/construct/plastic/plastic_panel1x1.mdl",
						Position = Vector( -30.53, -20.5, 68.98 ),
						Angles = Angle( 40, -1, 1.3 ),
						Scale = Vector( 0.07, 0.145, 0.06 ),
						SubMaterials = { 
							[0] = "sentry/15charger_fm2/black_chrome",
							[1] = "sentry/15charger_fm2/black_chrome"
						}
					},
					{
						Inherit = "@side_ion_mount",
						Name = "@side_ion_mount_facing",
						Position = Vector( -30.5-1.31, -20.5+0.023, 68.98+1.96 ),
						Angles = Angle( 90, -1.8, 00 ),
						Scale = Vector( 0.0393, 0.145, 0.06 )
					},
					{
						Inherit = "@side_ion_mount",
						Position = Vector( 30.53, -20.5, 68.98 ),
						Angles = Angle( -40, 1, 1.3 )
					},
					{
						Inherit = "@side_ion_mount_facing",
						Position = Vector( 30.5+1.1, -20.5+0.023, 68.98+1.96 ),
						Angles = Angle( 90, 1.8, 0 )
					}
				},
				Components = {
					{
						Name = "@side_ion",
						Component = "photon_whe_ion_surface",
						Position = Vector( -30.5-1.31+0.03, -20.5+0.023, 68.98+1.96 ),
						Angles = Angle( 0, 90-1.8, 0 ),
						Scale = 0.75,
						Segments = {
							Light = {
								Frames = {
									[1] = "[R] Light",
									[2] = "[W] Light",
									[3] = "[R] Light",
									[4] = "[OFF] Light"
								},
								Sequences = {
									["STAGE3"] = sequence()
										:QuadFlash( 1, 0 ):QuadFlash( 2, 0 )
									,
									["OFF"] = { 2 },
								}
							},
							Marker = {
								Frames = {
									[1] = "[R*0.6] Light",
								},
								Sequences = {
									["ON"] = { 1 }
								}
							},
							Takedown = {
								Frames = {
									[1] = "[W] Light",
								},
								Sequences = {
									["ON"] = { 1 }
								}
							}
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									--Light = "STEADY_FLASH"
								},
								["MODE2"] = {
									Light = "ALT_MED"
								},
								["MODE3"] = {
									Light = "STAGE3"
								}
							},
							["Emergency.SceneLeft"] = {
								["ON"] = { Takedown = "ON" }
							},
							["Emergency.Marker"] = {
								["ON"] = { Marker = "ON" }
							}
						}
					},
					{
						Inherit = "@side_ion",
						Position = Vector( 30.5+1.1+0.185, -20.5+0.023, 68.98+1.96 ),
						Angles = Angle( 0, -90+1.8, 0 ),
						Scale = 0.75,
						Phase = 180,
						Inputs = {
							["Emergency.SceneLeft"] = {},
							["Emergency.SceneRight"] = {
								["ON"] = { Takedown = "ON" }
							}
						}
					}
				}
			}
		}
	},
	{
		Category = "Grille/Foglight Area Lights",
		Options = {
			{
				Option = "Whelen Ions",
				Components = {
					{
						Name = "@grille_ion",
						Component = "photon_whe_ion",
						Position = Vector( -5.5, 116, 34.3 ),
						Angles = Angle( 0, 4, 0 ),
						Scale = 0.75,
						States = {
							[1] = "R",
							[2] = "OFF",
							[3] = "R",
							[4] = "OFF"
						},
						Segments = {
							Light = {
								Frames = {
									[1] = "[1] Light",
									[2] = "[2] Light",
									[3] = "[3] Light",
									[4] = "[4] Light"
								},
								Sequences = {
									["STAGE2"] = sequence()
										:FlashHold( 2, 2, 6 ):FlashHold( 1, 2, 6 )
									,
									["STAGE3"] = sequence()
										:Add( 2,2,2,0 ):Do(5)
										:Add( 1,1,1,0 ):Do(5)
										:Add( 2,2,2,0 ):Do(5)
										:Add( 1,1,1,0 ):Do(5)
										:Add( 2,2,2,0,1,1,1,0 ):Do(4)

										--:Add( 4,4,4,0 ):Do(5)
										--:Add( 3,3,3,0 ):Do(5)
										--:Add( 4,4,4,0 ):Do(5)
										--:Add( 3,3,3,0 ):Do(5)
										--:Add( 4,4,4,0,3,3,3,0 ):Do(4)
										:SetTiming(1/48)
									,
								}
							}
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {
									--Light = "STAGE3"
								},
								["MODE2"] = {
									Light = "STAGE2"
								},
								["MODE3"] = {
									Light = "STAGE3"
								}
							}
						}
					},
					{
						Inherit = "@grille_ion",
						Position = Vector( 5.5, 116, 34.3 ),
						Angles = Angle( 0, -4, 0 ),
						States = {
							[1] = "OFF",
							[2] = "R",
							[3] = "OFF",
							[4] = "R"
						}
					},
					-- OUTER
					{
						Inherit = "@grille_ion",
						Position = Vector( -18.3, 114, 34.45 ),
						Angles = Angle( 1, 13, 0 ),
						States = {
							[1] = "W",
							[2] = "R",
							[3] = "W",
							[4] = "R"
						}
					},
					{
						Inherit = "@grille_ion",
						Position = Vector( 18.3, 114, 34.45 ),
						Angles = Angle( -1, -13, 0 ),
						States = {
							[1] = "R",
							[2] = "W",
							[3] = "R",
							[4] = "W"
						}
					},
					-- Foglight Area
					{
						Inherit = "@grille_ion",
						Position = Vector( -32.5, 108.88, 18 ),
						Angles = Angle( 0.55, 29.9, 0 ),
						States = {
							[1] = "R",
							[2] = "OFF",
							[3] = "R",
							[4] = "OFF"
						},
					},
					{
						Inherit = "@grille_ion",
						Position = Vector( 32.5, 108.88, 18 ),
						Angles = Angle( -0.55, -29.9, 0 ),
						States = {
							[1] = "OFF",
							[2] = "R",
							[3] = "OFF",
							[4] = "R"
						}
					}
				}
			}
		}
	},
	{
		Category = "Siren",
		Options = {
			{
				Option = "Siren",
				Components = {
					{
						Component = "siren_prototype",
						Model = "models/sentry/props/whelensa315p_mounta.mdl",
						Position = Vector( 0, 109, 17.3 ),
						Angles = Angle(0, 0, 0),
						Scale = 1.2,
						Siren = 1,
						Templates = {
							["Sound"] = { 
								Tone = {
									DSP = 0,
									Pitch = 100
								} 
							}
						}
					}
				}
			}
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
						Position = Vector( 6.5, 12, 45 ),
						Angles = Angle( 0, 31, 0 ),
						Scale = 0.9,
						Options = {
							Pole = 0,
							Base = -60,
							-- You can change the screen material by using this option:
							Screen = "rin/lrpd2/props/laptop_screen_lrpd",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Component = "photon_sos_observe",
						Position = Vector( 0, -5, 71.5 ),
						Angles = Angle( 11, 90, 180 ),
						Scale = 1.1
					}
				},
				Props = {
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 8.1, 30.5 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 10.8, 31.8 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 5.4, 30 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 7, 20, 68 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( -16, -56, 68.5 ),
						Angles = Angle( 0, 88, -2 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/procopper_cvpi.mdl",
						Position = Vector( 0, -2, 4 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( -25, -107, 54.7 ),
						Angles = Angle( -4.5, 0, 4 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 25, -107, 54.7 ),
						Angles = Angle( 4.5, 0, 4 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -126.7, 30 ),
						Angles = Angle( -10, -90, 0 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/supermighty/photon/front_holder.mdl",
						Position = Vector( 0, 118.2, 23 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 1
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.9, 23 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.97,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
				}
			}
		}
	},
}