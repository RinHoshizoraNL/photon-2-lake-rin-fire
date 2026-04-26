if (Photon2.ReloadVehicleFile()) then return end
local VEHICLE = Photon2.LibraryVehicle()

VEHICLE.Title 		= "Mack CF Pumper LRFD"
VEHICLE.Vehicle		= "mackcf_sgm"
VEHICLE.Category 	= "Photon 2: Lake Rin Fire Dept."
VEHICLE.Author		= "Rin Hoshizora"

local sequence = Photon2.SequenceBuilder.New

VEHICLE.Equipment = {
	{
		Category = "Livery",
		Options = {
			
			{
				Option = "Pumper 72",
				SubMaterials = {
					{ Id = 3, Material = "rin/lrfd2/cf_pumper/pumper_72" },
					{ Id = 2, Material = "rin/lrfd2/props/yellow_old" },
				},
			},
		}
	},
	{
		Category = "Lightbar",
		Options = {
			{
				Option = "Twinsonic",
				Components = {
					{
						Component = "fedsig_twinsonic",
						Position = Vector( 0, 106, 106.2 ),
						Angles = Angle( 0, 0, 0 ),
						Scale = 1
					}
				}
			}
		}
	},
	{
		Category = "Beacons",
		Options = {
			{
				Option = "Bacons",
				Components = {
					{
						Component = "patlite_hkf",
						Position = Vector( -39.5, -178, 104.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = .9,
						BodyGroups = {
							["trim"] = 1,
						},
					},
					{
						Component = "patlite_hkf",
						Position = Vector( 39.5, -178, 104.5 ),
						Angles = Angle( 0, 270, 0 ),
						Scale = .9,
						BodyGroups = {
							["trim"] = 1,
						},
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
						Position = Vector( 0, 80, 105),
						Angles = Angle( 0, 30, 0 ),
						Scale = 1,
						BodyGroups = {
							["feet"] = 1,
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, -190.1, 61 ),
						Angles = Angle( 0, 270, 00 ),
						Scale = 1.02,
						SubMaterials = {
							[1] = "rin/lrfd2/props/plate_fire",
						},
					},
					{
						Model = "models/xenosprops/na_plate/na_plate_gov.mdl",
						Position = Vector( 0, 164.55, 26.5 ),
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
