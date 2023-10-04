new estate warriors = {
	name = "Warriors"
	desc = ""
	icon = 2
	color = {
		255 0 0
	}
	trigger = {
		culture_group = nord
	}
	country_modifier_happy = {
		manpower_recovery_speed = 0.5
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
		manpower_recovery_speed = -0.5
	}
	land_ownership_modifier = {
	}
	privileges = {
		new warrior_land_rights = {
			name = "Warrior Land Rights"
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
			icon = privilege_military_power
			land_share = 10
			max_absolutism = -5
			loyalty = -0.05
			benefits = {
				country_military_power = 1
			}
		}
		new hire_warrior_advisors = {
			name = "Hire Warrior Advisors"
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