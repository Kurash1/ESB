new building barrow_hill = {
	name = "Barrow Hill"
	desc = ""
	cost = 100
	time = 12
	modifier = {
		tax_income = 6
		local_warscore_cost_modifier = 0.1
	}
}
on_actions:on_monarch_death += {
	events = {
		barrow_hill.1
	}
}
on_actions:on_heir_death += {
	events = {
		barrow_hill.1
	}
}
new country_event barrow_hill.1 = {
	title = "To Build a Barrow Hill"
	desc = ""
	picture = TOMB_eventPicture
	trigger = {
		culture_group = culture_groups:nord
		any_owned_province = {
			NOT = {
				has_construction = buildings:barrow_hill
				has_building = buildings:barrow_hill
			}
		}
		NOT = { has_government_attribute = immortal_ruler }
	}
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