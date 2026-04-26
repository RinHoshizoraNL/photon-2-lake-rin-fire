if (Photon2.ReloadVehicleFile()) then return end --rin
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "2010 Ford Crown Victoria LRFD"
VEHICLE.Vehicle		= "cvpi_hd_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Fire Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Siren = { "motorola_spectra" }

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			{
				Option = "Fire Marshal",
				SubMaterials = {
					{ Id = 3, Material = "rin/lrfd2/crownvic10/marshal" }
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
					{ BodyGroup = "hubcaps", Value = 0 },
				},
			},
			{
				Option = "Steelies",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 1 },
				},
			},
            {
				Option = "Steelies missing center caps",
				BodyGroups = {
					{ BodyGroup = "hubcaps", Value = 2 },
				},
			},
		}
	},
	{
		Category = "Rain Guards",
		Options = {
			{
				Option = "Rain Guards",
				BodyGroups = {
					{ BodyGroup = "rainguards", Value = 1 },
				},
			},
			{
				Option = "None",
				BodyGroups = {
					{ BodyGroup = "rainguards", Value = 0 },
				},
			},
		}
	},
    {
		Category = "Spotlights",
		Options = {
			{
				Option = "Pillar Spotlights",
				Components = {
					{
						Component = "photon_par46_left",
						Position = Vector( -35.06, 26.46, 49.282 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
					},
					{
						Component = "photon_par46_right",
						Position = Vector( 35.06, 26.46, 49.282 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1,
						Inputs = {
							-- Clear the default illumination mode
							["Emergency.SceneForward"] = { ["ON"] = {} },
						}
					}
				},
				BodyGroups = {
					{ BodyGroup = "door_l_notch", Value = 0 },
					{ BodyGroup = "door_r_notch", Value = 0 },
				}
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
						Component = "photon_standard_cvpi10",
						Segments = {
							["Headlight_flashers"] = {
								Sequences = {
									STAGE3 = sequence():Alternate(1,2,6)
								}
							},
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE3"] = { Headlight_flashers = "STAGE3" }
							}
						}
					}
				}
			}
		}
	},
	{
		Category = "Siren Speaker",
		Options = {
			{
				Option = "Speaker",
				Components = {
					{
						Name = "@siren_speaker",
						Component = "siren_prototype",
						Model = "models/sentry/props/whelensa315p_mounta.mdl",
						Position = Vector(0, 107, 29),
						Angles = Angle(0, 0, 0),
						Scale = 1,
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
		Category = "Lightbar",
		Options = {
			{
				Option = "Freedom",
				Components = {
					{
						Component = "lrfd_photon_whe_freedom",
						Position = Vector( 0, -19.2, 70.6 ),
						Angles = Angle( 0, 90, 0 ),
						Scale = 0.9
					}
				}
			}
		}
	},
	{
		Category = "Grille",
		Options = {
			{
				Option = "Whelen Tir3",
				Components = {
					{
						Name = "@grille_tir3",
						Component = "anemolis_whelen_tir3",
						Position = Vector( 12, 108, 32 ),
						Angles = Angle( 182, -4, 0 ),
						Scale = 1,
						Segments = {
							whelen_tir3 = {
								Sequences = {
									STAGE3 = sequence()
										:FlashHold( 1, 2, 4):AppendPhaseGap()
								}
							}
						},
						Inputs = {
							["Emergency.Warning"] = {
								["MODE1"] = {},
								["MODE2"] = {
									whelen_tir3 = "CODE"
								},
								["MODE3"] = {
									whelen_tir3 = "STAGE3"
								}
							},
						}
                    },
                    {
						Inherit = "@grille_tir3",
						Position = Vector( -12, 108, 32 ),
						Angles = Angle( 178, 4, 0 ),
                        Phase = 180
					}
				}
			}
		}
	},
	{
		Category = "Rear Interior Lightbar",
		Options = {
			{
				Option = "500",
				Components = {
					{
						Name = "@rear500",
						Component = "lrfd_photon_whe_500",
						Position = Vector( 0, -72.6, 50.9 ),
						Angles = Angle( 0, -90, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE
					}
				},
				Props = {
					-- MOUNTS --
					{
						Name = "@500mount",
						Model = "models/hunter/tubes/tube1x1x2.mdl",
						Position = Vector( -22, -73.5, 44.6 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = Vector(.025, .025, .0675),
						SubMaterials = { [0] = "sentry/cvpi_hd/black" },
						RenderGroup = RENDERGROUP_OPAQUE
					},
					{
						Inherit = "@500mount",
						Position = Vector( 22, -73.5, 44.6 )
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
				BodyGroups = {
					{ BodyGroup = "rearfascia", Value = 0 },
					{ BodyGroup = "spotlight_l", Value = 1 },
					{ BodyGroup = "spotlight_r", Value = 1 },
					{ BodyGroup = "windowbars", Value = 0 },
					{ BodyGroup = "grille", Value = 0 },
					{ BodyGroup = "rearfascia", Value = 1 },
					{ BodyGroup = "reartrim", Value = 0 },
					{ BodyGroup = "handles", Value = 0 },
					{ BodyGroup = "trunkmodel", Value = 1 },
					{ BodyGroup = "mirrors", Value = 0 },
					{ BodyGroup = "bumperf_chrome", Value = 0 },
					{ BodyGroup = "bumperr_chrome", Value = 0 },
					{ BodyGroup = "partition", Value = 1 },
					{ BodyGroup = "door_l_notch", Value = 0 },
					{ BodyGroup = "door_r_notch", Value = 0 },
					{ BodyGroup = "doortrim", Value = 0 },
				},
				Components = {
					{
						Component = "photon_pan_toughbookcf30",
						Position = Vector( 6.5, 13.5, 40 ),
						Angles = Angle( 0, 31, 0 ),
						Scale = 1,
						Options = {
							Pole = 2,
							Base = -60,
							Screen = "rin/port/props/laptop_screen_port",
						},
						RenderGroup = RENDERGROUP_OPAQUE,
					}
				},
				Props = {
					{
						Model = "models/sentry/props/jp/dashcam.mdl",
						Position = Vector( 7, 15, 62 ),
						Angles = Angle( 8, 264.8, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/oss_mkd1.mdl",
						Position = Vector( -0.2, 10, 26.85 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/jp/necradio.mdl",
						Position = Vector( -0.2, 12.75, 28 ),
						Angles = Angle( -69, 270, 0 ),
						Scale = 1.1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/sentry/props/sap500.mdl",
						Position = Vector( 0, 7.4, 26.2 ),
						Angles = Angle( 0, 0, -69 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( -25, -104, 47 ),
						Angles = Angle( -2.5, 0, 2 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/schmal/antenna_motorola.mdl",
						Position = Vector( 25, -104, 47 ),
						Angles = Angle( 2.5, 0, 2 ),
						Scale = 1,
						RenderGroup = RENDERGROUP_OPAQUE,
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -124.55, 36.2 ),
						Angles = Angle( -11, 270, 00 ),
						Scale = 1,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 118.8, 18.2 ),
						Angles = Angle( 6.5, 90, 0 ),
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