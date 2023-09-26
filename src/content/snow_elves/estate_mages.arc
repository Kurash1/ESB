new estate mages = {
	name = "Mages"
	desc = ""
	icon = 7
	color = {
		255 100 0
	}
	trigger = {
		culture_group = culture_groups:snow_elven
	}
	country_modifier_happy = {
		state_maintenance_modifier = -0.5
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
		state_maintenance_modifier = 0.5
	}
	land_ownership_modifier = {
	}
	privileges = {
		new curtail_the_mages_influence = {
			name = "Curtail the Mages' Influence"
			desc = ""
			icon = privilege_curtail_influence
			influence = -0.15
			loyalty = -0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = estates:mages:privileges:favor_the_mages_influence 
				}
			}
		}
		new favor_the_mages_influence = {
			name = "Favor the Mages' Influence"
			desc = ""
			icon = privilege_favor_influence
			influence = 0.15
			loyalty = 0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = estates:mages:privileges:curtail_the_mages_influence 
				}
			}
		}
	}
	base_influence = 30
}

