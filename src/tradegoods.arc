new tradegood wood = {
	name = "Wood"
	desc = "Chopped down tree"
	color = { 90 77 28 }
	modifier = {
		build_cost = -0.15
	}
	province = {
		local_development_cost = -0.05
	}
	base_price = 2
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood iron = {
	name = "Iron"
	desc = ""
	color = { 52 52 52 }
	modifier = {
		global_regiment_cost = -0.1
	}
	province = {
		regiment_recruit_speed = -0.33
	}
	base_price = 3
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood steel = {
	name = "Steel"
	desc = "Iron smelted with corundum"
	color = { 130 130 130 }
	modifier = {
		shock_damage_received = -0.025
		fire_damage_received = -0.025
	}
	province = {
		local_regiment_cost = -0.1
	}
	base_price = 4
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood fish = {
	name = "Fish"
	desc = "Some fishy business"
	color = { 141 169 197 }
	modifier = {
		naval_forcelimit_modifier = 0.15
	}
	province = {
		local_sailors_modifier = 0.25
	}
	base_price = 2
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood wheat = {
	name = "Wheat"
	desc = "The thing you make flour from"
	color = { 214 220 130 }
	modifier = {
		reinforce_speed = 0.25
	}
	province = {
		local_garrison_size = 0.15
	}
	base_price = 2
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood ale = {
	name = "Ale"
	desc = "Best served cold on a hot day"
	color = { 227 238 75 }
	modifier = {
		manpower_recovery_speed = 0.15
	}
	province = {
		local_unrest = -2
	}
	base_price = 2.5
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood wine = {
	name = "Wine"
	desc = "In vino veritas"
	color = { 70 16 124 }
	modifier = {
		stability_cost_modifier = -0.1
	}
	province = {
		local_unrest = -1
	}
	base_price = 3
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood paper = {
	name = "Paper"
	desc = "Great for writing on, just don't cut yourself with it"
	color = { 240 255 172 }
	modifier = {
		state_governing_cost = -0.1
	}
	province = {
		local_institution_spread = 0.5
	}
	base_price = 4
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood alchemical_ingredients = {
	name = "Alchemical Ingredients"
	desc = "A bunch of herbs and disgusting things, that when boiled become magical"
	color = { 62 149 81 }
	modifier = {
		global_spy_defence = 0.5
	}
	province = {
		supply_limit_modifier = 0.25
	}
	base_price = 3.5
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood r_alchemical_ingredients = {
	name = "Rare Alchemical Ingredients"
	desc = "Rare disgusting stuff, this time seriously magical without even boiling"
	color = { 14 137 27 }
	modifier = {
		diplomatic_annexation_cost = -0.2
	}
	province = {
		local_hostile_attrition = 5
	}
	base_price = 6
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood potions = {
	name = "Potions"
	desc = "Magical liquid in a fancy bottle isn't it?"
	color = { 253 65 71 }
	modifier = {
		spy_offence = 0.25
	}
	province = {
		reinforce_cost_modifier = -0.02
	}
	base_price = 6.5
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood stone = {
	name = "Stone"
	desc = "Usually gray - the thing you get after smacking a mountain with a pickaxe for long enough"
	color = { 185 185 185 }
	modifier = {
		defensiveness = 0.2
	}
	province = {
		local_fort_maintenance_modifier = -0.25
	}
	base_price = 2.5
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood gems = {
	name = "Gems"
	desc = "Some fancy rocks found deep in Nirn"
	color = { 78 15 203 }
	modifier = {
		prestige = 1
	}
	province = {
		province_trade_power_value = 5
	}
	base_price = 6
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood gold = {
	name = "Gold"
	desc = "We're rich!"
	color = { 196 215 26 }
	modifier = {
	}
	province = {
	}
	base_price = 0
	is_gold = yes
	chance = {
		factor = 1
	}
}
new tradegood silver = {
	name = "Silver"
	desc = "Good for killing undead and also werewolves "
	color = { 205 205 205 }
	modifier = {
	}
	province = {
	}
	base_price = 0
	is_gold = yes
	chance = {
		factor = 1
	}
}
new tradegood ebony = {
	name = "ebony"
	desc = "Solidified blood of Lorkhan"
	color = { 38 38 38 }
	modifier = {
		discipline = 0.05
	}
	province = {
		infantry_power = 0.005
	}
	base_price = 8
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood c_metals = {
	name = "common metals"
	desc = "Metals oftentime foud in the mines of Nirn"
	color = { 204 153 51 }
	modifier = {
		global_manpower_modifier = 0.15
	}
	province = {
		local_build_time = -0.33
	}
	base_price = 3.5
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood r_metals = {
	name = "rare metals"
	desc = "Some fancy metals, uncommon in Nirn"
	color = { 34 191 149 }
	modifier = {
		yearly_army_professionalism = 0.005
	}
	province = {
		local_prosperity_growth = 0.05
	}
	base_price = 5
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood jewelry = {
	name = "jewelry"
	desc = "Shiny metals and gems put together into neclaces, rings or other things"
	color = { 245 250 82 }
	modifier = {
		prestige_decay = -0.02
	}
	province = {
		local_prosperity_growth = 0.05
	}
	base_price = 7.5
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood fur = {
	name = "fur"
	desc = "Well, some animals are just too fluffy to let them go..."
	color = { 90 43 26 }
	modifier = {
		advisor_cost = -0.1
	}
	province = {
		local_monthly_devastation = -0.1
	}
	base_price = 2.5
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood livestock = {
	name = "livestock"
	desc = "Cows, pigs, chickens, silt striders..."
	color = { 249 123 77 }
	modifier = {
		global_supply_limit_modifier = 0.25
	}
	province = {
		local_tax_modifier = 0.2
	}
	base_price = 2
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood skooma = {
	name = "skooma"
	desc = "Khajits' favourite thing"
	color = { 209 50 50 }
	modifier = {
		years_of_nationalism = -5
	}
	province = {
		local_culture_conversion_cost = -0.25
	}
	base_price = 6
	is_gold = no 
	chance = {
		factor = 1
	}
}
new tradegood slaves = {
	name = "slaves"
	desc = "Free workforce! One-time-payment workforce actually"
	color = { 42 42 42 }
	modifier = {
		global_trade_goods_size_modifier = 0.15
	}
	province = {
		local_core_creation = -0.25
	}
	base_price = 2
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood mag_goods = {
	name = "magical goods"
	desc = "Things that can do some hippity-hoppity with magic"
	color = { 51 204 255 }
	modifier = {
		all_power_cost = -0.05
	}
	province = {
		institution_growth = 1
	}
	base_price = 6
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood cloth = {
	name = "cloth"
	desc = "A nice piece of fabric"
	color = { 193 21 176 }
	modifier = {
		global_ship_trade_power = 0.5
	}
	province = {
		province_trade_power_modifier = 0.2
	}
	base_price = 2.5
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood fruits = {
	name = "fruits"
	desc = "Sweet things, that grow on trees (unlike money)"
	color = { 253 255 6 }
	modifier = {
		sailor_maintenance_modifer = -0.2
	}
	province = {
		supply_limit = 5
	}
	base_price = 2
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood liquor = {
	name = "Liquor"
	desc = "Strong alcohol for strong folks"
	color = { 184 188 73 }
	modifier = {
		land_forcelimit_modifier = 0.1
	}
	province = {
		local_manpower_modifier = 0.25
	}
	base_price = 2.5
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood naval_supplies = {
	name = "naval supplies"
	desc = "Everything you might need for making a ship, almost"
	color = { 64 126 206 }
	modifier = {
		naval_maintenance_modifier = -0.15
	}
	province = {
		local_ship_cost = -0.25
	}
	base_price = 3.5
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood arms = {
	name = "Weapons and Arms"
	desc = "Weaponry and armor of many kinds, usuall works"
	color = { 154 172 175 }
	modifier = {
		infantry_power = 0.1
		cavalry_power = 0.1
	}
	province = {
		local_regiment_cost = -0.25
	}
	base_price = 5.5
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood glass = {
	name = "glass"
	desc = "Not the one you make armor of"
	color = { 70 130 180 }
	modifier = {
		monthly_splendor = 2
	}
	province = {
		trade_value = 3
	}
	base_price = 4.5
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood drugs = {
	name = "drugs"
	desc = "Usually illegal, but people seem to like them"
	color = { 234 234 234 }
	modifier = {
		reduced_liberty_desire = 20
	}
	province = {
		local_culture_conversion_cost = -0.25
	}
	base_price = 5
	is_gold = no
	chance = {
		factor = 1
	}
}
new tradegood rel_goods = {
	name = "religious goods"
	desc = "Totems, idols, rosaries of any kind"
	color = { 135 125 35 }
	modifier = {
		tolerance_own = 2
		global_missionary_strength = 0.03
	}
	province = {
		local_missionary_strength = 0.05
	}
	base_price = 3
	is_gold = no
	chance = {
		factor = 1
	}
}