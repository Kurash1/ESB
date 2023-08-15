new estate clans = {
	name = "Clans"
	desc = ""
	icon = 4
	color = { 255 100 0 }
	trigger = {
		culture_group = culture_groups:nord
	}
	country_modifier_happy = {
		global_unrest = -2
	}
	country_modifier_neutral = {
		
	}
	country_modifier_angry = {
		global_unrest = 2
	}
	land_ownership_modifier = {
		state_maintenance_modifier = -0.5
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
		new clan_state = {
			name = "Clan State"
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
				dip_advisor_cost = -0.15
			}
		}
	}
	base_influence = 25
}