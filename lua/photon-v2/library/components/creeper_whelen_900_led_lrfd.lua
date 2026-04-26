if (Photon2.ReloadComponentFile()) then return end
local COMPONENT = Photon2.LibraryComponent()

COMPONENT.Author = "Sk3leCreeper"

COMPONENT.Title = [[Whelen 900 Series LRFD Super-LED]]
COMPONENT.Model = "models/creeper/photon/whelen_900_superled.mdl"

COMPONENT.Category = "Perimeter"

COMPONENT.Templates = {
    ["2D"] = {
        w900_u = {
            Detail = "creeper/whelen_900_led/2d_upper",
            Width = 11.1552,
            Height = 11.1552,
            Scale = 1.0,
        },
        w900_l = {
            Detail = "creeper/whelen_900_led/2d_lower",
            Width = 11.1552,
            Height = 11.1552,
            Scale = 1.0,
        },
    },
    ["Mesh"] = {
        w900_mU = {
            Model = "models/creeper/photon/whelen_900_super_light.mdl",
            DrawMaterial = "creeper/whelen_900_led/superled_light_upper",
        },
        w900_mL = {
            Model = "models/creeper/photon/whelen_900_super_light.mdl",
            DrawMaterial = "creeper/whelen_900_led/superled_light_lower",
        },
    },
}

COMPONENT.ElementStates = {
    ["Mesh"] = {
        ["A"] = {
            Inherit = "A",
            Intensity = 0.5,
        },
    }
}

COMPONENT.StateMap = "[1] 1 2 [2] 3 4"

COMPONENT.States = {
    [1] = "R",
    [2] = "R",
}

COMPONENT.Elements = {
    [1] = { "w900_u", Vector( 0, 1.1, 1.79262 ), Angle( 0, 0, 0 )},
    [2] = { "w900_mU", Vector( 0, 0.0, 0 ), Angle( 0, 0, 0 ), "creeper/whelen_900_led/superled_light_upper"},
    [3] = { "w900_l", Vector( 0, 1.1, -1.79262 ), Angle( 0, 0, 0 )},
    [4] = { "w900_mL", Vector( 0, 0.0, 0 ), Angle( 0, 0, 0 ), "creeper/whelen_900_led/superled_light_lower"},
}
local sequence = Photon2.SequenceBuilder.New
COMPONENT.Segments = {
    ["Light"] = {
        Frames = {
            [1] = "[1] 1 2",
            [2] = "[2] 3 4",
            [3] = "[1] 1 2 3 4",
        },
        Sequences = {
            ["code"] = { 3 },

            ["SLOW"] = sequence():Flash(0, 3):Stretch(5),

			["SINGLE"] = sequence():Flash(0, 3):Stretch(3),

			["QUAD"] = sequence():TripleFlash(0, 3):Stretch(1),

            ["code:_F_SA75"] = sequence():SetTiming(1/33):Steady(3, 1):Off(1):Steady(3, 1):Off(1):Steady(3, 1):Off(1):Steady(3, 1):Off(1):Steady(3, 8):Off(16),

            ["code:_F_SA150"] = sequence():SetTiming(1/66):Steady(3, 1):Off(1):Steady(3, 1):Off(1):Steady(3, 1):Off(1):Steady(3, 1):Off(1):Steady(3, 8):Off(16),

            ["code:_F_CF75"] = sequence():SetTiming(1/50):Steady(3, 4):Off(1):Steady(3, 4):Off(1):Steady(3, 4):Off(1):Steady(3, 4):Off(21),

            ["code:_F_CA75"] = sequence():SetTiming(7/200):Steady(3, 2):Off(1):Steady(3, 2):Off(1):Steady(3, 8):Off(14),

            ["code:_F_CA150"] = sequence():SetTiming(7/400):Steady(3, 2):Off(1):Steady(3, 2):Off(1):Steady(3, 8):Off(14),

            ["code:_F_SF60"] = sequence():SetTiming(1/5):Steady(3, 2):Off(3),

            ["code:_F_SF75"] = sequence():SetTiming(2/25):Steady(3, 4):Off(6),

            ["code:_F_SF90"] = sequence():SetTiming(8/125):Steady(3, 4):Off(6),

            ["code:_F_SF120"] = sequence():SetTiming(12/125):Steady(3, 2):Off(3),

            ["code:_F_SF150"] = sequence():SetTiming(1/25):Steady(3, 4):Off(6),

            ["code:_F_SF300"] = sequence():SetTiming(1/40):Steady(3, 3):Off(5),

            ["code:_F_ACTSCAN"] = sequence():SetTiming(1/50):
            Steady(1, 8):Off(4):Steady(1, 8):Steady(2, 8):Off(4):Steady(2, 8): --DF75
            Steady(1, 8):Off(4):Steady(1, 8):Steady(2, 8):Off(4):Steady(2, 8):
            Steady(1, 4):Off(1):Steady(2, 4):Off(1): --SF300
            Steady(1, 4):Off(1):Steady(2, 4):Off(1):
            Steady(1, 4):Off(1):Steady(2, 4):Off(1):
            Steady(1, 4):Off(1):Steady(2, 4):Off(1):
            Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):
            Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):
            Steady(1, 4):Off(1):Steady(2, 4):Off(1): --SF150
            Steady(1, 4):Off(1):Steady(2, 4):Off(5):
            Steady(3, 2):Off(1):Steady(3, 2):Off(1):Steady(3, 2):Off(1):Steady(3, 2):Off(1):Steady(3, 12):Off(16):
            Steady(3, 2):Off(1):Steady(3, 2):Off(1):Steady(3, 2):Off(1):Steady(3, 2):Off(1):Steady(3, 12):Off(16),

            ["code:_F_ACTFLASH"] = sequence():SetTiming(1/50):
            Steady(3, 4):Off(1):Steady(3, 4):Off(1):Steady(3, 4):Off(1):Steady(3, 4):Off(21):
            Steady(3, 4):Off(1):Steady(3, 4):Off(1):Steady(3, 4):Off(1):Steady(3, 4):Off(21):
            Steady(3, 4):Off(6):
            Steady(3, 4):Off(6):
            Steady(3, 4):Off(6):
            Steady(3, 4):Off(6),

            ["code:_F_SF375"] = sequence():SetTiming(1/50):Steady(3, 1):Off(2),

            ["code:_F_DF75"] = sequence():SetTiming(1/25):Steady(3, 4):Off(2):Steady(3, 4):Off(10),

            ["code:_F_DF120"] = sequence():SetTiming(1/20):Steady(3, 2):Off(1):Steady(3, 2):Off(5),

            ["code:_F_DF150"] = sequence():SetTiming(1/50):Steady(3, 4):Off(2):Steady(3, 4):Off(10),

            ["code:_F_TF75"] = sequence():SetTiming(1/40):Steady(3, 4):Off(1):Steady(3, 5):Off(1):Steady(3, 5):Off(16),

            ["code:_F_TF120"] = sequence():SetTiming(3/200):Steady(3, 4):Off(1):Steady(3, 5):Off(1):Steady(3, 5):Off(16),

            ["code:_F_PP75"] = sequence():SetTiming(2/25):Steady(3, 3):Off(1):Steady(3, 1):Off(5),

            ["code:_F_PP120"] = sequence():SetTiming(1/20):Steady(3, 3):Off(1):Steady(3, 1):Off(5),

            ["code:_F_LB75"] = sequence():SetTiming(1/50):Steady(3, 3):Off(1):Steady(3, 3):Off(1):Steady(3, 3):Off(1):Steady(3, 3):Off(1):Steady(3, 3):Off(20),

            --------------SPLIT

            ["code:_SP_SA75"] = sequence():SetTiming(1/33):Steady(1, 1):Off(1):Steady(1, 1):Off(1):Steady(1, 1):Off(1):Steady(1, 1):Off(1):Steady(1, 8):Steady(2, 1):Off(1):Steady(2, 1):Off(1):Steady(2, 1):Off(1):Steady(2, 1):Off(1):Steady(2, 8),

            ["code:_SP_CF75"] = sequence():SetTiming(1/50):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1),

            ["code:_SP_CA75"] = sequence():SetTiming(7/200):Steady(1, 2):Off(1):Steady(1, 2):Off(1):Steady(1, 8):Steady(2, 2):Off(1):Steady(2, 2):Off(1):Steady(2, 8),

            ["code:_SP_CA150"] = sequence():SetTiming(7/400):Steady(1, 2):Off(1):Steady(1, 2):Off(1):Steady(1, 8):Steady(2, 2):Off(1):Steady(2, 2):Off(1):Steady(2, 8),

            ["code:_SP_SF60"] = sequence():SetTiming(1/10):Steady(1, 4):Off(1):Steady(2, 4):Off(1),

            ["code:_SP_SF75"] = sequence():SetTiming(2/25):Steady(1, 4):Off(1):Steady(2, 4):Off(1),

            ["code:_SP_SF90"] = sequence():SetTiming(8/125):Steady(1, 4):Off(1):Steady(2, 4):Off(1),

            ["code:_SP_SF120"] = sequence():SetTiming(6/125):Steady(1, 4):Off(1):Steady(2, 4):Off(1),

            ["code:_SP_SF150"] = sequence():SetTiming(1/25):Steady(1, 4):Off(1):Steady(2, 4):Off(1),

            ["code:_SP_SF300"] = sequence():SetTiming(1/40):Steady(1, 3):Off(1):Steady(2, 3):Off(1),

            ["code:_SP_ACTFLASH"] = sequence():SetTiming(1/50):
            Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):
            Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(1, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):Steady(2, 4):Off(1):
            Steady(1, 4):Off(1):Steady(2, 4):Off(1):
            Steady(1, 4):Off(1):Steady(2, 4):Off(1):
            Steady(1, 4):Off(1):Steady(2, 4):Off(1):
            Steady(1, 4):Off(1):Steady(2, 4):Off(1),

            ["code:_SP_DF75"] = sequence():SetTiming(1/25):Steady(1, 4):Off(2):Steady(1, 4):Steady(2, 4):Off(2):Steady(2, 4),

            ["code:_SP_DF120"] = sequence():SetTiming(1/20):Steady(1, 2):Off(1):Steady(1, 2):Steady(2, 2):Off(1):Steady(2, 2),

            ["code:_SP_DF150"] = sequence():SetTiming(1/50):Steady(1, 4):Off(2):Steady(1, 4):Steady(2, 4):Off(2):Steady(2, 4),

            ["code:_SP_TF75"] = sequence():SetTiming(1/40):Steady(1, 4):Off(1):Steady(1, 5):Off(1):Steady(1, 5):Steady(2, 4):Off(1):Steady(2, 5):Off(1):Steady(2, 5),

            ["code:_SP_TF120"] = sequence():SetTiming(3/200):Steady(1, 4):Off(1):Steady(1, 5):Off(1):Steady(1, 5):Steady(2, 4):Off(1):Steady(2, 5):Off(1):Steady(2, 5),

            ["code:_SP_PP75"] = sequence():SetTiming(2/25):Steady(1, 3):Off(1):Steady(1, 1):Steady(2, 3):Off(1):Steady(2, 1),

            ["code:_SP_PP120"] = sequence():SetTiming(1/20):Steady(1, 3):Off(1):Steady(1, 1):Steady(2, 3):Off(1):Steady(2, 1),

            ["code:_SP_LB75"] = sequence():SetTiming(1/50):Steady(1, 3):Off(1):Steady(1, 3):Off(1):Steady(1, 3):Off(1):Steady(1, 3):Off(1):Steady(1, 3):Steady(2, 3):Off(1):Steady(2, 3):Off(1):Steady(2, 3):Off(1):Steady(2, 3):Off(1):Steady(2, 3),
        }
    },
    ["DVI"] = {
		Frames = {
			[0] = "[~R*0.5] 1 2 3 4",
			[1] = "1:~R 2:~R 3:~R 4:~R",
		},
		Sequences = {
			["ON"] = sequence():Sequential(0, 1):Stretch(8)
		}
	},
}

COMPONENT.Inputs = {
	["Emergency.Warning"] = {
		["MODE1"] = {
			DVI = "ON"
		},
		["MODE2"] = {
			Light = "SINGLE"
		},
		["MODE3"] = {
			Light = "QUAD"
		}
	},
}