new great_project dunmeth_pass = {
	name = "Dunmeth Pass"
	start = black_mountain
	tier_1 = {
		area_modifier = {
			fort_level = 1
			local_defender_dice_roll_bonus = 1
			local_hostile_attrition = 1
		}
		country_modifier = {
			defensiveness = 0.2
		}
	}
	tier_2 = {
		area_modifier = {
			fort_level = 1
			local_defender_dice_roll_bonus = 1
			local_hostile_attrition = 2
		}
		country_modifier = {
			defensiveness = 0.2
		}
	}
	tier_3 = {
		area_modifier = {
			fort_level = 2
			local_defender_dice_roll_bonus = 2
			local_hostile_attrition = 3
		}
		country_modifier = {
			defensiveness = 0.25
		}
	}
}
new great_project lunar_forge = {
	name = "Lunar Forge"
	start = silent_moons
	tier_1 = {
		province_modifier = {
			local_development_cost_modifier = -0.1
			trade_goods_size = 0.5
		}
		country_modifier = {
			shock_damage = 5%
		}
		on_upgraded = {
			defineloc lunar_forge_reform = "Unlocks §YLunar Smithing§! Government Reform"
			custom_tooltip = lunar_forge_reform
		}
	}
	tier_2 = {
		province_modifier = {
			local_development_cost_modifier = -0.20
			trade_goods_size = 1.0
		}
		country_modifier = {
			shock_damage = 7.5%
		}
	}
	tier_3 = {
		province_modifier = {
			local_development_cost_modifier = -0.25
			trade_goods_size = 1.5
		}
		country_modifier = {
			shock_damage = 10%
		}
	}
}
new great_project yngol_barrow = {
	name = "Yngol Barrow"
	start = yngol_barrow
	tier_1 = {
		country_modifier = {
			prestige_decay = -0.5%
			naval_attrition = -10%
		}
	}
	tier_2 = {
		country_modifier = {
			prestige_decay = -1%
			naval_attrition = -20%
		}
	}
	tier_3 = {
		country_modifier = {
			prestige_decay = -1.5%
			naval_attrition = -25%
		}
	}
}
new great_project palace_of_the_kings = {
	name = "Palace of the Kings"
	start = windhelm
	tier_1 = {
		country_modifier = {
			legitimacy = 0.5
			governing_capacity_modifier = 0.05
			max_absolutism = 5
		}
		on_upgraded = {
			owner = {
				add_splendor = 400
			}
		}
	}
	tier_2 = {
		country_modifier = {
			legitimacy = 1.0
			governing_capacity_modifier = 0.10
			max_absolutism = 10
		}
	}
	tier_3 = {
		country_modifier = {
			legitimacy = 1.5
			governing_capacity_modifier = 0.15
			max_absolutism = 15
		}
	}
}
new great_project candlehearth_hall = {
	name = "Candlehearth Hall"
	start = windhelm
	tier_1 = {
		province_modifier = {
			local_unrest = -2
			local_development_cost = -0.1
			local_tax_modifier = 0.5
		}
		country_modifier = {
			global_tax_modifier = 0.1
		}
	}
	tier_2 = {
		province_modifier = {
			local_unrest = -4
			local_development_cost = -0.2
			local_tax_modifier = 1.0
		}
		country_modifier = {
			global_tax_modifier = 0.2
		}
	}
	tier_3 = {
		province_modifier = {
			local_unrest = -5
			local_development_cost = -0.3
			local_tax_modifier = 1.5
		}
		country_modifier = {
			global_tax_modifier = 0.25
		}
	}
}
new great_project windhelm_docks = {
	name = "Windhelm Docks"
	start = black_mountain
	tier_1 = {
		province_modifier = {
			local_sailors_modifier = 0.5
			local_ship_cost = -0.25
			local_ship_repair = 0.5
			ship_recruit_speed = -0.25
		}
		country_modifier = {
			navy_tradition = 0.5
			naval_forcelimit_modifier = 0.1
		}
	}
	tier_2 = {
		province_modifier = {
			local_sailors_modifier = 1.0
			local_ship_cost = -0.50
			local_ship_repair = 1.0
			ship_recruit_speed = -0.50
		}
		country_modifier = {
			navy_tradition = 1.0
			naval_forcelimit_modifier = 0.20
		}
	}
	tier_3 = {
		province_modifier = {
			local_sailors_modifier = 1.5
			local_ship_cost = -0.75
			local_ship_repair = 1.5
			ship_recruit_speed = -0.75
		}
		country_modifier = {
			navy_tradition = 1.5
			naval_forcelimit_modifier = 0.25
		}
	}
}
new great_project ancestor_glade = {
	name = "Ancestor Glade"
	start = ancestor_glade
	tier_1 = {
		province_modifier = {
			local_development_cost_modifier = -0.1
		}
		country_modifier = {
			idea_cost = -0.025
			advisor_cost = -0.1
		}
	}
	tier_2 = {
		province_modifier = {
			local_development_cost_modifier = -0.2
		}
		country_modifier = {
			idea_cost = -0.05
			advisor_cost = -0.2
		}
	}
	tier_3 = {
		province_modifier = {
			local_development_cost_modifier = -0.25
		}
		country_modifier = {
			idea_cost = -0.075
			advisor_cost = -0.25
		}
	}
}
new great_project kilkreath_temple = {
	name = "Kilkreath Temple"
	start = black_mountain
}
new great_project arcwind_point = {
	name = "Arcwind Point"
	start = black_mountain
}
new great_project castle_dour = {
	name = "Castle Dour"
	start = black_mountain
	tier_1 = {
		province_modifier = {
			fort_level = 1
			local_defensiveness = 0.1
		}
	}
	tier_2 = {
		province_modifier = {
			fort_level = 2
			local_defensiveness = 0.2
		}
	}
	tier_3 = {
		province_modifier = {
			fort_level = 3
			local_defensiveness = 0.3
		}
	}
}
new great_project temple_of_the_divines = {
	name = "Temple of the Divines"
	start = black_mountain
}
new great_project bards_college = {
	name = "Bards College"
	start = black_mountain
}
new great_project bleak_falls_barrow = {
	name = "Bleak Falls Barrow"
	start = bleak_falls_temple
	tier_1 = {
		province_modifier = {
			local_fort_maintenance_modifier = -0.25
			trade_goods_size = 0.5
		}
		area_modifier = {
			local_defensiveness = 0.1
		}
		country_modifier = {
			global_missionary_strength = 0.01
		}
	}
	tier_3 = {
		province_modifier = {
			local_fort_maintenance_modifier = -0.5
			trade_goods_size = 1
		}
		area_modifier = {
			local_defensiveness = 0.2
		}
		country_modifier = {
			global_missionary_strength = 0.02
		}
	}
	tier_3 = {
		province_modifier = {
			local_fort_maintenance_modifier = -0.75
			trade_goods_size = 1.5
		}
		area_modifier = {
			local_defensiveness = 0.3
		}
		country_modifier = {
			global_missionary_strength = 0.03
		}
	}
}
new great_project blue_palace = {
	name = "Blue Palace"
	start = black_mountain
	tier_1 = {
		country_modifier = {
			governing_capacity_modifier = 0.05
			reform_progress_growth = 0.05
			advisor_cost = -0.10
		}
	}
	tier_2 = {
		country_modifier = {
			governing_capacity_modifier = 0.1
			reform_progress_growth = 0.1
			advisor_cost = -0.2
		}
	}
	tier_3 = {
		country_modifier = {
			governing_capacity_modifier = 0.15
			reform_progress_growth = 0.15
			advisor_cost = -0.25
		}
	}
}
new great_project castle_volkihar = {
	name = "Castle Volkihar"
	start = black_mountain
}
new great_project college_of_winterhold = {
	name = "College of Winterhold"
	start = black_mountain
}
new great_project direfrost_keep = {
	name = "Direfrost Keep"
	start = stony_creek
	tier_1 = {
		area_modifier = {
			fort_level = 1
			local_defender_dice_roll_bonus = 1
			local_hostile_attrition = 1
		}
		country_modifier = {
			monthly_splendor = 0.5
			prestige_decay = -0.005
		}
	}
	tier_2 = {
		area_modifier = {
			fort_level = 1
			local_defender_dice_roll_bonus = 1
			local_hostile_attrition = 2
		}
		country_modifier = {
			monthly_splendor = 1
			prestige_decay = -0.01
		}
	}
	tier_3 = {
		area_modifier = {
			fort_level = 2
			local_defender_dice_roll_bonus = 2
			local_hostile_attrition = 3
		}
		country_modifier = {
			monthly_splendor = 1.5
			prestige_decay = -0.015
		}
	}
}
new great_project dragon_bridge = {
	name = "Dragon Bridge"
	start = dragon_bridge
	tier_1 = {
		province_modifier = {
			local_development_cost_modifier = -0.1
		}
		country_modifier = {
			prestige = 0.5
			fire_damage = 0.05
		}
	}
	tier_2 = {
		province_modifier = {
			local_development_cost_modifier = -0.2
		}
		country_modifier = {
			prestige = 1
			fire_damage = 0.075
		}
	}
	tier_3 = {
		province_modifier = {
			local_development_cost_modifier = -0.25
		}
		country_modifier = {
			prestige = 1.5
			fire_damage = 0.10
		}
	}
}
new great_project fallowstone_hall = {
	name = "Fallowstone Hall"
	start = shors_stone
	starting_tier = 1
	trigger = {
		owner = {
			OR = {
				tag = fallowfire
				was_tag = countries:fallowfire
			}
		}
	}
	tier_1 = {
		country_modifier = {
			discipline = 0.025
			infantry_power = 0.05
		}
	}
	tier_2 = {
		country_modifier = {
			discipline = 0.05
			infantry_power = 0.10
			
		}
	}
	tier_3 = {
		country_modifier = {
			discipline = 0.075
			infantry_power = 0.15 
		}
	}
}
new great_project forelhost = {
	name = "Forelhost"
	start = forelhost
	trigger = {
		religion = religions:dragon_cult
	}
	tier_1 = {
		country_modifier = {
			global_missionary_strength = 0.01
			land_morale = 0.05
			hostile_attrition = 0.5
		}
	}
	tier_2 = {
		country_modifier = {
			global_missionary_strength = 0.02
			land_morale = 0.1
			hostile_attrition = 1
		}
	}
	tier_3 = {
		country_modifier = {
			global_missionary_strength = 0.03
			land_morale = 0.15
			hostile_attrition = 1.5
		}
	}
}
new great_project fortress_of_ice = {
	name = "Fortress of Ice"
	start = black_mountain
}
new great_project great_arch = {
	name = "Great Arch"
	start = solitude_port
	tier_1 = {
		country_modifier = {
			global_unrest = -1
			center_of_trade_upgrade_cost = -0.05
			trade_steering = 0.05
		}
	}
	tier_2 = {
		country_modifier = {
			global_unrest = -2
			center_of_trade_upgrade_cost = -0.1
			trade_steering = 0.1
		}
	}
	tier_3 = {
		country_modifier = {
			global_unrest = -3
			center_of_trade_upgrade_cost = -0.15
			trade_steering = 0.15
			own_coast_naval_combat_bonus = 1.0
		}
	}
}
new great_project dragonsreach = {
	name = "Dragonsreach"
	start = whiterun
	tier_1 = {
		country_modifier = {
			governing_capacity_modifier = 0.05
			max_absolutism = 10
			yearly_absolutism = 0.1
		}
	}
	tier_2 = {
		country_modifier = {
			governing_capacity_modifier = 0.1
			max_absolutism = 20
			yearly_absolutism = 0.2
		}
	}
	tier_3 = {
		country_modifier = {
			governing_capacity_modifier = 0.15
			max_absolutism = 30
			yearly_absolutism = 0.3
		}
	}
}
new great_project skyforge = {
	name = "Skyforge"
	start = whiterun
	tier_1 = {
		country_modifier = {
			fire_damage_received = -0.05
			shock_damage_received = -0.05
		}
	}
	tier_2 = {
		country_modifier = {
			fire_damage_received = -0.075
			shock_damage_received = -0.075
		}
	}
	tier_3 = {
		country_modifier = {
			fire_damage_received = -0.10
			shock_damage_received = -0.10
		}
	}
}
new great_project jorrvaskr = {
	name = "Jorrvaskr"
	start = whiterun
	tier_1 = {
		country_modifier = {
			morale_damage = 0.05
			land_morale = 0.05
		}
	}
	tier_2 = {
		country_modifier = {
			morale_damage = 0.075
			land_morale = 0.10
		}
	}
	tier_3 = {
		country_modifier = {
			morale_damage = 0.10
			land_morale = 0.15
		}
	}
}
new great_project gildergreen = {
	name = "Gildergreen"
	start = whiterun
	tier_1 = {
		country_modifier = {
			development_cost = -0.05
			global_monthly_devastation = -0.05
			global_prosperity_growth = 0.05
		}
	}
	tier_2 = {
		country_modifier = {
			development_cost = -0.10
			global_monthly_devastation = -0.10
			global_prosperity_growth = 0.10
		}
	}
	tier_3 = {
		country_modifier = {
			development_cost = -0.15
			global_monthly_devastation = -0.15
			global_prosperity_growth = 0.15
		}
	}
}
new great_project karthspire = {
	name = "Karthspire"
	start = west_karthspire
	tier_1 = { 
		country_modifier = {
			prestige = 0.5
			monarch_admin_power = 1
		}
	}
	tier_2 = { 
		country_modifier = {
			prestige = 1.0
			monarch_admin_power = 1
			monarch_diplomatic_power = 1
		}
	}
	tier_3 = { 
		country_modifier = {
			prestige = 1.5
			monarch_admin_power = 1
			monarch_diplomatic_power = 1
			monarch_military_power = 1
		}
	}
}
new great_project bromjunaar = {
	name = "Bromjunaar"
	start = bromjunaar
	trigger = {
		religion = religions:dragon_cult
	}
	tier_1 = {
		country_modifier = {
			administrative_efficiency = 0.05
			governing_capacity_modifier = 0.10
		}
	}
	tier_2 = {
		country_modifier = {
			administrative_efficiency = 0.10
			governing_capacity_modifier = 0.20
		}
	}
	tier_3 = {
		country_modifier = {
			administrative_efficiency = 0.15
			governing_capacity_modifier = 0.25
		}
	}
}
new great_project gjukars_monument = {
	name = "Gjukar's Monument"
	start = gjukar
	tier_1 = {
		country_modifier = {
			army_tradition = 0.5
			leader_land_fire = 1
		}
	}
	tier_2 = {
		country_modifier = {
			army_tradition = 1.0
			leader_land_fire = 1
			leader_land_shock = 1
		}
	}
	tier_3 = {
		country_modifier = {
			army_tradition = 1.5
			leader_land_fire = 1
			leader_land_shock = 1
			leader_siege = 1
		}
	}
}