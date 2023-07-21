##################################################################
### Terrain Categories
###
### Terrain `type`s: plains, mountains, hills, desert, artic, forest, jungle, marsh, pti
### `type`s are used by the game to apply certain bonuses/maluses on movement/combat etc.
###
### Sound `type`s: plains, forest, desert, sea, jungle, mountains
 
categories =  {
	pti = {
		`type` = pti
	}
 
	ocean = {
		color = { 255 255 255 }
		sound_type = sea
		is_water = yes
		movement_cost = 1.25

	}

	inland_ocean = {
		color = { 0 0 200 }
		sound_type = sea
		is_water = yes
		inland_sea = yes
		movement_cost = 1.0
		

		terrain_override = {

		}

	}

	glacier = {
		color = { 235 235 235 }
		sound_type = desert
		defence = 1
		local_defensiveness = 0.25
		movement_cost = 1.25
		local_development_cost = 0.5
		supply_limit = 10		
		local_build_cost = 0.50
        local_build_time = 0.50
        regiment_recruit_speed = 0.50
        ship_recruit_speed = 0.50
		local_institution_spread = -0.50
		

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = glacier
				}
				kvp:value:id
			}
		}

	}

	farmlands = {
		color = { 100 200 100 }
		`type` = plains
		sound_type = plains
		movement_cost = 1.15
		local_development_cost = -0.30
		supply_limit = 35
		local_build_cost = -0.30
        local_build_time = -0.30
        regiment_recruit_speed = -0.30
        ship_recruit_speed = -0.30
		local_institution_spread = 0.30
		

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = farmlands
				}
				kvp:value:id
			}
		}

	}

	forest = {
		color = { 14 122 12 }
		`type` = forest
		sound_type = forest
		defence = 1
		local_defensiveness = 0.25
		movement_cost = 1.35
		local_development_cost = -0.15
		supply_limit = 25
		local_build_cost = -0.15
        local_build_time = -0.15
        regiment_recruit_speed = -0.15
        ship_recruit_speed = -0.15
		local_institution_spread = 0.15

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = forest
				}
				kvp:value:id
			}
		}

	}

	hills = {
		color = { 135 70 0 }
		`type` = hills
		sound_type = mountain
		defence = 1
		local_defensiveness = 0.15
		movement_cost = 1.35
		local_development_cost = 0.10
		supply_limit = 25
		local_build_cost = 0.10
        local_build_time = 0.10
        regiment_recruit_speed = 0.10
        ship_recruit_speed = 0.10
		local_institution_spread = -0.10

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = hills
				}
				kvp:value:id
			}
		}

	}

	woods = {
		color = { 125 165 75 }
		`type` = forest
		sound_type = forest
		defence = 1
		local_defensiveness = 0.20
		movement_cost = 1.25
		local_development_cost = -0.10
		supply_limit = 25
		local_build_cost = -0.10
        local_build_time = -0.10
        regiment_recruit_speed = -0.10
        ship_recruit_speed = -0.10
		local_institution_spread = 0.10	

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = woods
				}
				kvp:value:id
			}
		}

	}

	mountain = {
		color = { 117 108 119 }
		`type` = mountains
		sound_type = mountain
		defence = 2
		local_defensiveness = 0.35
		movement_cost = 1.5
		local_development_cost = 0.25
		supply_limit = 10
		local_build_cost = 0.25
        local_build_time = 0.25
        regiment_recruit_speed = 0.25
        ship_recruit_speed = 0.25
		local_institution_spread = -0.25

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = mountain
				}
				kvp:value:id
			}
		}

	}

	impassable_mountains = {
		color = { 128 128 128 }
		sound_type = desert
		movement_cost = 5.0
		defence = 5
		local_development_cost = 10		

		terrain_override = {
		}

	}

	grasslands = {
		color = { 175 250 125 }
		`type` = plains
		sound_type = plains
		movement_cost = 1.0
		local_development_cost = -0.25
		supply_limit = 30
		local_build_cost = -0.25
        local_build_time = -0.25
        regiment_recruit_speed = -0.25
        ship_recruit_speed = -0.25
		local_institution_spread = 0.25

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = grasslands
				}
				kvp:value:id
			}
		}

	}

	jungle = {
		color = { 40 180 149 }
		`type` = jungle
		sound_type = jungle
		defence = 1
		local_defensiveness = 0.35
		movement_cost = 1.35
		local_development_cost = 0.30
		supply_limit = 30
		local_build_cost = 0.30
        local_build_time = 0.30
        regiment_recruit_speed = 0.30
        ship_recruit_speed = 0.30
		local_institution_spread = -0.30

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = jungle
				}
				kvp:value:id
			}
		}

	}

	marsh = {
		color = { 76 112 105 }
		`type` = marsh
		sound_type = forest
		defence = 1
		local_defensiveness = 0.25
		movement_cost = 1.40
		local_development_cost = 0.15
		supply_limit = 20
		local_build_cost = 0.15
        local_build_time = 0.15
        regiment_recruit_speed = 0.15
        ship_recruit_speed = 0.15
		local_institution_spread = -0.15

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = marsh
				}
				kvp:value:id
			}
		}

	}

	desert = {
		color = { 220 210 0 }
		`type` = desert
		sound_type = desert
		movement_cost = 1.20
		local_development_cost = 0.15
		supply_limit = 15
		local_build_cost = 0.45
        local_build_time = 0.45
        regiment_recruit_speed = 0.45
        ship_recruit_speed = 0.45
		local_institution_spread = -0.45

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = desert
				}
				kvp:value:id
			}
		}

	}
	
	desert_hills = {
		color = { 240 210 0 }
		`type` = desert
		sound_type = mountain
		defence = 1
		local_defensiveness = 0.15
		movement_cost = 1.35
		local_development_cost = 0.2
		supply_limit = 5
		local_build_cost = 0.5
        local_build_time = 0.5
        regiment_recruit_speed = 0.5
        ship_recruit_speed = 0.5
		local_institution_spread = -0.5
		
		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = desert_hills
				}
				kvp:value:id
			}
		}
	}

	coastal_desert = {
		color = { 200 128 0 }
		`type` = desert
		sound_type = desert
		movement_cost = 1.15
		local_development_cost = 0.40		
		supply_limit = 20
		local_build_cost = 0.40
        local_build_time = 0.40
        regiment_recruit_speed = 0.40
        ship_recruit_speed = 0.40
		local_institution_spread = -0.40

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = coastal_desert
				}
				kvp:value:id
			}
		}

	}

	coastline = {
		color = { 153 255 204 }
		sound_type = sea
		movement_cost = 1.0
		local_development_cost = -0.20
		supply_limit = 30
		local_build_cost = -0.20
        local_build_time = -0.20
        regiment_recruit_speed = -0.20
        ship_recruit_speed = -0.20
		local_institution_spread = 0.20

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = coastline
				}
				kvp:value:id
			}
		}

	}

	highlands = {
		color = { 12 12 12 }
		`type` = hills
		sound_type = mountain
		defence = 1
		local_defensiveness = 0.25
		movement_cost = 1.45
		local_development_cost = 0.20
		supply_limit = 15
		local_build_cost = 0.20
        local_build_time = 0.20
        regiment_recruit_speed = 0.20
        ship_recruit_speed = 0.20
		local_institution_spread = -0.20

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = highlands
				}
				kvp:value:id
			}
		}

	}

	steppe = {
		color = { 133 173 0 }
		`type` = plains
		sound_type = plains
		movement_cost = 1.00
		local_development_cost = 0.05
		supply_limit = 30
		local_build_cost = 0.05
        local_build_time = 0.05
        regiment_recruit_speed = 0.05
        ship_recruit_speed = 0.05
		local_institution_spread = -0.05

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = steppe
				}
				kvp:value:id
			}
		}

	}

	drylands = {
		color = { 220 210 0 }
		`type` = plains
		sound_type = plains
		movement_cost = 1.10
		local_development_cost = 0.35
		supply_limit = 25
		local_build_cost = 0.35
        local_build_time = 0.35
        regiment_recruit_speed = 0.35
        ship_recruit_speed = 0.35
		local_institution_spread = -0.35

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = drylands
				}
				kvp:value:id
			}
		}

	}

	savannah = {
		color = { 91 123 45 }
		sound_type = plains
		movement_cost = 1.00
		local_development_cost = -0.05
		supply_limit = 30
		local_build_cost = -0.05
        local_build_time = -0.05
        regiment_recruit_speed = -0.05
        ship_recruit_speed = -0.05
		local_institution_spread = 0.05

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = savannah
				}
				kvp:value:id
			}
		}

	}

	hot_springs = {
		color = { 194 123 160 }
		sound_type = sea
		movement_cost = 1.10
		local_development_cost = -0.25
		supply_limit = 20
		local_build_cost = 0.25
		local_build_time = 0.25
		regiment_recruit_speed = 0.25
		ship_recruit_speed = 0.25
		local_institution_spread = -0.25
		trade_goods_size_modifier = 0.10

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = hot_springs
				}
				kvp:value:id
			}
		}

	}

	salt_plains = {
		color = { 208 182 130 }
		sound_type = plains
		movement_cost = 1.24
		local_development_cost = 0.40
		supply_limit = 15
		local_build_cost = 0.35
		local_build_time = 0.35
		regiment_recruit_speed = 0.35
		ship_recruit_speed = 0.35
		local_institution_spread = -0.35
		trade_goods_size_modifier = 0.05

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = salt_plains
				}
				kvp:value:id
			}
		}

	}

	ashlands = {
		color = { 180 180 180 }
		sound_type = desert
		movement_cost = 1.35
		local_development_cost = 0.50
		supply_limit = 10
		local_build_cost = 0.50
		local_build_time = 0.50
		regiment_recruit_speed = 0.50
		ship_recruit_speed = 0.50
		local_institution_spread = -0.50
		trade_goods_size_modifier = -0.10
		attrition = 1

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = ashlands
				}
				kvp:value:id
			}
		}

	}

	fungal_forest = {
		color = { 64 76 56 }
		sound_type = forest
		defence = 1
		local_defensiveness = 0.20
		movement_cost = 1.15
		local_development_cost = -0.15
		supply_limit = 25
		local_build_cost = -0.15
		local_build_time = -0.15
		regiment_recruit_speed = -0.15
		ship_recruit_speed = -0.15
		local_institution_spread = 0.15

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = fungal_forest
				}
				kvp:value:id
			}
		}

	}

	lava = {
		color = { 204 0 0 }
		sound_type = sea
		defence = 1
		local_defensiveness = 0.25
		movement_cost = 1.50
		local_development_cost = 1
		supply_limit = 5
		local_build_cost = 1
		local_build_time = 1
		regiment_recruit_speed = 1
		ship_recruit_speed = 1
		local_institution_spread = -1
		trade_goods_size_modifier = -0.15
		attrition = 5

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = lava
				}
				kvp:value:id
			}
		}

	}

	taiga = {
		color = { 102 153 102 }
		sound_type = forest
		defence = 1
		local_defensiveness = 0.30
		movement_cost = 1.30
		local_development_cost = 0.15
		supply_limit = 15
		local_build_cost = 0.15
		local_build_time = 0.15
		regiment_recruit_speed = 0.15
		ship_recruit_speed = 0.15
		local_institution_spread = -0.15

		terrain_override = {
			taiga
		}

	}

	mudflats = {
		color = { 204 65 37 }
		sound_type = plains
		defence = 1
		local_defensiveness = 0.10
		movement_cost = 1.15
		local_development_cost = -0.20
		supply_limit = 30
		local_build_cost = -0.20
		local_build_time = -0.20
		regiment_recruit_speed = -0.20
		ship_recruit_speed = -0.20
		local_institution_spread = 0.20
		trade_goods_size_modifier = 0.05

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = mudflats
				}
				kvp:value:id
			}
		}

	}

	bayou = {
		color = { 70 130 90 }
		sound_type = jungle
		defence = 1
		local_defensiveness = 0.20
		movement_cost = 1.40
		local_development_cost = 0.20
		supply_limit = 20
		local_build_cost = 0.20
		local_build_time = 0.20
		regiment_recruit_speed = 0.20
		ship_recruit_speed = -0.20
		local_institution_spread = -0.20
		trade_goods_size_modifier = 0.05

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = bayou
				}
				kvp:value:id
			}
		}

	}

	tundra = {
		color = { 225 250 153 }
		sound_type = plains
		local_defensiveness = 0.25
		movement_cost = 1.50
		local_development_cost = -0.10
		supply_limit = 12
		local_build_cost = 0.25
		local_build_time = -0.20
		regiment_recruit_speed = 0.25
		ship_recruit_speed = 0.25
		local_institution_spread = -0.25

		terrain_override = {
			foreach kvp in ::provinces = {
				where = {
					kvp:value:terrain = tundra
				}
				kvp:value:id
			}
		}

	}


}

terrain = {
	grasslands			= { `type` = grasslands		color = { 	0	 } }
	hills				= { `type` = hills			color = { 	1	 } }
	desert_mountain		= { `type` = mountain			color = { 	2	 } }
	desert				= { `type` = desert			color = { 	3	 } }
	plains				= { `type` = grasslands		color = { 	4	 } }
	terrain_5			= { `type` = grasslands		color = { 	5	 } }
	mountain			= { `type` = mountain			color = { 	6	 } }
	desert_mountain_low	= { `type` = desert			color = { 	7	 } }
	terrain_8			= { `type` = hills			color = { 	8	 } }
	marsh				= { `type` = marsh			color = { 	9	 } }
	terrain_10			= { `type` = farmlands		color = { 	10	 } }
	terrain_11			= { `type` = farmlands		color = { 	11	 } }
	forest_12			= { `type` = forest			color = { 	12	 } }
	forest_13			= { `type` = forest			color = { 	13	 } }
	forest_14			= { `type` = forest			color = { 	14	 } }
	ocean				= { `type` = ocean			color = { 	15	 } }
	snow				= { `type` = mountain 		color = { 	16	 } } # (SPECIAL CASE) Used to identify permanent snow
	inland_ocean_17 	= { `type` = inland_ocean		color = {	17	 } }
	coastal_desert_18	= { `type` = coastal_desert	color = { 	19	 } }
	coastline			= { `type` = coastline		color = { 	35	 } }
	savannah			= { `type` = savannah 		color = {	20	 } }
	drylands			= { `type` = drylands			color = {	22	 } }
	highlands			= { `type` = highlands		color = {	23	 } }
	dry_highlands		= { `type` = highlands		color = {	24	 } }
	woods				= { `type` = woods			color = { 	255	 } }
	jungle				= { `type` = jungle			color = { 	254	 } }
	terrain_21			= { `type` = farmlands		color = { 	21	 } }	
	### ESU Terrain
	hot_springs			= { `type` = desert			color = { 	22	 } }
	salt_plains         = { `type` = grasslands		color = { 	23	 } }
	ashlands            = { `type` = desert			color = { 	24	 } }
	fungal_forest       = { `type` = forest			color = { 	25	 } }
	lava                = { `type` = desert			color = { 	26	 } }
	taiga               = { `type` = forest			color = { 	27	 } }
	mudflats            = { `type` = grasslands		color = { 	28	 } }
	bayou               = { `type` = jungle		    color = { 	30	 } }
	tundra         		= { `type` = grasslands		color = { 	33	 } }
}
##################################################################
### Tree terrain
###		terrain	=	refers to the terrain tag defined above
### 	color 	= 	index in bitmap color table (see tree.bmp)
###
tree = {
	forest				= { terrain = forest 			color = { 	3 4 6 7 19 20	} }
	woods				= { terrain = woods 			color = { 	2 5 8 18	} }
	jungle				= { terrain = jungle 			color = { 	13 14 15	} }
	palms				= { terrain = desert 			color = { 	12	} }
	savana				= { terrain = grasslands 		color = { 	27 28 29 30	} }
}
