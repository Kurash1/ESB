new estate priests = {
	name = "Priests"
	desc = ""
	icon = 8
	color = {
		255 0 0
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
		new curtail_the_priests_influence = {
			name = "Curtail the Priests' Influence"
			desc = ""
			icon = privilege_curtail_influence
			influence = -0.15
			loyalty = -0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = estates:priests:privileges:favor_the_priests_influence 
				}
			}
		}
		new favor_the_priests_influence = {
			name = "Favor the Priests' Influence"
			desc = ""
			icon = privilege_favor_influence
			influence = 0.15
			loyalty = 0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = estates:priests:privileges:curtail_the_priests_influence 
				}
			}
		}
	}
	base_influence = 20
}