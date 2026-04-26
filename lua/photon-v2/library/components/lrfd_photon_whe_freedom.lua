if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()
local sequence = Photon2.SequenceBuilder.New

COMPONENT.Author = "Photon"

COMPONENT.Credits = {
	Model = "Supermighty",
	Code = "LilRanbay"
}

COMPONENT.Title = [[LRFD Whelen Freedom]]
COMPONENT.Category = "Lightbar"
COMPONENT.Model = "models/supermighty/whelen_liberty/whelen_liberty_ultra_freedom.mdl"

COMPONENT.States = {
	[1] = "R",
	[2] = "W"
}

COMPONENT.SubMaterials = { [2] = "rin/lrfd2/props/liberty_colored_glass" }

COMPONENT.BodyGroups = { ["Takedowns"] = 2 }

COMPONENT.Templates = {
	["2D"] = {
		["Main"] = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_detail.png").MaterialName,
			Width = 9.26,
			Height = 4.15,
			Scale = 1.8,
			Ratio = 1.5
		},
		["Corner"] = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_corner_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_corner_detail.png").MaterialName,
			Width = 10.6,
			Height = 4.15,
			Ratio = 1.8,
			Scale = 2
		},
		["Takedown"] = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_tkdn_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_tkdn_shape.png").MaterialName,
			Width = 2.3,
			Height = 2.3,
			Scale = 1.5
		},
		["Alley"] = {
			Shape = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_tkdn_shape.png").MaterialName,
			Detail = PhotonMaterial.GenerateLightQuad("photon/lights/whe_lib_tkdn_shape.png").MaterialName,
			Width = 1.9,
			Height = 1.9,
			Scale = 1.5
		}
	},
	["Projected"] = {
		TakedownIllumination = {
			Material = "photon/flashlight/led_linear.png",
			Brightness = 2
		}
	}
}

COMPONENT.StateMap = "[1] 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 [2] 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44"

-- This model is so realistic, the modules aren't even centered accurately :)
COMPONENT.Elements = {
	---------------------- BOTTOM ----------------------
	[1] =  { "Main", Vector( 7.98, 3.82, -0.91 ), Angle( 0, -90, 0 ) },
	[2] =  { "Main", Vector( 7.98, -3.82, -0.91 ), Angle( 0, -90, 0 ) },
	[3] =  { "Main", Vector( 7.98, 10.76, -0.91 ), Angle( 0, -90, 0 ) },
	[4] =  { "Main", Vector( 7.98, -10.76, -0.91 ), Angle( 0, -90, 0 ) },

	[5] =  { "Corner", Vector( 5.19, 27.64, -0.91 ), Angle( 0, -90+33, 0 ) },
	[6] =  { "Corner", Vector( 5.19, -27.64, -0.91 ), Angle( 0, -90-33, 0 ) },

	[7] =  { "Corner", Vector( -5.19, 27.64, -0.91 ), Angle( 0, 90-33, 0 ) },
	[8] =  { "Corner", Vector( -5.19, -27.64, -0.91 ), Angle( 0, 90+33, 0 ) },

	[9] =  { "Main", Vector( -7.98, 17.65, -0.91 ), Angle( 0, 90, 0 ) },
	[10] = { "Main", Vector( -7.98, -17.65, -0.91 ), Angle( 0, 90, 0 ) },
	[11] = { "Main", Vector( -7.98, 10.76, -0.91 ), Angle( 0, 90, 0 ) },
	[12] = { "Main", Vector( -7.98, -10.76, -0.91 ), Angle( 0, 90, 0 ) },
	[13] = { "Main", Vector( -7.98, 3.82, -0.91 ), Angle( 0, 90, 0 ) },
	[14] = { "Main", Vector( -7.98, -3.82, -0.91 ), Angle( 0, 90, 0 ) },
	-----------------------------------------------------
	------------------------ TOP ------------------------
	[15] = { "Main", Vector( 7.98, 3.82, 1 ), Angle( 0, -90, 0 ) },
	[16] = { "Main", Vector( 7.98, -3.82, 1 ), Angle( 0, -90, 0 ) },
	[17] = { "Main", Vector( 7.98, 10.76, 1 ), Angle( 0, -90, 0 ) },
	[18] = { "Main", Vector( 7.98, -10.76, 1 ), Angle( 0, -90, 0 ) },

	[19] = { "Corner", Vector( 5.19, 27.64, 1 ), Angle( 0, -90+33, 0 ) },
	[20] = { "Corner", Vector( 5.19, -27.64, 1 ), Angle( 0, -90-33, 0 ) },

	[21] = { "Corner", Vector( -5.19, 27.64, 1 ), Angle( 0, 90-33, 0 ) },
	[22] = { "Corner", Vector( -5.19, -27.64, 1 ), Angle( 0, 90+33, 0 ) },

	[23] = { "Main", Vector( -7.98, 17.65, 1 ), Angle( 0, 90, 0 ) },
	[24] = { "Main", Vector( -7.98, -17.65, 1 ), Angle( 0, 90, 0 ) },
	[25] = { "Main", Vector( -7.98, 10.76, 1 ), Angle( 0, 90, 0 ) },
	[26] = { "Main", Vector( -7.98, -10.76, 1 ), Angle( 0, 90, 0 ) },
	[27] = { "Main", Vector( -7.98, 3.82, 1 ), Angle( 0, 90, 0 ) },
	[28] = { "Main", Vector( -7.98, -3.82, 1 ), Angle( 0, 90, 0 ) },
	-----------------------------------------------------
	--------------------- TAKEDOWNS ---------------------
	[29] = { "Takedown", Vector( 8.1, 16.3, -0.16 ), Angle( 0, -90, 0 ) },
	[30] = { "Takedown", Vector( 8.1, -16.3, -0.16 ), Angle( 0, -90, 0 ) },
	[31] = { "Takedown", Vector( 8.1, 19, -0.16 ), Angle( 0, -90, 0 ) },
	[32] = { "Takedown", Vector( 8.1, -19, -0.16 ), Angle( 0, -90, 0 ) },
	-- ALLEYS
	[33] = { "Alley", Vector( 0, 32.2, -0.91 ), Angle( 0, 0, 0 ) },
	[34] = { "Alley", Vector( 0, -32.2, -0.91 ), Angle( 0, 180, 0 ) },
	[35] = { "Alley", Vector( 0, 32.2, 0.91 ), Angle( 0, 0, 0 ) },
	[36] = { "Alley", Vector( 0, -32.2, 0.91 ), Angle( 0, 180, 0 ) },
	-----------------------------------------------------
	-------------------- ILLUMINATION -------------------
	[37] = { "TakedownIllumination", Vector( 8.1, 16.3, -0.16 ), Angle( 0, -90, 0 ) },
	[38] = { "TakedownIllumination", Vector( 8.1, -16.3, -0.16 ), Angle( 0, -90, 0 ) },
	[39] = { "TakedownIllumination", Vector( 8.1, 19, -0.16 ), Angle( 0, -90, 0 ) },
	[40] = { "TakedownIllumination", Vector( 8.1, -19, -0.16 ), Angle( 0, -90, 0 ) },
	-- ALLEYS
	[41] = { "TakedownIllumination", Vector( 0, 32.2, -0.91 ), Angle( 0, 0, 0 ) },
	[42] = { "TakedownIllumination", Vector( 0, -32.2, -0.91 ), Angle( 0, 180, 0 ) },
	[43] = { "TakedownIllumination", Vector( 0, 32.2, 0.91 ), Angle( 0, 0, 0 ) },
	[44] = { "TakedownIllumination", Vector( 0, -32.2, 0.91 ), Angle( 0, 180, 0 ) }
}

COMPONENT.ElementGroups = {
	["@01"] = { 1, 15 },
	["@02"] = { 2, 16 },
	["@03"] = { 3, 17 },
	["@04"] = { 4, 18 },
	["@05"] = { 5, 19 },
	["@06"] = { 6, 20 },
	["@07"] = { 7, 21 },
	["@08"] = { 8, 22 },
	["@09"] = { 9, 23 },
	["@10"] = { 10, 24 },
	["@11"] = { 11, 25 },
	["@12"] = { 12, 26 },
	["@13"] = { 13, 27 },
	["@14"] = { 14, 28 },
	["@TL"] = { 29, 31 },
	["@TR"] = { 30, 32 },
	["@AL"] = { 33, 35 },
	["@AR"] = { 34, 36 }
}

local sequence = Photon2.SequenceBuilder.New

COMPONENT.Segments = {
	All = {
		Frames = {
			[1] = "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44",

			-- CODE 3 --
			[2] = "@02 @05 @07 @14",
			[3] = "@02 @03 @09 @14",
			[4] = "@03 @09 @12",
			[5] = "@01 @12 @13",
			[6] = "@01 @06 @08 @13",
			[7] = "@06 @08 @11",
			[8] = "@04 @10 @11",
			[9] = "@04 @05 @07 @10"
		},
		Sequences = {
			["DEBUG"] = { 1 },

			["CODE3"] = sequence():Add( 2, 3, 4, 5, 6, 7, 8, 9 ):SetVariableTiming( 1/32, 1/12, 0.99 )
		}
	}
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = { 
			All = "DEBUG"
		},
		["MODE3"] = {
			All = "CODE3"
		}
	}
}