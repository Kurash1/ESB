new estate priests = {
	name = "Priests"
	desc = ""
	icon = 3
	color = { 0 255 255 }
	trigger = {
		culture_group = culture_groups:nord
	}
	country_modifier_happy = {
		global_missionary_strength = 0.015
	}
	country_modifier_neutral = {
		
	}
	country_modifier_angry = {
		global_missionary_strength = -0.015
	}
	land_ownership_modifier = {
		tolerance_own = 5
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
		new religious_state = {
			name = "Religious State"
			desc = ""
			icon = privilege_admin_power
			land_share = 10
			max_absolutism = -5
			loyalty = -0.05
			benefits = {
				country_admin_power = 1
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
				adm_advisor_cost = -0.15
			}
		}
	}
	base_influence = 25
}