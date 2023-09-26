new estate nobility = {
	name = "Nobility"
	desc = ""
	icon = 9
	color = {
		0 100 255
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
		new curtail_the_nobility_influence = {
			name = "Curtail the Nobility's Influence"
			desc = ""
			icon = privilege_curtail_influence
			influence = -0.15
			loyalty = -0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = estates:nobility:privileges:favor_the_nobility_influence
				}
			}
		}
		new favor_the_nobility_influence = {
			name = "Favor the Nobility's Influence"
			desc = ""
			icon = privilege_favor_influence
			influence = 0.15
			loyalty = 0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = estates:nobility:privileges:curtail_the_nobility_influence
				}
			}
		}
	}
	base_influence = 35
}