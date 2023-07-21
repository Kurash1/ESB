#terrain id = {
#	name = string
#	desc = string?
#
#	color = block
#	sound_type = string
#	
#	is_water = bool?
#	inland_sea = bool?
#	type = string
#	
#	movement_cost = float?
#	defence = int?
#	
#	modifier = block?
#}
new terrain ocean = {
	name = "Ocean"

	color = { 255 255 255 }
	sound_type = sea
	is_water = yes
	movement_cost = 1.25
}
new terrain inland_ocean = {
	name = "Inland Ocean"

	color = { 0 0 200 }
	sound_type = sea
	is_water = yes
	inland_sea = yes
	movement_cost = 1.0
}
new terrain glacier = {
	name = "Glacier"
	
	color = { 235 235 235 }
	sound_type = desert
	
	movement_cost = 1.25
	defence = 1
	
	modifier = {
		local_defensiveness = 0.25
		local_development_cost = 0.5
		supply_limit = 10		
		local_build_cost = 0.50
        local_build_time = 0.50
        regiment_recruit_speed = 0.50
        ship_recruit_speed = 0.50
		local_institution_spread = -0.50
	}
}
new terrain farmlands = {
	name = "Farmlands"
	base_development = 10
	color = { 100 200 100 }
	type = plains
	sound_type = plains
	movement_cost = 1.15
	
	modifier = {
		local_development_cost = -0.30
		supply_limit = 35
		local_build_cost = -0.30
		local_build_time = -0.30
		regiment_recruit_speed = -0.30
		ship_recruit_speed = -0.30
		local_institution_spread = 0.30
	}
}
new terrain forest = {
	name = "Forest"
	base_development = 6
	color = { 14 122 12 }
	type = forest
	sound_type = forest
	
	movement_cost = 1.35
	defence = 1
	
	modifier = {
		local_defensiveness = 0.25
		local_development_cost = -0.15
		supply_limit = 25
		local_build_cost = -0.15
		local_build_time = -0.15
		regiment_recruit_speed = -0.15
		ship_recruit_speed = -0.15
		local_institution_spread = 0.15
	}
}
new terrain hills = {
	name = "Hills"
	base_development = 5
	color = { 135 70 0 }
	type = hills
	sound_type = mountain
	defence = 1
	local_defensiveness = 0.15
	
	modifier = {
		movement_cost = 1.35
		local_development_cost = 0.10
		supply_limit = 25
		local_build_cost = 0.10
		local_build_time = 0.10
		regiment_recruit_speed = 0.10
		ship_recruit_speed = 0.10
		local_institution_spread = -0.10
	}
}
new terrain woods = {
	name = "Woods"
	base_development = 6
	color = { 125 165 75 }
	type = forest
	sound_type = forest
	defence = 1
	movement_cost = 1.25
	modifier = {
		local_defensiveness = 0.20
		local_development_cost = -0.10
		supply_limit = 25
		local_build_cost = -0.10
		local_build_time = -0.10
		regiment_recruit_speed = -0.10
		ship_recruit_speed = -0.10
		local_institution_spread = 0.10	
	}
}
new terrain mountain = {
	name = "Mountains"
	base_development = 3
	color = { 117 108 119 }
	type = mountains
	sound_type = mountain
	defence = 2
	movement_cost = 1.5
	modifier = {
		local_defensiveness = 0.35
		local_development_cost = 0.25
		supply_limit = 10
		local_build_cost = 0.25
		local_build_time = 0.25
		regiment_recruit_speed = 0.25
		ship_recruit_speed = 0.25
		local_institution_spread = -0.25
	}
}
new terrain impassable_mountains = {
	name = "Impassible Mountains"

	color = { 128 128 128 }
	sound_type = desert
	movement_cost = 5.0
	defence = 5
	modifier = {
		local_development_cost = 10		
	}
}
new terrain grasslands = {
	name = "Grasslands"
	base_development = 7
	color = { 175 250 125 }
	type = plains
	sound_type = plains
	movement_cost = 1.0
	modifier = {
		local_development_cost = -0.25
		supply_limit = 30
		local_build_cost = -0.25
		local_build_time = -0.25
		regiment_recruit_speed = -0.25
		ship_recruit_speed = -0.25
		local_institution_spread = 0.25
	}
}
new terrain jungle = {
	name = "Jungle"
	base_development = 4
	color = { 40 180 149 }
	type = jungle
	sound_type = jungle
	defence = 1
	movement_cost = 1.35
	modifier = {
		local_defensiveness = 0.35
		local_development_cost = 0.30
		supply_limit = 30
		local_build_cost = 0.30
		local_build_time = 0.30
		regiment_recruit_speed = 0.30
		ship_recruit_speed = 0.30
		local_institution_spread = -0.30
	}
}
new terrain marsh = {
	name = "Marsh"
	base_development = 4
	color = { 76 112 105 }
	type = marsh
	sound_type = forest
	defence = 1
	movement_cost = 1.40
	modifier = {
		local_defensiveness = 0.25
		local_development_cost = 0.15
		supply_limit = 20
		local_build_cost = 0.15
		local_build_time = 0.15
		regiment_recruit_speed = 0.15
		ship_recruit_speed = 0.15
		local_institution_spread = -0.15
	}
}
new terrain desert = {
	name = "Desert"
	base_development = 5
	color = { 220 210 0 }
	type = desert
	sound_type = desert
	movement_cost = 1.20
	modifier = {
		local_development_cost = 0.15
		supply_limit = 15
		local_build_cost = 0.45
		local_build_time = 0.45
		regiment_recruit_speed = 0.45
		ship_recruit_speed = 0.45
		local_institution_spread = -0.45
	}
}
new terrain desert_hills = {
	name = "Desert Hills"
	base_development = 4
	color = { 240 210 0 }
	type = desert
	sound_type = mountain
	defence = 1
	movement_cost = 1.35
	modifier = {
		local_defensiveness = 0.15
		local_development_cost = 0.2
		supply_limit = 5
		local_build_cost = 0.5
		local_build_time = 0.5
		regiment_recruit_speed = 0.5
		ship_recruit_speed = 0.5
		local_institution_spread = -0.5
	}
}
new terrain coastal_desert = {
	name = "Coastal Desert"
	base_development = 6
	color = { 200 128 0 }
	type = desert
	sound_type = desert
	movement_cost = 1.15
	modifier = {
		local_development_cost = 0.40		
		supply_limit = 20
		local_build_cost = 0.40
		local_build_time = 0.40
		regiment_recruit_speed = 0.40
		ship_recruit_speed = 0.40
		local_institution_spread = -0.40
	}
}
new terrain coastline = {
	name = "Coastline"
	base_development = 8
	color = { 153 255 204 }
	sound_type = sea
	movement_cost = 1.0
	modifier = {
		local_development_cost = -0.20
		supply_limit = 30
		local_build_cost = -0.20
		local_build_time = -0.20
		regiment_recruit_speed = -0.20
		ship_recruit_speed = -0.20
		local_institution_spread = 0.20
	}
}
new terrain highlands = {
	name = "Highlands"
	base_development = 4
	color = { 12 12 12 }
	type = hills
	sound_type = mountain
	defence = 1
	movement_cost = 1.45
	modifier = {
		local_defensiveness = 0.25
		local_development_cost = 0.20
		supply_limit = 15
		local_build_cost = 0.20
		local_build_time = 0.20
		regiment_recruit_speed = 0.20
		ship_recruit_speed = 0.20
		local_institution_spread = -0.20
	}
}
new terrain steppe = {
	name = "Steppe"
	base_development = 5
	color = { 133 173 0 }
	type = plains
	sound_type = plains
	movement_cost = 1.00
	modifier = {
		local_development_cost = 0.05
		supply_limit = 30
		local_build_cost = 0.05
		local_build_time = 0.05
		regiment_recruit_speed = 0.05
		ship_recruit_speed = 0.05
		local_institution_spread = -0.05
	}
}
new terrain drylands = {
	name = "Drylands"
	base_development = 5
	color = { 220 210 0 }
	type = plains
	sound_type = plains
	movement_cost = 1.10
	modifier = {
		local_development_cost = 0.35
		supply_limit = 25
		local_build_cost = 0.35
		local_build_time = 0.35
		regiment_recruit_speed = 0.35
		ship_recruit_speed = 0.35
		local_institution_spread = -0.35
	}
}
new terrain savannah = {
	name = "Savannah"
	base_development = 5
	color = { 91 123 45 }
	sound_type = plains
	movement_cost = 1.00
	modifier = {
		local_development_cost = -0.05
		supply_limit = 30
		local_build_cost = -0.05
		local_build_time = -0.05
		regiment_recruit_speed = -0.05
		ship_recruit_speed = -0.05
		local_institution_spread = 0.05
	}
}
new terrain hot_springs = {
	name = "Hot Springs"
	base_development = 4
	color = { 194 123 160 }
	sound_type = sea
	movement_cost = 1.10
	modifier = {
		local_development_cost = -0.25
		supply_limit = 20
		local_build_cost = 0.25
		local_build_time = 0.25
		regiment_recruit_speed = 0.25
		ship_recruit_speed = 0.25
		local_institution_spread = -0.25
		trade_goods_size_modifier = 0.10
	}
}
new terrain salt_plains = {
	name = "Salt Plains"
	base_development = 5
	color = { 208 182 130 }
	sound_type = plains
	movement_cost = 1.24
	modifier = {
		local_development_cost = 0.40
		supply_limit = 15
		local_build_cost = 0.35
		local_build_time = 0.35
		regiment_recruit_speed = 0.35
		ship_recruit_speed = 0.35
		local_institution_spread = -0.35
		trade_goods_size_modifier = 0.05
	}
}
new terrain ashlands = {
	name = "Ashlands"
	base_development = 3
	color = { 180 180 180 }
	sound_type = desert
	movement_cost = 1.35
	modifier = {
		local_development_cost = 0.50
		supply_limit = 10
		local_build_cost = 0.50
		local_build_time = 0.50
		regiment_recruit_speed = 0.50
		ship_recruit_speed = 0.50
		local_institution_spread = -0.50
		trade_goods_size_modifier = -0.10
		attrition = 1
	}
}
new terrain fungal_forest = {
	name = "Fungal Forest"
	base_development = 6
	color = { 64 76 56 }
	sound_type = forest
	defence = 1
	movement_cost = 1.15
	modifier = {
		local_defensiveness = 0.20
		local_development_cost = -0.15
		supply_limit = 25
		local_build_cost = -0.15
		local_build_time = -0.15
		regiment_recruit_speed = -0.15
		ship_recruit_speed = -0.15
		local_institution_spread = 0.15
	}
}
new terrain lava = {
	name = "Lava"
	base_development = 3
	color = { 204 0 0 }
	sound_type = sea
	defence = 1
	movement_cost = 1.50
	modifier = {
		local_defensiveness = 0.25
		local_development_cost = 1
		supply_limit = 5
		local_build_cost = 1
		local_build_time = 1
		regiment_recruit_speed = 1
		ship_recruit_speed = 1
		local_institution_spread = -1
		trade_goods_size_modifier = -0.15
		attrition = 5
	}
}
new terrain taiga = {
	name = "Taiga"
	base_development = 5
	color = { 102 153 102 }
	sound_type = forest
	defence = 1
	movement_cost = 1.30
	modifier = {
		local_defensiveness = 0.30
		local_development_cost = 0.15
		supply_limit = 15
		local_build_cost = 0.15
		local_build_time = 0.15
		regiment_recruit_speed = 0.15
		ship_recruit_speed = 0.15
		local_institution_spread = -0.15
	}
}
new terrain mudflats = {
	name = "Mudflats"
	base_development = 5
	color = { 204 65 37 }
	sound_type = plains
	defence = 1
	movement_cost = 1.15
	modifier = {
		local_defensiveness = 0.10
		local_development_cost = -0.20
		supply_limit = 30
		local_build_cost = -0.20
		local_build_time = -0.20
		regiment_recruit_speed = -0.20
		ship_recruit_speed = -0.20
		local_institution_spread = 0.20
		trade_goods_size_modifier = 0.05
	}
}
new terrain bayou = {
	name = "Bayou"
	base_development = 4
	color = { 70 130 90 }
	sound_type = jungle
	defence = 1
	movement_cost = 1.40
	modifier = {
		local_defensiveness = 0.20
		local_development_cost = 0.20
		supply_limit = 20
		local_build_cost = 0.20
		local_build_time = 0.20
		regiment_recruit_speed = 0.20
		ship_recruit_speed = -0.20
		local_institution_spread = -0.20
		trade_goods_size_modifier = 0.05
	}
}
new terrain tundra = {
	name = "Tundra"
	base_development = 5
	color = { 225 250 153 }
	sound_type = plains
	movement_cost = 1.50
	modifier = {
		local_defensiveness = 0.25
		local_development_cost = -0.10
		supply_limit = 12
		local_build_cost = 0.25
		local_build_time = -0.20
		regiment_recruit_speed = 0.25
		ship_recruit_speed = 0.25
		local_institution_spread = -0.25
	}
}
terrain_declarations := {
	grasslands			= { type = grasslands		color = { 	0	 } }
	hills				= { type = hills			color = { 	1	 } }
	desert_mountain		= { type = mountain			color = { 	2	 } }
	desert				= { type = desert			color = { 	3	 } }
	plains				= { type = grasslands		color = { 	4	 } }
	terrain_5			= { type = grasslands		color = { 	5	 } }
	mountain			= { type = mountain			color = { 	6	 } }
	desert_mountain_low	= { type = desert			color = { 	7	 } }
	terrain_8			= { type = hills			color = { 	8	 } }
	marsh				= { type = marsh			color = { 	9	 } }
	terrain_10			= { type = farmlands		color = { 	10	 } }
	terrain_11			= { type = farmlands		color = { 	11	 } }
	forest_12			= { type = forest			color = { 	12	 } }
	forest_13			= { type = forest			color = { 	13	 } }
	forest_14			= { type = forest			color = { 	14	 } }
	ocean				= { type = ocean			color = { 	15	 } }
	snow				= { type = mountain 		color = { 	16	 } } # (SPECIAL CASE) Used to identify permanent snow
	inland_ocean_17 	= { type = inland_ocean		color = {	17	 } }
	coastal_desert_18	= { type = coastal_desert	color = { 	19	 } }
	coastline			= { type = coastline		color = { 	35	 } }
	savannah			= { type = savannah 		color = {	20	 } }
	drylands			= { type = drylands			color = {	22	 } }
	highlands			= { type = highlands		color = {	23	 } }
	dry_highlands		= { type = highlands		color = {	24	 } }
	woods				= { type = woods			color = { 	255	 } }
	jungle				= { type = jungle			color = { 	254	 } }
	terrain_21			= { type = farmlands		color = { 	21	 } }	
	### ESU Terrain
	hot_springs			= { type = desert			color = { 	22	 } }
	salt_plains         = { type = grasslands		color = { 	23	 } }
	ashlands            = { type = desert			color = { 	24	 } }
	fungal_forest       = { type = forest			color = { 	25	 } }
	lava                = { type = desert			color = { 	26	 } }
	taiga               = { type = forest			color = { 	27	 } }
	mudflats            = { type = grasslands		color = { 	28	 } }
	bayou               = { type = jungle		    color = { 	30	 } }
	tundra         		= { type = grasslands		color = { 	33	 } }
}
tree := {
	forest				= { terrain = forest 			color = { 	3 4 6 7 19 20	} }
	woods				= { terrain = woods 			color = { 	2 5 8 18	} }
	jungle				= { terrain = jungle 			color = { 	13 14 15	} }
	palms				= { terrain = desert 			color = { 	12	} }
	savana				= { terrain = grasslands 		color = { 	27 28 29 30	} }
}
