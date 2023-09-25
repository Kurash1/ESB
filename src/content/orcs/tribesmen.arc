new estate tribesmen = {
	name = "Tribesmen"
	desc = ""
	icon = 6
	color = {
		204 0 0
	}
	trigger = {
		culture_group = culture_groups:orc
	}
	country_modifier_happy = {
		global_unrest = -1
		land_forcelimit_modifier = 0.10
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
		global_unrest = 2
		land_forcelimit_modifier = -0.10
	}
	land_ownership_modifier = {
	}
	privileges = {
		new curtail_the_tribesmen_influence = {
			name = "Curtail the Tribesmen Influence"
			desc = ""
			icon = privilege_allow_personal_fortune
			influence = -0.15
			loyalty = -0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = estates:tribesmen:privileges:favor_the_tribesmen_influence
				}
			}
		}
		new favor_the_tribesmen_influence = {
			name = "Favor the Tribesmen Influence"
			desc = ""
			icon = privilege_unifying
			influence = 0.15
			loyalty = 0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = estates:tribesmen:privileges:curtail_the_tribesmen_influence 
				}
			}
		}	
		new every_orc_on_the_frontline = {
			name = "Every Orc on the Frontline"
			desc = ""
			icon = privilege_land_force_limit
			influence = 0.05
			loyalty = -0.05
			max_absolutism = -5
			penalties = {
				production_efficiency = -10%
				}
			benefits = {
				land_forcelimit_modifier = 10%
				global_manpower_modifier = 0.10
				}
		}
		
	}
	base_influence = 20
}