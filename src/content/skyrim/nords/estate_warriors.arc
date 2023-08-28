new estate warriors = {
	name = "Warriors"
	desc = ""
	icon = 2
	color = {
		255 0 0
	}
	trigger = {
		culture_group = culture_groups:nord
	}
	country_modifier_happy = {
		land_morale = 0.20
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
		land_morale = -0.20
	}
	land_ownership_modifier = {
		global_manpower_modifier = 0.5
	}
	privileges = {
		new land_rights = {
			name = "Land Rights"
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
		new warrior_state = {
			name = "Warrior State"
			desc = ""
			icon = privilege_admin_power
			land_share = 10
			max_absolutism = -5
			loyalty = -0.05
			benefits = {
				country_military_power = 1
			}
		}
		new hire_advisors = {
			name = "Hire Advisors"
			desc = ""
			icon = privilege_empty_throne
			max_absolutism = -5
			loyalty = 0.05
			influence = 0.05
			penalties = {
				stability_cost_modifier = 0.1
			}
			benefits = {
				mil_advisor_cost = -0.25
			}
		}
	}
	base_influence = 25
}

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
	
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
	
	}
	land_ownership_modifier = {
	
	}
	privileges = {
		new land_rights = {
			name = "Land Rights"
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
			icon = privilege_admin_power
			land_share = 10
			max_absolutism = -5
			loyalty = -0.05
			benefits = {
				country_diplomatic_power = 1
			}
		}
		new hire_advisors = {
			name = "Hire Advisors"
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