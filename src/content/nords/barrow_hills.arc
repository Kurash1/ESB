new building barrow_hill = {
	name = "Barrow Hill"
	desc = ""
	cost = 100
	time = 12
	modifier = {
		tax_income = 12
		local_warscore_cost_modifier = 0.1
	}
	ai_will_do = {
		factor = 0
	}
}
new named_trigger can_build_barrow_hill = {
	OR = {
		is_race = nord
		is_race = atmoran
	}
	government = monarchy
	any_owned_province = {
		NOT = {
			has_construction = any
			has_building = buildings:barrow_hill
		}
	}
	NOT = { has_government_attribute = immortal_ruler }
}
ruler_natural_death += {
	if [can_build_barrow_hill] {
		random = {
			chance = 20
			barrow_hill.1
		}
	}
}
heir_natural_death += {
	if [can_build_barrow_hill] {
		random = {
			chance = 20
			barrow_hill.1
		}
	}
}
new country_event barrow_hill.1 = {
	title = "To Build a Barrow Hill"
	desc = ""
	picture = TOMB_eventPicture
	is_triggered_only = yes
	options = {
		{
			name = "Let us honor them"
			effect = {
				random_owned_province [
					NOT = {
						has_construction = buildings:barrow_hill
						has_building = buildings:barrow_hill
					}
				]
				{
					add_building_construction = {
						building = buildings:barrow_hill
						speed = 1
						cost = 1
					}
				}
			}
		}
		{
			name = "We cannot afford it"
			effect = {
				add_prestige = -20
			}
		}
	}
}