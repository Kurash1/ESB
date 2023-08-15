new building barrow_hill = {
	name = "Barrow Hill"
	desc = ""
	cost = 50
	time = 12
	modifier = {
		tax_income = 6
		local_warscore_cost_modifier = 0.1
	}
}
on_actions:on_monarch_death += {
	if = {
		limit = {
			culture_group = culture_groups:nord
		}
		random_owned_province = {
			limit = {
				NOT = {
					has_construction = buildings:barrow_hill
					has_building = buildings:barrow_hill
				}
			}
			add_building_construction = {
				building = buildings:barrow_hill
				speed = 1
				cost = 1
			}
		}
	}
}
on_actions:on_heir_death += {
	if = {
		limit = {
			culture_group = culture_groups:nord
		}
		random_owned_province = {
			limit = {
				NOT = {
					has_construction = buildings:barrow_hill
					has_building = buildings:barrow_hill
				}
			}
			add_building_construction = {
				building = buildings:barrow_hill
				speed = 1
				cost = 1
			}
		}
	}
}