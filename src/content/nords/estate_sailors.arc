new estate sailors = {
	name = "Sailors"
	desc = ""
	icon = 1
	color = {
		255 0 0
	}
	trigger = {
		culture_group = culture_groups:nord
	}
	country_modifier_happy = {
		sailors_recovery_speed = 0.5
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
		sailors_recovery_speed = -0.5
	}
	land_ownership_modifier = {
	}
	privileges = {
		new sailor_land_rights = {
			name = "Sailor Land Rights"
			desc = ""
			icon = privilege_grant_autonomy
			land_share = 5
			max_absolutism = -5
			loyalty = 0.05
			influence = 0.05
			benefits = {
				governing_capacity = 100
			}
		}
		new sailor_state = {
			name = "Sailor State"
			desc = ""
			icon = privilege_diplo_power
			land_share = 10
			max_absolutism = -5
			loyalty = -0.05
			benefits = {
				country_diplomatic_power = 1
			}
		}
		new hire_sailor_advisors = {
			name = "Hire Sailor Advisors"
			desc = ""
			icon = privilege_empty_throne
			max_absolutism = -5
			loyalty = 0.05
			influence = 0.05
			penalties = {
				stability_cost_modifier = 0.1
			}
			benefits = {
				dip_advisor_cost = -0.25
			}
		}
	}
	base_influence = 25
}