# Regex statement for clearing out idea/start/bonus/trigger blocks
# Matches the contents of all deepest-level {} bracket pairs.
# (?<=\{)[a-zA-Z_\-\n\s=\d\.#"%,\+/]+(?=\})
# TEMPLATE
# # xxx Ideas
# xxx_ideas = {
# 	trigger = {
# 		primary_culture = xxx
# 	}
# 	free = yes
# 	start = {
# 	}
# 	bonus = {
# 	}
# 	xxx_ideas_1 = {
# 	}
# 	xxx_ideas_2 = {
# 	}
# 	xxx_ideas_3 = {
# 	}
# 	xxx_ideas_4 = {
# 	}
# 	xxx_ideas_5 = {
# 	}
# 	xxx_ideas_6 = {
# 	}
# 	xxx_ideas_7 = {
# 	}
# }
#############################
### Religious Group Ideas ###
#############################

# Dragon Cult Ideas
dragon_cult_ideas = {
	trigger = {
		religion = dragon_cult
		culture_group = northern_cg
	}
	free = yes
	start = {
		global_autonomy = -0.05
		culture_conversion_cost = -0.15
	}
	bonus = {
		governing_capacity_modifier = 0.2
	}
	dragon_cult_ideas_1 = {
		global_missionary_strength = 0.025
	}
	dragon_cult_ideas_2 = {
		global_tax_modifier = 0.1
		global_prosperity_growth = 0.1
	}
	dragon_cult_ideas_3 = {
		monthly_reform_progress_modifier = 0.1
	}
	dragon_cult_ideas_4 = {
		harsh_treatment_cost = -0.2
		development_cost = -0.1
	}
	dragon_cult_ideas_5 = {
		advisor_cost = -0.10
	}
	dragon_cult_ideas_6 = {
		yearly_patriarch_authority = 0.1
		religious_unity = 0.10
	}
	dragon_cult_ideas_7 = {
		stability_cost_modifier = -0.2
	}
}

#############################
###     Culture Ideas     ###
#############################
# Agaceph Ideas
agaceph_ideas = {
	trigger = {
		OR = {
			primary_culture = agaceph
		}
	}
	free = yes
	start = {
		global_spy_defence = 0.25
		spy_offence = 0.25
	}
	bonus = {
		leader_siege = 1
	}
	agaceph_ideas_1 = {
		global_autonomy = -0.05
	}
	agaceph_ideas_2 = {
		caravan_power = 0.25
	}
	agaceph_ideas_3 = {
		diplomatic_reputation = -1
		development_cost = -0.15
	}
	agaceph_ideas_4 = {
		global_unrest = 1
		production_efficiency = 0.125
	}
	agaceph_ideas_5 = {
		reform_progress_growth = 0.25
	}
	agaceph_ideas_6 = {
		fire_damage = 0.05
		hostile_attrition = 1
	}
	agaceph_ideas_7 = {
		defensiveness = 0.15
	}
}

# Akaviri Ideas
akaviri_ideas = {
	trigger = {
		OR = {
			primary_culture = akaviri
			primary_culture = islander
		}
	}
	free = yes
	start = {
		monthly_reform_progress_modifier = 0.05
		state_governing_cost = -0.1
	}
	bonus = {
		discipline = 0.075
	}
	akaviri_ideas_1 = {
		technology_cost = -0.05
	}
	akaviri_ideas_2 = {
		infantry_power = 0.1
	}
	akaviri_ideas_3 = {
		trade_steering = 0.1
		naval_forcelimit_modifier = 0.15
	}
	akaviri_ideas_4 = {
		production_efficiency = 0.1
	}
	akaviri_ideas_5 = {
		advisor_cost = -0.1
	}
	akaviri_ideas_6 = {
		defensiveness = 0.1
	}
	akaviri_ideas_7 = {
		global_trade_power = 0.15
	}
}

# Altmer Ideas
altmer_ideas = {
	trigger = {
		OR = {
			primary_culture = altmer
			primary_culture = corelanyan
		}
	}
	free = yes
	start = {
		administrative_efficiency = 0.05
	}
	bonus = {
		adm_tech_cost_modifier = -0.1
	}
	altmer_ideas_1 = {
		heavy_ship_power = 0.1
	}
	altmer_ideas_2 = {
		global_autonomy = -0.05
	}
	altmer_ideas_3 = {
		fire_damage = 0.1
	}
	altmer_ideas_4 = {
		discipline = 0.05
	}
	altmer_ideas_5 = {
		yearly_corruption = -0.1
	}
	altmer_ideas_6 = {
		prestige = 0.25
	}
	altmer_ideas_7 = {
		monarch_admin_power = 1
	}
}

# Arachnid Ideas
arachnid_ideas = {
	trigger = {
		primary_culture = arachnid
	}
	free = yes
	start = {
		# Natural cavalry
		cav_to_inf_ratio = 0.25
		cavalry_cost = -0.25
	}
	bonus = {
		# Ornaments 2
		global_manpower_modifier = 0.10
		reinforce_speed = 0.1
	}
	arachnid_ideas_1 = {
		# Arachnid Webbing: Allows us to save on build cost and time.
		build_cost = -0.15
		build_time = -0.05
	}
	arachnid_ideas_2 = {
		# Excitable yet Unstable
		movement_speed = 0.05
		global_unrest = 1.0
	}
	arachnid_ideas_3 = {
		# Silken Words
		improve_relation_modifier = 0.2
	}
	arachnid_ideas_4 = {
		# Bestial Nature
		shock_damage = 0.15
		technology_cost = 0.05
	}
	arachnid_ideas_5 = {
		# Ill Intent
		spy_offence = 0.25
	}
	arachnid_ideas_6 = {
		# Tough Carapaces
		shock_damage_received = -0.05
		fire_damage_received = -0.05
	}
	arachnid_ideas_7 = {
		# Ornaments 1: Living ornaments for decoration and sustenance
		prestige = 0.5
	}
}

# Archein Ideas
archein_ideas = {
	trigger = {
		primary_culture = archein
	}
	free = yes
	start = {
		idea_cost = -0.125
		improve_relation_modifier = 0.2
	}
	bonus = {
		global_trade_goods_size = 0.125
	}
	archein_ideas_1 = {
		yearly_corruption = 0.05
		global_tax_modifier = 0.20
	}
	archein_ideas_2 = {
		global_trade_power = 0.15
		relation_with_same_culture_group = -15
	}
	archein_ideas_3 = {
		diplomatic_reputation = 2
		relation_with_other_culture = 15
	}
	archein_ideas_4 = {
		shock_damage = 0.10
	}
	archein_ideas_5 = {
		hostile_attrition = 1
		max_hostile_attrition = 1
	}
	archein_ideas_6 = {
		state_maintenance_modifier = -0.30
	}
	archein_ideas_7 = {
		trade_company_governing_cost = -0.15
		production_efficiency = 0.10
	}
}

# Argonian Ideas
argonian_ideas = {
	trigger = {
		primary_culture = argonian
	}
	free = yes
	start = {
		land_morale = 0.15
		land_attrition = -0.2
	}
	bonus = {
		build_cost = -0.2
	}
	argonian_ideas_1 = {
		prestige = 0.5
		state_maintenance_modifier = -0.1
	}
	argonian_ideas_2 = {
		privateer_efficiency = 0.2
		hostile_attrition = 1
	}
	argonian_ideas_3 = {
		global_autonomy = -0.05
		global_missionary_strength = 0.1
	}
	argonian_ideas_4 = {
		global_unrest = -2
		religious_unity = 0.10
	}
	argonian_ideas_5 = {
		diplomatic_reputation = 0.5
		spy_offence = 0.1
	}
	argonian_ideas_6 = {
		infantry_shock = 0.15
	}
	argonian_ideas_7 = {
		years_of_nationalism = -5
		fabricate_claims_cost = -0.15
	}
}

# Ashlander Ideas
ashlander_ideas = {
	trigger = {
		OR = {
			primary_culture = ashlander_chimer
			primary_culture = ashlander_dunmer
		}
	}
	free = yes
	start = {
		tolerance_own = 1
		tolerance_heretic = -1
	}
	bonus = {
		global_missionary_strength = 0.05
	}
	ashlander_ideas_1 = {
		spy_offence = 0.15
	}
	ashlander_ideas_2 = {
		land_attrition = -0.1
	}
	ashlander_ideas_3 = {
		global_prov_trade_power_modifier = 0.1
	}
	ashlander_ideas_4 = {
		leader_land_manuever = 1
		movement_speed = 0.1
	}
	ashlander_ideas_5 = {
		technology_cost = -0.05
	}
	ashlander_ideas_6 = {
		build_cost = -0.1
	}
	ashlander_ideas_7 = {
		diplomatic_upkeep = 1
		rival_change_cost = -0.5
	}
}

atmoran_ideas = {
	start = {
		diplomatic_upkeep = 1
		shock_damage = 0.15
	}
	bonus = {
		naval_forcelimit_modifier = 0.25
	}
	trigger = {
		primary_culture = atmoran
	}
	free = yes
	#Origins of Men
	#It is thought that the first pre-literate humans came to Tamriel from Atmora.
	atmoran_ideas_1 = {
		diplomatic_reputation = 0.5
	}
	#Survivors of Civil War
	#Lots of people were murdered during bloody civil war between Atmoran Warlords.
	atmoran_ideas_2 = {
		discipline = 0.05
	}
	#Founders of Saarthal
	#The legendary city of Saarthal was the first Atmoran settlement out of homelands.
	atmoran_ideas_3 = {
		build_cost = -0.1
	}
	#Peace and Prosperous
	#Despite the difficult living conditions, Atmors were able to build a stable societyю
	atmoran_ideas_4 = {
		stability_cost_modifier = -0.1
	}
	#Five Hundread Companions
	#The group of wraithful warriors, who protect Atmoran Lands.
	atmoran_ideas_5 = {
		global_manpower_modifier = 0.1
	}
	#Atmoran Imigrants
	#Deteriorating weather conditions are forcing many to leave their homes and travel to new places.
	atmoran_ideas_6 = {
		colonists = 1
	}
	#A Place of Permanent Winter
	#Little life can survive harsh climate conditions of Atmora.
	atmoran_ideas_7 = {
		hostile_attrition = 1
	}
}

# Ayleid Ideas
ayleid_ideas = {
	trigger = {
		OR = {
			primary_culture = ayleid
			
		}
	}
	free = yes
	start = {
		production_efficiency = 0.1
		ae_impact = -0.1
	}
	bonus = {
		discipline = 0.075
	}
	ayleid_ideas_1 = {
		legitimacy = 0.5
		republican_tradition = 0.5
		horde_unity = 0.5
		devotion = 0.5
		meritocracy = 0.5
	}
	ayleid_ideas_2 = {
		development_cost = -0.05
	}
	ayleid_ideas_3 = {
		harsh_treatment_cost = -0.5
	}
	ayleid_ideas_4 = {
		idea_cost = -0.05
	}
	ayleid_ideas_5 = {
		diplomatic_upkeep = 1
	}
	ayleid_ideas_6 = {
		religious_unity = 0.10
	}
	ayleid_ideas_7 = {
		prestige = 0.5
	}
}

# Breton Ideas
breton_ideas = {
	trigger = {
		primary_culture = breton
	}
	free = yes
	start = {
		diplomatic_upkeep = 1
		rival_border_fort_maintenance = -0.33
	}
	bonus = {
		land_morale = 0.15
	}
	breton_ideas_1 = {
		legitimacy = 0.5
		republican_tradition = 0.5
		horde_unity = 0.5
		devotion = 0.5
		meritocracy = 0.5
	}
	breton_ideas_2 = {
		rival_change_cost = -0.5
		spy_offence = 0.25
	}
	breton_ideas_3 = {
		galley_power = 0.15
		global_ship_trade_power = 0.2
	}
	breton_ideas_4 = {
		vassal_forcelimit_bonus = 1
	}
	breton_ideas_5 = {
		global_tax_modifier = 0.1
	}
	breton_ideas_6 = {
		defensiveness = 0.15
	}
	breton_ideas_7 = {
		discipline = 0.05
	}
}

# Clannfear Ideas
clannfear_ideas = {
	trigger = {
		primary_culture = clanfear		# TODO: Change this to "clannfear" if the culture id is changed.
	}
	free = yes
	start = {
		land_morale = 0.15
		army_tradition_from_battle = 0.5
	}
	bonus = {
		global_manpower_modifier = 0.10
		reinforce_speed = 0.1
	}
	clannfear_ideas_1 = {
		# Simplest Ones
		technology_cost = 0.1
		ae_impact = -0.25
	}
	clannfear_ideas_2 = {
		# Defensive Frills and Boneplates
		shock_damage_received = -0.05
		fire_damage_received = -0.05
	}
	clannfear_ideas_3 = {
		# Talons for Digging and Tails for Tilling
		development_cost = -0.15
	}
	clannfear_ideas_4 = {
		# Unique Frills
		legitimacy = 0.5
		republican_tradition = 0.5
		horde_unity = 0.5
		devotion = 0.5
		meritocracy = 0.5
	}
	clannfear_ideas_5 = {
		# Clannfear Charge
		shock_damage = 0.1
	}
	clannfear_ideas_6 = {
		# Receptive Beasts
		same_culture_advisor_cost = 0.25
		advisor_cost = -0.10
		advisor_pool = 1
	}
	clannfear_ideas_7 = {
		# Matriarch System
		governing_capacity_modifier = 0.2
	}
}

# Colovian Ideas
colovian_ideas = {
	trigger = {
		primary_culture = colovian
	}
	free = yes
	start = {
		cavalry_power = 0.10
		global_manpower_modifier = 0.1
	}
	bonus = {
		land_forcelimit_modifier = 0.15
	}
	colovian_ideas_1 = {
		production_efficiency = 0.15
	}
	colovian_ideas_2 = {
		leader_cost = -0.5
		infantry_shock = 1
	}
	colovian_ideas_3 = {
		technology_cost = -0.05
	}
	colovian_ideas_4 = {
		trade_efficiency = 0.1
	}
	colovian_ideas_5 = {
		fort_maintenance_modifier = -0.33
	}
	colovian_ideas_6 = {
		trade_steering = 0.15
		army_tradition = 0.25
	}
	colovian_ideas_7 = {
		global_unrest = -2
	}
}

# Daedroth Ideas
daedroth_ideas = {
	trigger = {
		primary_culture = daedroth
	}
	free = yes
	start = {
		# Beasts of Oblivion
		land_morale = 0.15
		loot_amount = 0.25
	}
	bonus = {
		naval_tradition_from_battle = 0.1
		global_naval_barrage_cost = -0.2
	}
	daedroth_ideas_1 = {
		# Treasure Hunters
		available_province_loot = 0.5
	}
	daedroth_ideas_2 = {
		# Ambush Tactics
		leader_land_manuever = 2
		leader_land_shock = 1
	}
	daedroth_ideas_3 = {
		# Crocodile Tears
		ae_impact = -0.15
		diplomatic_reputation = -1
	}
	daedroth_ideas_4 = {
		# Bestial Daedra
		shock_damage = 0.15
		technology_cost = 0.05
	}
	daedroth_ideas_5 = {
		# Daedroth Brawn
		production_efficiency = 0.15
	}
	daedroth_ideas_6 = {
		# Terrifying Presence
		yearly_absolutism = 1
		max_absolutism = 10
		improve_relation_modifier = -0.1
	}
	daedroth_ideas_7 = {
		# Affinity to water
		leader_naval_manuever = 2
		own_coast_naval_combat_bonus = 1
	}
}

# Dremoran Ideas
dremoran_ideas = {
	trigger = {
		OR = {
			primary_culture = dremoran
			primary_culture = al_dremoran
		}
	}
	free = yes
	start = {
		global_regiment_cost = -0.1
		loot_amount = 0.5
	}
	bonus = {
		siege_ability = 0.15
	}
	dremoran_ideas_1 = {
		legitimacy = 0.5
		republican_tradition = 0.5
		horde_unity = 0.5
		devotion = 0.5
		meritocracy = 0.5
		administrative_efficiency = 0.025
	}
	dremoran_ideas_2 = {
		same_culture_advisor_cost = -0.10
		culture_conversion_cost = -0.2
	}
	dremoran_ideas_3 = {
		shock_damage = 0.05
		fire_damage = 0.05
	}
	dremoran_ideas_4 = {
		free_mil_policy = 1
		army_tradition = 0.25
	}
	dremoran_ideas_5 = {
		diplomatic_reputation = 0.5
		fabricate_claims_cost = -0.25
	}
	dremoran_ideas_6 = {
		claim_duration = 1
	}
	dremoran_ideas_7 = {
		diplomatic_upkeep = 1
		establish_order_cost = -0.25
	}
}

# Great House Ideas
great_house_ideas = {
	trigger = {
		OR = {
			primary_culture = house_chimer
			primary_culture = house_dunmer
		}
	}
	free = yes
	start = {
		diplomatic_upkeep = 1
		rival_change_cost = -0.5
	}
	bonus = {
		tolerance_heretic = -3
		tolerance_own = 3
	}
	great_house_ideas_1 = {
		global_trade_power = 0.1
	}
	great_house_ideas_2 = {
		infantry_power = 0.1
		army_tradition_decay = -0.01
	}
	great_house_ideas_3 = {
		development_cost = -0.15
		production_efficiency = 0.1
	}
	great_house_ideas_4 = {
		embargo_efficiency = 0.25
		spy_offence = 0.2
	}
	great_house_ideas_5 = {
		shock_damage_received = -0.1
		movement_speed = 0.05
	}
	great_house_ideas_6 = {
		global_autonomy = -0.075
		religious_unity = 0.10
	}
	great_house_ideas_7 = {
		reform_progress_growth = 0.10
		general_cost = -0.5
	}
}

# Hapsleet Ideas
hapsleet_ideas = {
	trigger = {
		primary_culture = hapsleet
	}
	free = yes
	start = {
		stability_cost_modifier = -0.25
		num_accepted_cultures = 1
	}
	bonus = {
		ae_impact = -0.25
	}
	hapsleet_ideas_1 = {
		global_own_trade_power = 0.33
		global_foreign_trade_power = -0.15
	}
	hapsleet_ideas_2 = {
		own_territory_dice_roll_bonus = 1
	}
	hapsleet_ideas_3 = {
		movement_speed = 0.05
		land_morale = 0.10
	}
	hapsleet_ideas_4 = {
		no_religion_penalty = yes
		relation_with_same_religion = -10
	}
	hapsleet_ideas_5 = {
		leader_land_fire = 1
	}
	hapsleet_ideas_6 = {
		naval_morale = 0.15
		merchants = 1
	}
	hapsleet_ideas_7 = {
		fort_maintenance_modifier = -0.33
	}
}

# Harvester Ideas
harvester_ideas = {
	trigger = {
		primary_culture = harvester
	}
	free = yes
	start = {
		shock_damage_received = -0.15
		fire_damage_received = -0.15
	}
	bonus = {
		fort_maintenance_modifier = -0.25
		defensiveness = 0.15
	}
	harvester_ideas_1 = {
		# Focus on the Fight
		shock_damage = 0.05
		fire_damage = 0.05
		technology_cost = 0.05
	}
	harvester_ideas_2 = {
		# Soulgem Enchantments
		idea_cost = -0.1
	}
	harvester_ideas_3 = {
		# Soul Stealers
		prestige_from_land = 0.25
		army_tradition_from_battle = 0.50
	}
	harvester_ideas_4 = {
		# Ebony Atunement
		production_efficiency = 0.15
	}
	harvester_ideas_5 = {
		# Spirit Soldiers
		global_manpower_modifier = 0.10
	}
	harvester_ideas_6 = {
		# Solitary Serpents
		improve_relation_modifier = -0.25
		tolerance_heretic = 2
		tolerance_heathen = 4
	}
	harvester_ideas_7 = {
		# Deathly Embrace
		hostile_attrition = 1
	}
}

# Imperial Ideas
imperial_ideas = {
	trigger = {
		primary_culture = imperial
	}
	free = yes
	start = {
		trade_efficiency = 0.1
		diplomatic_upkeep = 1
	}
	bonus = {
		core_creation = -0.15
		ae_impact = -0.10
	}
	imperial_ideas_1 = {
		num_accepted_cultures = 3
	}
	imperial_ideas_2 = {
		global_tax_modifier = 0.10
		tolerance_heathen = 2
	}
	imperial_ideas_3 = {
		diplomatic_reputation = 1
	}
	imperial_ideas_4 = {
		discipline = 0.05
		development_cost = -0.1
	}
	imperial_ideas_5 = {
		technology_cost = -0.05
	}
	imperial_ideas_6 = {
		range = 0.25
		trade_range_modifier = 0.25
	}
	imperial_ideas_7 = {
		global_unrest = -2
		culture_conversion_cost = -0.15
	}
}

# Kamal Ideas
kamal_ideas = {
	trigger = {
		primary_culture = kamal
	}
	free = yes
	start = {
		leader_cost = -0.25
		fort_maintenance_modifier = -0.15
	}
	bonus = {
		harsh_treatment_cost = -0.25
	}
	kamal_ideas_1 = {
		ae_impact = -0.2
	}
	kamal_ideas_2 = {
		land_attrition = -0.1
		hostile_attrition = 0.1
	}
	kamal_ideas_3 = {
		shock_damage = 0.1
	}
	kamal_ideas_4 = {
		siege_ability = 0.1
	}
	kamal_ideas_5 = {
		technology_cost = -0.025
		build_cost = -0.25
	}
	kamal_ideas_6 = {
		naval_forcelimit_modifier = 0.15
		naval_maintenance_modifier = -0.20
	}
	kamal_ideas_7 = {
		core_creation = -0.15
		free_leader_pool = 2
	}
}

# Keptu Ideas
keptu_ideas = {
	trigger = {
		primary_culture = keptu
	}
	free = yes
	start = {
		land_morale = 0.15
		production_efficiency = 0.1
	}
	bonus = {
		discipline = 0.05
		recover_army_morale_speed = 0.05
	}
	keptu_ideas_1 = {
		# Deserts and Mountains
		development_cost = -0.1
	}
	keptu_ideas_2 = {
		# Early Metalworkers
		global_institution_spread = 0.15
	}
	keptu_ideas_3 = {
		# Oral Tradition
		army_tradition = 0.25
	}
	keptu_ideas_4 = {
		# Linkers of the Mountains
		num_accepted_cultures = 3
	}
	keptu_ideas_5 = {
		# Adaptive Culture
		tolerance_heathen = 4
		tolerance_heretic = 2
		enemy_core_creation = -0.2
		core_decay_on_your_own = 0.5
	}
	keptu_ideas_6 = {
		# Keptu Stonecutters
		defensiveness = 0.15
	}
	keptu_ideas_7 = {
		# Triumph of Nirncrux
		reinforce_speed = 0.1
		manpower_recovery_speed = 0.1
	}
}

# kothringi Ideas
kothringi_ideas = {
	trigger = {
		primary_culture = kothringi
	}
	free = yes
	start = {
		galley_power = 0.2
		defensiveness = 0.1
	}
	bonus = {
		culture_conversion_cost = -0.25
	}
	kothringi_ideas_1 = {
		land_attrition = -0.15
	}
	kothringi_ideas_2 = {
		naval_forcelimit_modifier = 0.15
		ship_durability = 0.1
	}
	kothringi_ideas_3 = {
		diplomatic_reputation = 1
	}
	kothringi_ideas_4 = {
		movement_speed_onto_off_boat_modifier = 1
		own_coast_naval_combat_bonus = 1
	}
	kothringi_ideas_5 = {
		same_culture_advisor_cost = -0.15
	}
	kothringi_ideas_6 = {
		mercenary_cost = -0.5
	}
	kothringi_ideas_7 = {
		global_unrest = -3
	}
}

# Lilmothiit Ideas
lilmothiit_ideas = {
	trigger = {
		primary_culture = lilmothiit
	}
	free = yes
	start = {
		global_manpower_modifier = 0.1
		same_culture_advisor_cost = -0.2
	}
	bonus = {
		core_creation = -0.2
	}
	lilmothiit_ideas_1 = {
		manpower_recovery_speed = 0.1
	}
	lilmothiit_ideas_2 = {
		leader_land_shock = 1
	}
	lilmothiit_ideas_3 = {
		movement_speed = 0.1
	}
	lilmothiit_ideas_4 = {
		technology_cost = -0.075
		improve_relation_modifier = 0.1
	}
	lilmothiit_ideas_5 = {
		production_efficiency = 0.1
	}
	lilmothiit_ideas_6 = {
		build_time = -0.1
		build_cost = -0.1
	}
	lilmothiit_ideas_7 = {
		global_trade_goods_size_modifier = 0.1
		trade_steering = 0.2
	}
}

# Maormer Ideas
maormer_ideas = {
	trigger = {
		primary_culture = maormer
	}
	free = yes
	start = {
		land_attrition = -0.1
		production_efficiency = 0.1
	}
	bonus = {
		global_institution_spread = 0.15
	}
	maormer_ideas_1 = {
		trade_range_modifier = 0.25
		range = 0.25
	}
	maormer_ideas_2 = {
		movement_speed_onto_off_boat_modifier = 1
		loot_amount = 1
	}
	maormer_ideas_3 = {
		trade_value_modifier = 0.15
	}
	maormer_ideas_4 = {
		ship_durability = 0.1
	}
	maormer_ideas_5 = {
		capture_ship_chance = 0.2
		may_perform_slave_raid_on_same_religion = yes
	}
	maormer_ideas_6 = {
		global_tax_modifier = 0.10
	}
	maormer_ideas_7 = {
		infantry_power = 0.15
	}
}

# Minotaur Ideas
minotaur_ideas = {
	trigger = {
		primary_culture = minotaur
	}
	free = yes
	start = {
		num_accepted_cultures = 1
		land_forcelimit_modifier = 0.15
	}
	bonus = {
		global_own_trade_power = 0.25
	}
	minotaur_ideas_1 = {
		development_cost = -0.15
	}
	minotaur_ideas_2 = {
		loot_amount = 0.15
		available_province_loot = 0.5
	}
	minotaur_ideas_3 = {
		legitimacy = 0.5
		republican_tradition = 0.5
		horde_unity = 0.5
		devotion = 0.5
		meritocracy = 0.5
	}
	minotaur_ideas_4 = {
		infantry_power = 0.10
		cavalry_power = 0.10
	}
	minotaur_ideas_5 = {
		global_supply_limit_modifier = 0.25
		enemy_core_creation = 0.2
	}
	minotaur_ideas_6 = {
		movement_speed = 0.15
	}
	minotaur_ideas_7 = {
		shock_damage_received = -0.075
		fire_damage_received = -0.15
	}
}

# Naga Ideas
naga_ideas = {
	trigger = {
		primary_culture = naga
	}
	free = yes
	start = {
		war_exhaustion_cost = -0.20
		free_policy = 1
	}
	bonus = {
		same_culture_advisor_cost = -0.15
	}
	naga_ideas_1 = {
		land_attrition = -0.15
	}
	naga_ideas_2 = {
		infantry_power = 0.10
	}
	naga_ideas_3 = {
		trade_steering = 0.10
		embargo_efficiency = 0.25
	}
	naga_ideas_4 = {
		army_tradition_from_battle = 0.75
	}
	naga_ideas_5 = {
		morale_damage = 0.0125
	}
	naga_ideas_6 = {
		production_efficiency = 0.10
	}
	naga_ideas_7 = {
		diplomatic_reputation = 2
	}
}

# Nedic Ideas
nedic_ideas = {
	trigger = {
		primary_culture = nedic
	}
	free = yes
	start = {
		institution_spread_from_true_faith = 0.1
		build_time = -0.1
	}
	bonus = {
		land_morale = 0.1
		discipline = 0.05
	}
	nedic_ideas_1 = {
		defensiveness = 0.1
	}
	nedic_ideas_2 = {
		production_efficiency = 0.15
	}
	nedic_ideas_3 = {
		stability_cost_modifier = -0.2
	}
	nedic_ideas_4 = {
		num_accepted_cultures = 2
		promote_culture_cost = -0.5
	}
	nedic_ideas_5 = {
		core_creation = -0.15
	}
	nedic_ideas_6 = {
		naval_forcelimit_modifier = 0.15
		global_own_trade_power = 0.1
	}
	nedic_ideas_7 = {
		diplomatic_reputation = 1
	}
}

# Nibenean Ideas
nibenean_ideas = {
	trigger = {
		primary_culture = nibenean
	}
	free = yes
	start = {
		galley_power = 0.1
		global_institution_spread = 0.1
	}
	bonus = {
		num_accepted_cultures = 2
	}
	nibenean_ideas_1 = {
		production_efficiency = 0.1
		global_trade_goods_size_modifier = 0.1
	}
	nibenean_ideas_2 = {
		merc_maintenance_modifier = -0.25
	}
	nibenean_ideas_3 = {
		build_cost = -0.1
		development_cost = -0.15
	}
	nibenean_ideas_4 = {
		ship_power_propagation = 0.1
		trade_range_modifier = 0.25
	}
	nibenean_ideas_5 = {
		ae_impact = -0.10
	}
	nibenean_ideas_6 = {
		technology_cost = -0.1
	}
	nibenean_ideas_7 = {
		promote_culture_cost = -0.5
	}
}

# Nordic Ideas
nordic_ideas = {
	trigger = {
		primary_culture = nord
	}
	free = yes
	start = {
		infantry_cost = -0.2
		may_perform_slave_raid = yes
	}
	bonus = {
		leader_land_fire = 1
		leader_land_shock = 1
	}
	nordic_ideas_1 = {
		land_morale = 0.10
	}
	nordic_ideas_2 = {
		global_manpower_modifier = 0.10
	}
	nordic_ideas_3 = {
		land_attrition = -0.15
		hostile_attrition = 0.25
	}
	nordic_ideas_4 = {
		infantry_shock = 0.15
	}
	nordic_ideas_5 = {
		idea_cost = -0.1
	}
	nordic_ideas_6 = {
		naval_morale = 0.1
	}
	nordic_ideas_7 = {
		global_unrest = -2
	}
}

# Paatru Ideas
paatru_ideas = {
	trigger = {
		primary_culture = paatru
	}
	free = yes
	start = {
		vassal_forcelimit_bonus = 0.33
		ae_impact = -0.20
	}
	bonus = {
		diplomatic_upkeep = 1
	}
	paatru_ideas_1 = {
		tolerance_own = 2
	}
	paatru_ideas_2 = {
		global_allowed_num_of_buildings = 1
	}
	paatru_ideas_3 = {
		land_morale = 0.15
	}
	paatru_ideas_4 = {
		liberty_desire = -10
		autonomy_change_time = -0.25
	}
	paatru_ideas_5 = {
		years_of_nationalism = -5
	}
	paatru_ideas_6 = {
		cavalry_power = 0.25
		cavalry_cost = 0.15
	}
	paatru_ideas_7 = {
		unjustified_demands = -0.33
	}
}

# Po Tun Ideas
po_tun_ideas = {
	trigger = {
		primary_culture = po_tun
	}
	free = yes
	start = {
		land_morale = 0.1
		global_tax_modifier = 0.1
	}
	bonus = {
		trade_range_modifier = 0.2
	}
	po_tun_ideas_1 = {
		movement_speed = 0.1
	}
	po_tun_ideas_2 = {
		global_supply_limit_modifier = 0.1
	}
	po_tun_ideas_3 = {
		diplomatic_reputation = 1
	}
	po_tun_ideas_4 = {
		same_culture_advisor_cost = -0.10
	}
	po_tun_ideas_5 = {
		fire_damage = 0.1
	}
	po_tun_ideas_6 = {
		imperial_mandate = 0.15
		prestige = 0.25
	}
	po_tun_ideas_7 = {
		free_policy = 1
	}
}

# Reachmen Ideas
reachmen_ideas = {
	trigger = {
		primary_culture = reachmen
	}
	free = yes
	start = {
		movement_speed = 0.1
		infantry_fire = 0.15
	}
	bonus = {
		unjustified_demands = -0.2
	}
	reachmen_ideas_1 = {
		defensiveness = 0.15
	}
	reachmen_ideas_2 = {
		war_exhaustion_cost = -0.33
	}
	reachmen_ideas_3 = {
		land_attrition = -0.15
	}
	reachmen_ideas_4 = {
		leader_cost = -0.15
	}
	reachmen_ideas_5 = {
		fort_maintenance_modifier = -0.5
	}
	reachmen_ideas_6 = {
		ae_impact = -0.10
	}
	reachmen_ideas_7 = {
		global_trade_goods_size_modifier = 0.15
	}
}

# Redguard Ideas
redguard_ideas = {
	trigger = {
		primary_culture = redguard
	}
	free = yes
	start = {
		caravan_power = 0.2
		global_regiment_recruit_speed = -0.2
	}
	bonus = {
		placed_merchant_power = 3
	}
	redguard_ideas_1 = {
		hostile_attrition = 1
		land_attrition = -0.1
	}
	redguard_ideas_2 = {
		rival_border_fort_maintenance = -0.5
	}
	redguard_ideas_3 = {
		ae_impact = -0.10
		province_warscore_cost = -0.2
	}
	redguard_ideas_4 = {
		global_colonial_growth = 20
		development_cost = -0.1
	}
	redguard_ideas_5 = {
		army_tradition = 0.25
		reform_progress_growth = 0.1
	}
	redguard_ideas_6 = {
		infantry_power = 0.10
	}
	redguard_ideas_7 = {
		tolerance_own = 2
		tolerance_heathen = -2
	}
}

# Riekling Ideas
riekling_ideas = {
	trigger = {
		primary_culture = riekling
	}
	free = yes
	start = {
		build_time = -0.2
		mil_advisor_cost = -0.2
	}
	bonus = {
		envoy_travel_time = -0.5
	}
	riekling_ideas_1 = {
		global_manpower_modifier = 0.1
	}
	riekling_ideas_2 = {
		spy_offence = 0.2
	}
	riekling_ideas_3 = {
		land_morale = 0.1
	}
	riekling_ideas_4 = {
		cavalry_flanking = 0.25
	}
	riekling_ideas_5 = {
		hostile_attrition = 1
	}
	riekling_ideas_6 = {
		stability_cost_modifier = -0.25
	}
	riekling_ideas_7 = {
		fire_damage_received = -0.15
	}
}

# Sarpa Ideas
sarpa_ideas = {
	trigger = {
		primary_culture = sarpa
	}
	free = yes
	start = {
		envoy_travel_time = -0.33
		max_absolutism = 10
	}
	bonus = {
		mercantilism_cost = -0.15
	}
	sarpa_ideas_1 = {
		movement_speed = 0.10
	}
	sarpa_ideas_2 = {
		religious_unity = 0.25
	}
	sarpa_ideas_3 = {
		global_trade_goods_size_modifier = 0.15
	}
	sarpa_ideas_4 = {
		diplomatic_reputation = -1
		can_chain_claim = yes
	}
	sarpa_ideas_5 = {
		siege_ability = 0.10
		fire_damage_received = -0.05
	}
	sarpa_ideas_6 = {
		morale_damage_received = -0.025
	}
	sarpa_ideas_7 = {
		privateer_efficiency = 0.25
		embargo_efficiency = 0.25
	}
}

defineloc senche_ideas = "Senche Ideas"
defineloc senche_ideas_start = "Senche Traditions"
defineloc senche_ideas_bonus = "Senche Ambition"
senche_ideas = {
	start = {
		religious_unity = 0.25
		num_accepted_cultures = 2
	}
	bonus = {
		advisor_cost = -0.20
	}
	trigger = {
		primary_culture = senche
	}
	free = yes
	
	defineloc senche_ideas_1 = "Quadrupedal Kin"
	defineloc senche_ideas_1_desc = "The Khajiiti people consider themselves cousins to the Senche-cats, and the Senche-Cat's secondary term, Senche, is also used to describe the Senche and Senche-raht khajiit furstocks. However, senche-cats and Khajiit senches are distinct species."
    senche_ideas_1 = {
    		improve_relation_modifier = 0.2
    }
    defineloc senche_ideas_2 = "Prowling Predators"
    defineloc senche_ideas_2_desc = "They prowl in the cliffs and escarpments for goats and marmots."
    senche_ideas_2 = {
		cavalry_flanking = 0.25
    }
    defineloc senche_ideas_3 = "Sweet Tooth"
    defineloc senche_ideas_3_desc = "You need only know how much moon-sugar is enough moon-sugar."
    senche_ideas_3 = {
		production_efficiency = -0.05
		land_morale = 0.10
    }
    defineloc senche_ideas_4 = "Moon Guardians"
    defineloc senche_ideas_4_desc = "They are used by the Bi-Lunar Guard as mounts at the Palace of the Mane near Torval, and riding one near them is considered taboo."
    senche_ideas_4 = {
		prestige = 0.5
		diplomatic_reputation = 1
    }
    defineloc senche_ideas_5 = "Shadowghosts"
    defineloc senche_ideas_5_desc = "Shadowghost Senches are an oversized breed of black senche-panthers, differing visually in their white spots. They are associated with the Daedric Prince Namiira, who is thought to send them as mounts to bear away those who are doomed to die."
    senche_ideas_5 = {
		hostile_attrition = 1
    }
    defineloc senche_ideas_6 = "Serval Luck"
    defineloc senche_ideas_6_desc = "The sight of a Senche-Serval is a sign of good luck."
    senche_ideas_6 = {
		global_attacker_dice_roll_bonus = 1
    }
    defineloc senche_ideas_7 = "Servants No More"
    defineloc senche_ideas_7_desc = "Time to domesticate bipeds."
    senche_ideas_7 = {
		fabricate_claims_cost = -0.25
    }
}

# Sinistral Elves Ideas
sinistral_elves_ideas = {
	trigger = {
		primary_culture = sinistral
	}
	free = yes
	start = {
		army_tradition_decay = -0.01
		naval_maintenance_modifier = -0.2
	}
	bonus = {
		discipline = 0.05
	}
	sinistral_elves_ideas_1 = {
		transport_cost = -0.5
		galley_power = 0.15
	}
	sinistral_elves_ideas_2 = {
		defensiveness = 0.15
	}
	sinistral_elves_ideas_3 = {
		core_creation = -0.15
		num_accepted_cultures = 1
	}
	sinistral_elves_ideas_4 = {
		capture_ship_chance = 0.2
		global_sailors_modifier = 0.15
	}
	sinistral_elves_ideas_5 = {
		great_project_upgrade_cost = -0.15
	}
	sinistral_elves_ideas_6 = {
		diplomats = 1
		prestige = 0.25
	}
	sinistral_elves_ideas_7 = {
		army_tradition = 0.25
	}
}

# Sload Ideas
sload_ideas = {
	trigger = {
		primary_culture = sload
	}
	free = yes
	start = {
		privateer_efficiency = 0.2
		may_perform_slave_raid = yes
	}
	bonus = {
		spy_offence = 0.25
	}
	sload_ideas_1 = {
		# Thras Endures
		enemy_core_creation = 2.5
		core_creation = 0.25
	}
	sload_ideas_2 = {
		# Advanced Intellect
		technology_cost = -0.1
	}
	sload_ideas_3 = {
		# Noxious Fumes
		fire_damage = 0.15
	}
	sload_ideas_4 = {
		# Skilled Actors
		diplomatic_annexation_cost = -0.15
		reduced_liberty_desire = 10
		diplomatic_reputation = -1.5
	}
	sload_ideas_5 = {
		# Deliberate Engagements
		shock_damage_received = -0.05
		fire_damage_received = -0.05
		movement_speed = -0.05
	}
	sload_ideas_6 = {
		# Irreligious Society
		tolerance_heathen = 4
		tolerance_heretic = 2
		global_missionary_strength = -0.025
	}
	sload_ideas_7 = {
		# Destabilizing Influence
		rebel_support_efficiency = 0.5
	}
}

# Snow Elven Ideas
snow_elven_ideas = {
	trigger = {
		primary_culture = snow_elven
	}
	free = yes
	start = {
		culture_conversion_cost = -0.1
		global_tax_modifier = 0.1
	}
	bonus = {
		advisor_cost = -0.15
	}
	snow_elven_ideas_1 = {
		idea_cost = -0.05
		technology_cost = -0.05
	}
	snow_elven_ideas_2 = {
		land_attrition = -0.15
	}
	snow_elven_ideas_3 = {
		all_power_cost = -0.025
	}
	snow_elven_ideas_4 = {
		great_project_upgrade_cost = -0.25
	}
	snow_elven_ideas_5 = {
		land_morale = 0.1
	}
	snow_elven_ideas_6 = {
		global_trade_goods_size_modifier = 0.15
	}
	snow_elven_ideas_7 = {
		missionaries = 1
	}
}

# Soul Shriven Ideas
soul_shriven_ideas = {
	trigger = {
		primary_culture = soul_shriven
	}
	free = yes
	start = {
		num_accepted_cultures = 2
		promote_culture_cost = -0.5
	}
	bonus = {
		yearly_corruption = -0.1
	}
	soul_shriven_ideas_1 = {
		discipline = 0.05
	}
	soul_shriven_ideas_2 = {
		production_efficiency = 0.15
	}
	soul_shriven_ideas_3 = {
		global_manpower_modifier = -0.33
		manpower_recovery_speed = 0.33
	}
	soul_shriven_ideas_4 = {
		global_regiment_cost = -0.2
		global_regiment_recruit_speed = -0.2
	}
	soul_shriven_ideas_5 = {
		land_attrition = -0.5
	}
	soul_shriven_ideas_6 = {
		land_morale = 0.15
	}
	soul_shriven_ideas_7 = {
		all_power_cost = -0.05
	}
}

# Tang Mo Ideas
tang_mo_ideas = {
	trigger = {
		primary_culture = tangmo
	}
	free = yes
	start = {
		naval_forcelimit_modifier = 0.25
		global_ship_trade_power = 0.15
	}
	bonus = {
		same_culture_advisor_cost = -0.25
	}
	tang_mo_ideas_1 = {
		galley_power = 0.1
		global_ship_repair = 0.5
	}
	tang_mo_ideas_2 = {
		global_trade_goods_size_modifier = 0.2
		trade_efficiency = 0.1
	}
	tang_mo_ideas_3 = {
		movement_speed = 0.10
		movement_speed_onto_off_boat_modifier = 0.5
	}
	tang_mo_ideas_4 = {
		land_morale = 0.10
		naval_morale = 0.10
	}
	tang_mo_ideas_5 = {
		defensiveness = 0.10
	}
	tang_mo_ideas_6 = {
		diplomatic_upkeep = 1
	}
	tang_mo_ideas_7 = {
		trade_range_modifier = 0.25
		global_trade_power = 0.15
	}
}

# Tsaesci Ideas
tsaesci_ideas = {
	trigger = {
		primary_culture = tsaesci
	}
	free = yes
	start = {
		naval_forcelimit_modifier = 0.25
		global_ship_cost = -0.2
	}
	bonus = {
		core_creation = -0.2
	}
	tsaesci_ideas_1 = {
		spy_offence = 0.15
	}
	tsaesci_ideas_2 = {
		shock_damage_received = -0.1
		production_efficiency = 0.1
	}
	tsaesci_ideas_3 = {
		global_institution_spread = 0.1
	}
	tsaesci_ideas_4 = {
		artillery_levels_available_vs_fort = 1
	}
	tsaesci_ideas_5 = {
		mercenary_manpower = 0.25
	}
	tsaesci_ideas_6 = {
		ae_impact = -0.25
	}
	tsaesci_ideas_7 = {
		years_of_nationalism = -5
	}
}

# Vampire Ideas
vampire_ideas = {
	trigger = {
		primary_culture = vampire
	}
	free = yes
	start = {
		loot_amount = 0.5
		movement_speed = 0.15
	}
	bonus = {
		ae_impact = -0.1
	}
	vampire_ideas_1 = {
		prestige = 0.75
	}
	vampire_ideas_2 = {
		land_morale = 0.10
		land_forcelimit_modifier = 0.10
	}
	vampire_ideas_3 = {
		global_manpower_modifier = -0.35
		manpower_recovery_speed = 0.15
	}
	vampire_ideas_4 = {
		shock_damage = 0.1
	}
	vampire_ideas_5 = {
		production_efficiency = 0.15
	}
	vampire_ideas_6 = {
		idea_cost = -0.1
		unjustified_demands = -0.2
	}
	vampire_ideas_7 = {
		state_maintenance_modifier = -0.15
		state_governing_cost = -0.15
	}
}

# Xivilai Ideas
xivilai_ideas = {
	trigger = {
		primary_culture = xivilai
	}
	free = yes
	start = {
		core_creation = -0.15
		diplomatic_reputation = 1
	}
	bonus = {
		vassal_forcelimit_bonus = 0.2
		vassal_income = 0.2
	}
	xivilai_ideas_1 = {
		# Unbound Xivilai
		liberty_desire = 25
	}
	xivilai_ideas_2 = {
		# Professional Attitude
		drill_gain_modifier = 0.25
		yearly_army_professionalism = 0.0025
	}
	xivilai_ideas_3 = {
		#Xivilai Pomp 
		prestige = 0.5
	}
	xivilai_ideas_4 = {
		# Xivilai Duality
		reserves_organisation = 0.10
		backrow_artillery_damage = 0.15
	}
	xivilai_ideas_5 = {
		# Of Many Trades
		global_trade_power = 0.05
		production_efficiency = 0.05
	}
	xivilai_ideas_6 = {
		# Dedicated Knights
		discipline = 0.05
		infantry_power = 0.10
		infantry_cost = 0.2
	}
	xivilai_ideas_7 = {
		# Dominion Over the Weak
		reduced_liberty_desire = 25
	}
}

# Yokudan Ideas
yokudan_ideas = {
	trigger = {
		primary_culture = yokudan
	}
	free = yes
	start = {
		land_attrition = -0.1
		embracement_cost = -0.15
	}
	bonus = {
		state_maintenance_modifier = -0.2
	}
	yokudan_ideas_1 = {
		global_ship_trade_power = 0.15
	}
	yokudan_ideas_2 = {
		infantry_power = 0.10
	}
	yokudan_ideas_3 = {
		development_cost = -0.1
		technology_cost = -0.05
	}
	yokudan_ideas_4 = {
		army_tradition_from_battle = 1
	}
	yokudan_ideas_5 = {
		naval_forcelimit_modifier = 0.10
		global_colonial_growth = 15
	}
	yokudan_ideas_6 = {
		build_cost = -0.1
		great_project_upgrade_cost = -0.1
	}
	yokudan_ideas_7 = {
		discipline = 0.025
	}
}

#############################
###  Culture Group Ideas  ###
#############################

# Bosmer Ideas
bosmer_ideas = {
	trigger = {
		culture_group = bosmer_cg
	}
	free = yes
	start = {
		build_cost = -0.1
		build_time = -0.1
	}
	bonus = {
		diplomatic_reputation = 1
	}
	bosmer_ideas_1 = {
		core_creation = -0.1
	}
	bosmer_ideas_2 = {
		hostile_attrition = 1
	}
	bosmer_ideas_3 = {
		culture_conversion_cost = -0.15
	}
	bosmer_ideas_4 = {
		global_foreign_trade_power = 0.1
	}
	bosmer_ideas_5 = {
		manpower_recovery_speed = 0.15
	}
	bosmer_ideas_6 = {
		infantry_power = 0.1
	}
	bosmer_ideas_7 = {
		development_cost = -0.15
	}
}

# Dwemer Ideas
dwemer_ideas = {
	trigger = {
		culture_group = dwemer_cg
	}
	free = yes
	start = {
		global_institution_spread = 0.15
		embracement_cost = -0.25
	}
	bonus = {
		all_power_cost = -0.05
	}
	dwemer_ideas_1 = {
		build_cost = -0.15
		build_time = -0.1
	}
	dwemer_ideas_2 = {
		technology_cost = -0.05
	}
	dwemer_ideas_3 = {
		defensiveness = 0.15
	}
	dwemer_ideas_4 = {
		production_efficiency = 0.15
	}
	dwemer_ideas_5 = {
		same_culture_advisor_cost = -0.10
	}
	dwemer_ideas_6 = {
		land_morale = 0.1
		movement_speed = -0.1
	}
	dwemer_ideas_7 = {
		global_colonial_growth = 30
	}
}

# Giant Ideas
giant_ideas = {
	trigger = {
		culture_group = giant_cg
	}
	free = yes
	start = {
		core_creation = -0.15
		ae_impact = -0.15
	}
	bonus = {
		development_cost = -0.2
	}
	giant_ideas_1 = {
		global_unrest = -3
		global_regiment_cost = -0.2
	}
	giant_ideas_2 = {
		shock_damage = 0.10
	}
	giant_ideas_3 = {
		production_efficiency = 0.1
		trade_value_modifier = 0.1
	}
	giant_ideas_4 = {
		culture_conversion_cost = -0.15
	}
	giant_ideas_5 = {
		global_tax_modifier = 0.1
	}
	giant_ideas_6 = {
		religious_unity = 0.25
	}
	giant_ideas_7 = {
		land_morale = 0.10
	}
}

# Khajiit Ideas
khajiit_ideas = {
	trigger = {
		culture_group = khajiiti_cg
	}
	free = yes
	start = {
		global_trade_power = 0.1
	}
	bonus = {
		trade_steering = 0.15
	}
	khajiit_ideas_1 = {
		legitimacy = 0.35
		republican_tradition = 0.35
		horde_unity = 0.35
		devotion = 0.35
		meritocracy = 0.35
	}
	khajiit_ideas_2 = {
		cavalry_power = 0.1
	}
	khajiit_ideas_3 = {
		spy_offence = 0.15
	}
	khajiit_ideas_4 = {
		merchants = 1
	}
	khajiit_ideas_5 = {
		production_efficiency = 0.1
	}
	khajiit_ideas_6 = {
		shock_damage = 0.1
	}
	khajiit_ideas_7 = {
		improve_relation_modifier = 0.25
	}
}

# Orcish Ideas
orcish_ideas = {
	trigger = {
		culture_group = orsimer_cg
	}
	free = yes
	start = {
		monarch_military_power = 2
		infantry_cost = -0.2
	}
	bonus = {
		vassal_forcelimit_bonus = 0.25
	}
	orcish_ideas_1 = {
		infantry_power = 0.10
	}
	orcish_ideas_2 = {
		shock_damage_received = -0.10
		fire_damage_received = -0.10
	}
	orcish_ideas_3 = {
		prestige_from_land = 1
	}
	orcish_ideas_4 = {
		reform_progress_growth = 0.10
	}
	orcish_ideas_5 = {
		production_efficiency = 0.2
	}
	orcish_ideas_6 = {
		global_manpower_modifier = 0.10
		army_tradition = 0.25
	}
	orcish_ideas_7 = {
		stability_cost_modifier = -0.2
		build_cost = -0.1
	}
}

scamp_ideas = {
	start = {
		religious_unity = 0.15
		hostile_attrition = 1
	}
	bonus = {
		power_projection_from_insults = 0.50
	}

	trigger = {
		primary_culture = scamp
	}
	free = yes
	
	# Indispensable Minions
	# Scamps are the extremely useful assistants, as their nimble hands can carry and manipulate objects, and they are just tricky enough to be cunning opponents in combat.
	scamp_ideas_1 = {
		state_maintenance_modifier = -0.10
	}
	# Delight in Cruelty
	# Scamps are known for their cruelty toward other races. Perhaps this is their way of reflecting on their own hardships? More likely, though, they simply enjoy the process.
	scamp_ideas_2 = {
		harsh_treatment_cost = -0.25
		years_of_nationalism = 10
		recover_army_morale_speed = 0.05
	}
	# Soul Owners
	# Few creatures of Oblivion can boast of a soul... that can be sold or imprisoned in stone, but Scamps can.
	scamp_ideas_3 = {
		global_foreign_trade_power = 0.1
	}
	# Servants of the Many
	# Even thought Scamps are most commonly associated with Mehrunes Dagon, they also serve Molag Bal, Sheogorath and Sanguine.
	scamp_ideas_4 = {
		heir_chance = 0.15
		promote_culture_cost = -0.25
		global_trade_goods_size_modifier = 0.10
		diplomatic_reputation = -1.5
	}
	# Fire Magicians
	# Scamps are known to master their skills of fire magic and they can easily launch fireballs from their hands and rain fire from the sky.
	scamp_ideas_5 = {
		fire_damage = 0.10
		leader_land_fire = 1
	}
	# Fearless Midgets
	# Since Scamps are small and not particularly intelligent, they don't need to worry about the inherent fear of more intelligent Daedra, such as Dremora.
	scamp_ideas_6 = {
		stability_cost_modifier = -0.15
		technology_cost = 0.15
		idea_cost = -0.10
	}
	# Secret Language
	# It is known, that Scamps  possess a language, ut it is too difficult for other races to comprehence.
	scamp_ideas_7 = {
		global_spy_defence = 0.15
	}
}

imga_ideas = {
	start = {
		unjustified_demands = -0.25
		reserves_organisation = 0.25
	}
	bonus = {
		global_tax_modifier = 0.15
	}

	trigger = {
		primary_culture = imga
	}
	free = yes
	
	# The Ancient Socienty
	# Imga are the intelligent apes, who have flourished in Valenwood long before the Aldmer ever arrived there.
	imga_ideas_1 = {
		prestige_decay = -0.01
	}
	# Self-Proclaimed Barons
	# Each individual Imga bears some kind of title, be it Baron, Duke, Earl, or the like, which they use when addressing the members of other races.
	imga_ideas_2 = {
		state_governing_cost = -0.1
	}
	# Lightness and Agility
	# The Ape-men are naturally dexterous, and are renowned for their agility. They can easily climb trees and nimbly hide in the forest floor.
	imga_ideas_3 = {
		movement_speed = 0.10
	}
	# Altmeri Superiority
	# Imga see the Altmeri as their superiors and as a portrait of an ideal, civilized society. Imga go to desperate measures to emulate the Altmeri: they wear capes, practice with the dueling sword, and attempt to speak with perfect enunciation and courtly manners despite their gravelly, baritone voices.
	imga_ideas_4 = {
		global_institution_spread = 0.10
	}
	# Kollopi Gatherers
	# The Kollopi are arboreal rodents that live in the province of Valenwood. They feed off the tender, albeit slim branches of the oaks to be later collected by Imga and used as a simple peasant dish. Kollopi are served as delectable and savory balls of flesh marinated in spices and juices.
	imga_ideas_5  = {
		global_manpower_modifier = 0.10
	}
	# Multicultural Neighbours 
	# Imga cohabit in the forests with the Bosmer tribes and Human settlers, who come into the Valenwood to establish trading posts.
	imga_ideas_6 = {
		num_accepted_cultures = 1
	}
	# Marukh People
	# The most notable Imga was undoubtedly Marukh, a First Era prophet who rose to prominence during the Camoran Dynasty. His teachings sparked the massive cultural and spiritual movement, that resulted in formation of the Alessian Order.
	imga_ideas_7 = {
		global_missionary_strength = 0.015
	}
}

skaal_ideas = {
	start = {
		land_morale = 0.15
		reduced_liberty_desire = 10
	}
	bonus = {
		advisor_cost = -0.15
	}

	trigger = {
		primary_culture = skaal
	}
	free = yes
	
	# Dragon Loyalists
	# The Skaal believe, that they descended from the Dragon Cult faction, isolated from Skyrim after the climatic battle with the Traitor, known as Miraak, who was seduced by Herma-Mora, the Skaal's name for the Daedric Prince Hermaeus Mora.
	skaal_ideas_1 = {
		tolerance_own = 1.5
		establish_order_cost = -0.10
		relation_with_heathens = -35
	}
	# Stalhrim Forging
	# For all the Skaals Stalhrim is considered to be a holy material. The art of forging Stalhrim into weapons and armor is also sacred and only certain members of the Skaal were charged as keepers of this ancient tradition. As such, knowledge of stalhrim smithing is very rare.
	skaal_ideas_2 = {
		shock_damage = 0.10
	}
	# Good Neighbours
	# Skaals are known as trusting and hospitable people, who welcome trangers without any suspicion.
	skaal_ideas_3 = {
		improve_relation_modifier = 0.25
		global_spy_defence = -0.25
	}
	# Keepers of the Nature
	# All life is sacred to the Skaal, and they try to live in harmony with nature, impacting their environment as little as possible. For example, they hunt deer, bear, and horker, only to the extent necessary for survival, never for enjoyment or practice, and gather their firewood from dead trees that have already fallen.
	skaal_ideas_4 = {
		administrative_efficiency = 0.10
		build_cost = 0.15
		build_time = 0.25
	}
	# Land of Snow Leopards
	# Lots of Snow Leopards live in the forests of Solstheim. Those animals can be domesticated with some time and effots to later be used as mounts.
	skaal_ideas_5 = {
		cavalry_power = 0.10
		caravan_power = 0.10
	}
	# Exchange instead of Trade
	# The Skaal are self-sufficient, with the land providing all they require. As such, they rarely accept coin in trade from travelers and prefer to barter trade goods instead of buying them.
	skaal_ideas_6 = {
		interest = -1
		embargo_efficiency = 0.25
	}
	# The Ancient Carvings
	# The entire history of the Skaal is preserved not only in their tales, passed down by word of mouth, but it is also carved on the many stones and pillars that have been scattered throughout Solstheim since the Meretical Era. These texts can help Skaalas better understand their past in order to gain a clear vision of the future, or at the very least help them find the long-lost power used by the Dragon Priests.
	skaal_ideas_7 = {
		idea_cost = -0.10
		accept_vassalization_reasons = 25
	}
}

goblin_ideas = {
	start = {
		fabricate_claims_cost = -0.25
		land_forcelimit_modifier = 0.15
	}
	bonus = {
		autonomy_change_time = -0.25
	}

	trigger = {
		primary_culture = goblin
	}
	free = yes
	
	# The Blue God
	# All the Goblins worship Malacath, however, they can do it in different ways. For example, some goblins paint his statures in blue colour, while others conduct various rituals to please Muluk, one of the Malacath's aspects.  
	goblin_ideas_1 = {
		tolerance_heretic = 1.5
		land_morale = 0.10
	}
	# Subterranean Agriculture
	# Goblins are known for their practices of underground farming of kwana, spiders and rats, which can be used as a source of food or provide the tribe with various alchemical ingredients.
	goblin_ideas_2 = {
		global_trade_goods_size_modifier = 0.10
	}
	# The Durzogs
	# Durzogs are reptilian dog-like creatures that goblins raise for war and to hunt down their victims. Goblins also heavily use durzogs for a multitude of other uses, mostly relating to the crafting of items requiring hides.
	goblin_ideas_3 = {
		cavalry_power = 0.05
		production_efficiency = 0.05
	}
	# Warlords and Shamans
	# Goblin societies are ofthen led by the strongest and largest goblins, called warlords, or by religious leaders - shamans.
	goblin_ideas_4 = {
		leader_land_fire = 1
		leader_siege = 1
		global_heretic_missionary_strength = 0.01
	}
	# The Founders of Orsinium
	# Goblins from various tribes, including those who were freed from slavery by their masters or simply escaped, took part in the founding of Orsinium, thereby improving relations with Orcs and other Goblin-ken.
	goblin_ideas_5 = {
		relation_with_same_culture_group = 25
	}
	# Goblin Metalworking
	# Due to Dwemer influence many Goblin Clans now posses the knowledge of smithing art. Even though these technologies are limited by capabilities of Dwarven Metal, they still allow to create various swords, daggers, helmets and shields.
	goblin_ideas_6 = {
		infantry_power = 0.05
		global_regiment_cost = -0.10
	}
	# A Forgotten History
	# Goblin society was not always violent and primitive. They used to create magical runes and mastered the art of inscribing handmade obelisks.
	goblin_ideas_7 = {
		free_policy = 1
	}
}

falmer_ideas = {
	trigger = {
		OR = {
			primary_culture = falmer
			tag = FAL
		}
	}
	free = yes
	start = {
		manpower_recovery_speed = 0.25
		envoy_travel_time = -0.35
	}
	bonus = {
		global_unrest = -3.5
	}
	# Corrupted Elves
	# The Falmer are blind descendants of the ancient Snow Elves that live deep beneath the surface. 
	falmer_ideas_1 = {
		unjustified_demands = -0.15
		prestige_decay = 0.01
	}
	# Chaurus Breeding
	# Chaurus are large insects, who possess a highly poisonous spit and a powerful bite. They became an irreplacable livestock for the Falmer, who use their chitin for armour and eggs as alchemy ingredient.
	falmer_ideas_2 = {
		production_efficiency = 0.10
	}
	# Protection in Ruins
	# Underground cities of the Dwemers are a safe place in case of any invasion from the surface, even in the absence of their original owners. 
	falmer_ideas_3 = {
		defensiveness = 0.15
		fort_maintenance_modifier = -0.10
	}
	# Zero-Waste Construction
	# The architecture of the Falmers may be primitive, but to build a tent and a couple of fences around it requires only the materials that remain after the chaurus and shellbugs are cut.
	falmer_ideas_4 = {
		build_cost = -0.15
		build_time = 0.25
	}
	# Raiders of the Underworld
	# Using a network of underground passages and tunnels, the Falmer can make lightning raids on settlements or merchant caravans, obtaining anything they cannot manufacture themselves.
	falmer_ideas_5 = {
		loot_amount = 0.25
		available_province_loot = 0.25
	}
	# Shock Mages
	# The only branch of magic that the Falmer's have been able to preserve is the School of Destruction, whose adepts first turn any enemy to flight with their fury and then leave him nothing but ashes. 
	falmer_ideas_6 = {
		shock_damage = 0.10
	}
	# The Light of Hope
	# Despite all the metamorphosis that happened during the thousands of years of life underground, Falmer become smarter with each generation, step by step and bit by bit acquiring again, once forgotten knowledge.
	falmer_ideas_7 = {
		idea_cost = -0.10
	}
}

hollow_ideas = {
	trigger = {
		OR = {
			primary_culture = hollow
			tag = VB1
		}
	}
	free = yes
	start = {
		num_accepted_cultures = 1
		land_maintenance_modifier = -0.15
	}
	bonus = {
		advisor_pool = 1
	}
	# Ostion's Legacy
	# Ostion was an altmer boy with the powers to shape the land, who was sent to the Valenwood to build a great city, as a test by those who sought to use his power as a means to conquer. Ostion's work turned out to be a struggle with the Valenwood itself, leading to many deaths and making the boy forget everything but his goal. However, the Valenwood had also forgotten the peoples who lived in his midst, and so he had no choice but to help Ostion create a new people, the Hollowed ones. 
	hollow_ideas_1 = {
		development_cost = -0.15
	}
	# Stone Hearts & Stone Bodies
	# The Hollow are magical stone-constructs, who act entirely by their gods.
	hollow_ideas_2 = {
		land_morale = 0.10
		fire_damage_received = -0.10
	}
	# The Ones Who Believe
	# Outsiders doubt the existence of Wilderking, the god worshipped in the pristine jungles of Greenshade, but not the Hollow, who gain his blessings.
	hollow_ideas_3 = {
		tolerance_own = 1.0
	}
	# Wilderking Rods
	# With an almost inexhaustible supply of the Wilderking Rods, the Hollow can detect air breathed in the presence of a Daedra and ensure that the Valenwood will always remain clean of Oblivion corruption.
	hollow_ideas_4 = {
		diplomatic_reputation = 1
		warscore_cost_vs_other_religion = -0.15
	}
	# The Lurchers
	# Lurchers are wooden golems, received as gifts from the Wilderking. They embody of the raw energy of the forest and can be used in multiple ways.
	hollow_ideas_5 = {
		siege_ability = 0.10
		production_efficiency = 0.05
	}
	# Fires of the Wilderking
	# Little is known of the magical lights that occasionally illuminate the wild lands of Valenwood, leading those who go astray or luring travelers to their certain doom.
	hollow_ideas_6 = {
		hostile_attrition = 1.0
		land_attrition = -0.10
	}
	# The Noble Purpose
	# THe Hollow protect the Court of the Wilderking and the forest of Valenwood from every single threat.
	hollow_ideas_7 = {
		culture_conversion_cost = -0.15
	}
}



defineloc nalongan_ideas = "Nalongan Ideas"
defineloc nalongan_ideas_start = "Nalongan Traditions"
defineloc nalongan_ideas_bonus = "Nalongan Ambition"
nalongan_ideas = {
	start = {
		discipline = 5%
		capture_ship_chance = 10%
	}
	bonus = {
		heavy_ship_power = 10% 
	}
	trigger = {
		culture_group = nalonga_cg
	}
	free = yes
	
	defineloc nalongan_ideas_1 = "Blessed by The Ten"
    defineloc nalongan_ideas_1_desc = "The ten dread kings had led us when we were small Jjo living in fear, with their leadership, their blessings, we can teach the ignorant about the ten dread kings."
    nalongan_ideas_1 = {
        missionaries = 1
    }
    defineloc nalongan_ideas_2 = "Life and Death"
    defineloc nalongan_ideas_2_desc = "As the Dread Kings help prove ourselves in life and death, we can continue to proove ourselves eternally"
    nalongan_ideas_2 = {
        global_manpower_modifier = 10%
        global_sailors_modifier = 10%
    }
    defineloc nalongan_ideas_3 = "Uraaf"
    defineloc nalongan_ideas_3_desc = "Uraaf, something all Jjo and jrooa understand, is everywhere, and is something we've mastered."
    nalongan_ideas_3 = {
        shock_damage = 10%
    }
    defineloc nalongan_ideas_4 = "Oraapa is Truth"
    defineloc nalongan_ideas_4_desc = "For on our Oraapa, we know the truth of it that is in our grasp, for truth is a tool for Uraaf and peace."
    nalongan_ideas_4 = {
        idea_cost = -5%
    }
    defineloc nalongan_ideas_5 = "Jjo Jraaai "
    defineloc nalongan_ideas_5_desc = "The Jrrai is ours, no foreign vessels or jrooa enters or leaves without our permission."
    nalongan_ideas_5 = {
        own_coast_naval_combat_bonus = 1.0    
    }
    defineloc nalongan_ideas_6 = "No Escape"
    defineloc nalongan_ideas_6_desc = "As Jraai taught us that there is no escape, we have the duty to teach others that there is no escape either."
    nalongan_ideas_6 = {
        morale_damage = 5%
    }
    defineloc nalongan_ideas_7 = "Jjokhan"
    defineloc nalongan_ideas_7_desc = "Jjokhan, or One Snake is the dream of all Jjo being under one banner, under one army, united in their goals"
    nalongan_ideas_7 = {
        ae_impact = -10%
    }
}

defineloc duraki_ideas = "Duraki Ideas"
defineloc duraki_ideas_start = "Duraki Traditions"
defineloc duraki_ideas_bonus = "Duraki Ambition"
duraki_ideas = {
	start = {
		land_morale = 10%
		build_cost = -20%
	}
	bonus = {
		defensiveness = 25%
	}
	trigger = {
		primary_culture = duraki
	}
	free = yes
	
	defineloc duraki_ideas_1 = "Celestial Worship"
    defineloc duraki_ideas_1_desc = "The Duraki worshipped the stars and constellations, believing that they held great power."
    duraki_ideas_1 = {
        missionaries = 1
    }
    defineloc duraki_ideas_2 = "Nirncrux Extraction"
    defineloc duraki_ideas_2_desc = "The Duraki were pioneers in extracting and using nirncrux, a valuable resource that gave them great power."
    duraki_ideas_2 = {
		production_efficiency = 10%
    }
    defineloc duraki_ideas_3 = "Skyreach Architecture"
    defineloc duraki_ideas_3_desc = "The Duraki built the great city of Skyreach, a marvel of engineering that extended through and under the Dragontail Mountains."
    duraki_ideas_3 = {
		development_cost = -10%
    }
    defineloc duraki_ideas_4 = "Adaptable Society"
    defineloc duraki_ideas_4_desc = "By the time of the Anka-Ra invasion, the Duraki had to adapt to the cultures of those that conquered and enslaved them."
    duraki_ideas_4 = {
		diplomatic_reputation = 1
    }
    defineloc duraki_ideas_5 = "Forbidden Knowledge"
    defineloc duraki_ideas_5_desc = "were known to practice dark arts, even by the High King himself."
    duraki_ideas_5 = {
		idea_cost = -5%
    }
    defineloc duraki_ideas_6 = "Tribal Confederacy"
    defineloc duraki_ideas_6_desc = "The Duraki were governed by a High King who presided over Craglorn, with eight other Nedic kings operating in and around the region."
    duraki_ideas_6 = {
		reduced_liberty_desire_on_same_continent = 15
    }
    defineloc duraki_ideas_7 = "Iron Orc Resistance"
    defineloc duraki_ideas_7_desc = "The Duraki engaged in conflicts with the local Iron Orcs since the late Merethic Era."
    duraki_ideas_7 = {
		shock_damage = 5%
    }
}

#############################
###     Fallback Ideas    ###
#############################
# Generic Country Ideas, just to have some ideas available for every country as a fallback.
country_ideas = {
	trigger = {
		always = yes
	}
	free = yes
	start = {
		land_morale = 0.15
		core_creation = -0.15
	}
	bonus = {
		build_cost = -0.25
	}
	generic_ni_1 = {
		global_unrest = -1
	}
	generic_ni_2 = {
		defensiveness = 0.1
	}
	generic_ni_3 = {
		global_tax_modifier = 0.1
	}
	generic_ni_4 = {
		production_efficiency = 0.1
	}
	generic_ni_5 = {
		global_trade_power = 0.1
	}
	generic_ni_6 = {
		diplomats = 1
	}
	generic_ni_7 = {
		advisor_pool = 1
	}
}
