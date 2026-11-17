if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Author = "GoodMannSamm"

COMPONENT.Credits = {
	Model = "SuperMighty",
	Code = "Samm"
}

COMPONENT.Title = [[Whelen Freedom (70") LRFD]]
COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/supermighty/whelen_liberty/whelen_freedom_70inch.mdl"

COMPONENT.Preview = {
	Position = Vector(),
	Angles = Angle( 0, 180, 0 ),
	Zoom = 1
}

COMPONENT.Templates = {
	["2D"] = {
		Primary = {
			Width 	= 10.9,
			Height	= 12,
			Shape = "sprites_apac/emv/whelen_lin6_corner",
			Detail = "sprites_apac/emv/whelen_lin6_corner",
			Scale = 1
		},
		Corner = {
			Width = 16.9,
			Height = 14.3,
			Shape = "sprites_apac/emv/whelen_lin6_corner",
			Detail = "sprites_apac/emv/whelen_lin6_corner",
		},
		Takedown = {
			Width 	= 7.4,
			Height	= 7,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_6x2_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_6x2_detail.png").MaterialName,
			Scale = 1
		},
		Half = {
			Width 	= 4.4,
			Height	= 4.4,
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_half_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/sm_whe_lib_ii_half_detail.png").MaterialName,
		},
		Alley = {
			Width 	= 3.5,
			Height	= 3.5,
			Shape = "sprites/emv/emv_whelen_tri",
			Detail = "sprites/emv/emv_whelen_tri",
		},
	},
	["Projected"] = {
		TakedownIllumination = {
			Brightness = 2
		},
		AlleyIllumination = {}
	}
}

COMPONENT.ElementStates = {
	["2D"] = {
		["R1"] = {
			Inherit = "R",
			Intensity = 1,
			IntensityGainFactor = 10,
			IntensityLossFactor = 10,
			IntensityTransitions = true
		},
		["B1"] = {
			Inherit = "B",
			Intensity = 1,
			-- Alternate data format concept
			Transitions = {
				Intensity = { Gain = 10, Loss = 10 }
			},
			IntensityGainFactor = 10,
			IntensityLossFactor = 10,
			IntensityTransitions = true
			
		},
		["R0"] = {
			Inherit = "R1",
			Intensity = 0,
		},
		["B0"] = {
			Inherit = "B1",
			Intensity = 0,
		}
	}
}

COMPONENT.StateMap = "[R] 1 2 [R] 3 4 [R] 5 6 [R] 7 8 [R] 9 10 [R] 11 12 [R] 17 18 [R] 19 20 [R] 21 22 [R] 23 24 [R] 25 26 [R] 27 28 [W] 13 14 15 16 49 50 51 52"

COMPONENT.ElementGroups = {
	["Left"] = { 1,5,9,17,21,25,
				 2,6,10,18,22,26, },
	["LeftU"] = { 1,5,9,17,21,25, },
	["LeftL"] = { 2,6,10,18,22,26, },
	["Right"] = { 3,7,11,19,23,27,
				  4,8,12,20,24,28, },
	["RightU"] = { 3,7,11,19,23,27, },
	["RightL"] = { 4,8,12,20,24,28, },
}

COMPONENT.Elements = {
	--1
	[1] = { "Primary", Vector( 7.8, 3.79, .95 ), Angle( 0, -90, 0 ) },
	[2] = { "Primary", Vector( 7.8, 3.79, -1.05 ), Angle( 0, -90, 0 ) },

	--2
	[3] = { "Primary", Vector( 7.8, -3.79, .95 ), Angle( 0, -90, 0 ) },
	[4] = { "Primary", Vector( 7.8, -3.79, -1.05 ), Angle( 0, -90, 0 ) },

	--3
	[5] = { "Primary", Vector( 7.8, 10.9, .95 ), Angle( 0, -90, 0 ) },
	[6] = { "Primary", Vector( 7.8, 10.9, -1.05 ), Angle( 0, -90, 0 ) },

	--4
	[7] = { "Primary", Vector( 7.8, -10.9, .95 ), Angle( 0, -90, 0 ) },
	[8] = { "Primary", Vector( 7.8, -10.9, -1.05 ), Angle( 0, -90, 0 ) },

	--5
	[9] = { "Primary", Vector( 7.8, 17.7, .95 ), Angle( 0, -90, 0 ) },
	[10] = { "Primary", Vector( 7.8, 17.7, -1.05 ), Angle( 0, -90, 0 ) },

	--6
	[11] = { "Primary", Vector( 7.8, -17.7, .95 ), Angle( 0, -90, 0 ) },
	[12] = { "Primary", Vector( 7.8, -17.7, -1.05 ), Angle( 0, -90, 0 ) },

	--7
	[13] = { "Primary", Vector( 7.8, 24.6, .95 ), Angle( 0, -90, 0 ) },
	[14] = { "Primary", Vector( 7.8, 24.6, -1.05 ), Angle( 0, -90, 0 ) },

	--8
	[15] = { "Primary", Vector( 7.8, -24.6, .95 ), Angle( 0, -90, 0 ) },
	[16] = { "Primary", Vector( 7.8, -24.6, -1.05 ), Angle( 0, -90, 0 ) },

	--9
	[17] = { "Primary", Vector( 7.8, 31.6, .95 ), Angle( 0, -90, 0 ) },
	[18] = { "Primary", Vector( 7.8, 31.6, -1.05 ), Angle( 0, -90, 0 ) },

	--10
	[19] = { "Primary", Vector( 7.8, -31.6, .95 ), Angle( 0, -90, 0 ) },
	[20] = { "Primary", Vector( 7.8, -31.6, -1.05 ), Angle( 0, -90, 0 ) },

	--11
	[21] = { "Corner", Vector( 5.1, 41.4, .95 ), Angle( 0, -58, 0 ), },
	[22] = { "Corner", Vector( 5.1, 41.4, -1.05 ), Angle( 0, -58, 0 ), },

	--12
	[23] = { "Corner", Vector( 5.1, -41.4, .95 ), Angle( 0, -122, 0 ) },
	[24] = { "Corner", Vector( 5.1, -41.4, -1.05 ), Angle( 0, -122, 0 ) },

	--13
	[25] = { "Corner", Vector( -5.21, 41.4, .95 ), Angle( 0, 58, 0 ) },
	[26] = { "Corner", Vector( -5.21, 41.4, -1.05 ), Angle( 0, 58, 0 ) },

	--14
	[27] = { "Corner", Vector( -5.21, -41.4, .95 ), Angle( 0, 122, 0 ) },
	[28] = { "Corner", Vector( -5.21, -41.4, -1.05 ), Angle( 0, 122, 0 ) },

	--rear flat

	--15
	[29] = { "Primary", Vector( -7.8, 3.79, .95 ), Angle( 0, 90, 0 )  },
	[30] = { "Primary", Vector( -7.8, 3.79, -1.05 ), Angle( 0, 90, 0 ) },

	--16
	[31] = { "Primary", Vector( -7.8, -3.79, .95 ), Angle( 0, 90, 0 )  },
	[32] = { "Primary", Vector( -7.8, -3.79, -1.05 ), Angle( 0, 90, 0 ) },

	--17
	[33] = { "Primary", Vector( -7.8, 10.9, .95 ), Angle( 0, 90, 0 ) },
	[34] = { "Primary", Vector( -7.8, 10.9, -1.05 ), Angle( 0, 90, 0 ) },

	--18
	[35] = { "Primary", Vector( -7.8, -10.9, .95 ), Angle( 0, 90, 0 ) },
	[36] = { "Primary", Vector( -7.8, -10.9, -1.05), Angle( 0, 90, 0 ) },

	--19
	[37] = { "Primary", Vector( -7.8, 17.7, .95 ), Angle( 0, 90, 0 ) },
	[38] = { "Primary", Vector( -7.8, 17.7, -1.05 ), Angle( 0, 90, 0 ) },
	
	--20
	[39] = { "Primary", Vector( -7.8, -17.7, .95 ), Angle( 0, 90, 0 ) },
	[40] = { "Primary", Vector( -7.8, -17.7, -1.05 ), Angle( 0, 90, 0 ) },

	--21
	[41] = { "Primary", Vector( -7.8, 24.6, .95 ), Angle( 0, 90, 0 ) },
	[42] = { "Primary", Vector( -7.8, 24.6, -1.05 ), Angle( 0, 90, 0 ) },

	--22
	[43] = { "Primary", Vector( -7.8, -24.6, .95 ), Angle( 0, 90, 0 ) },
	[44] = { "Primary", Vector( -7.8, -24.6, -1.05 ), Angle( 0, 90, 0 ) },

	--23
	[45] = { "Primary", Vector( -7.8, 31.6, .95 ), Angle( 0, 90, 0 ) },
	[46] = { "Primary", Vector( -7.8, 31.6, -1.05 ), Angle( 0, 90, 0 ) },

	--24
	[47] = { "Primary", Vector( -7.8, -31.6, .95 ), Angle( 0, 90, 0 ) },
	[48] = { "Primary", Vector( -7.8, -31.6, -1.05 ), Angle( 0, 90, 0 ) },
	
	--alley L
	[49] = { "Alley", Vector( 0, 46, .82 ), Angle( 0, 0, 0 ) },
	[50] = { "Alley", Vector( 0, 46, -1.05 ), Angle( 0, 0, 0 ) },

	[51] = { "Alley", Vector( 0, -46, .82 ), Angle( 0, 180, 0 ) },
	[52] = { "Alley", Vector( 0, -46, -1.05 ), Angle( 0, 180, 0 ) },
}

COMPONENT.Segments = {
	All = {
		Frames = {
			[1] = "Left Right",
			[2] = "Left",
			[3] = "Right",
			[4] = "Left",
			[5] = "Right"
		},
		Sequences = {
			["MODE1"] = sequence():Steady( 1, 64 ):TripleFlash( 1 ),
			["ON"] = { 1 },
			["ALT"] = { 2, 2, 2, 2, 3, 3, 3, 3 },
			["ALT2"] = sequence():Alternate( 4, 5, 8 ),
			["ALT3"] = sequence():QuadFlash( 2, 3 )
		}
	},
	Corners = {
		Frames = {
			[1] = "21 22 23 24 25 26 27 28",
			[2] = "21 22 25 26",
			[3] = "23 24 27 28"
		},
		Sequences = {
			["ON"] = { 1 },
			["STFL"] = sequence():Steady( 1, 32 ):Flash( 1, 0, 4 ),
			["BLAM"] = {2, 2, 0, 0, 2, 2, 1, 1, 0, 0, 1, 1,},
		}
	},
	Takedown = {
		Frames = {
			[1] = "13 14 15 16",
			[2] = "15 16",
			[3] = "13 14",
			[4] = "13 14 15 16"
		},
		Sequences = {
			["ON"] = { 1 },
			-- ON but without the projected textures
			["ON_CHEAP"] = { 4 },
			["QUAD_FLASH"] = sequence():QuadFlash( 2, 3 ),
			["BLAM"] = { 1, 1, 0, 0, 1, 1, 2, 2, 0, 0, 2, 2, },
		}
	},
	LeftAlley = {
		Frames = {
			[1] = "49 50",
			[2] = "49 50",
		},
		Sequences = {
			["ON"] = { 1 },
			["QUAD_FLASH"] = sequence():QuadFlash( 2, 0 ),
		}
	},
	RightAlley = {
		Frames = {
			[1] = "51 52",
			[2] = "51 52"
		},
		Sequences = {
			["ON"] = { 1 },
			["QUAD_FLASH"] = sequence():QuadFlash( 0, 2 )
		}
	},
	OneTwo = {
		Frames = {
			[1] = "1 2",
			[2] = "3 4",
			[3] = "1 2 3 4",
		},
		Sequences = {
			["BLAM"] = { 1, 1, 0, 0, 1, 1, 2, 2, 0, 0, 2, 2, },
		}
	},
	ThreeFour = {
		Frames = {
			[1] = "5 6",
			[2] = "7 8",
			[3] = "5 6 7 8",
		},
		Sequences = {
			["BLAM"] = { 2, 0, 2, 0, 2, 0, 2, 0, 2, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0 },
		}
	},
	FiveSix = {
		Frames = {
			[1] = "9 10",
			[2] = "11 12",
			[3] = "9 10 11 12",
		},
		Sequences = {
			["BLAM"] = { 1, 1, 0, 1, 1, 2, 2, 0, 2, 2, },
		}
	},
	NineTen = {
		Frames = {
			[1] = "17 18",
			[2] = "19 20",
			[3] = "17 18 19 20",
		},
		Sequences = {
			["BLAM"] = { 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 2, 2, 2, 0, 0, 0, 2, 2, 2, 0 },
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE3"] = {
			OneTwo = "BLAM",
			ThreeFour = "BLAM",
			FiveSix = "BLAM",
			NineTen = "BLAM",
			Corners = "BLAM",
		}
	},
	["Emergency.SceneForward"] = {
		["ON"] = {
			Takedown = "ON"
		},
		["FLOOD"] = {
			Takedown = "ON"
		}
	},
	["Emergency.SceneLeft"] = {
		["ON"] = {
			LeftAlley = "ON"
		}
	},
	["Emergency.SceneRight"] = {
		["ON"] = {
			RightAlley = "ON"
		}
	},
	["Emergency.Marker"] = {
	}
}