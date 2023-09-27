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
		land_forcelimit_modifier = 0.15
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
		global_unrest = 2
		land_forcelimit_modifier = -0.15
	}
	land_ownership_modifier = {
	}
	privileges = {
		new curtail_the_tribesmen_influence = {
			name = "Curtail the Tribesmen Influence"
			desc = ""
			icon = privilege_curtail_influence
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
			icon = privilege_favor_influence
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
		new elevate_the_best = {
			name = "Elevate the Best"
			desc = ""
			icon = privilege_army_tradition
			influence = 0.05
			loyalty = 0.10
			max_absolutism = -5
			penalties = {
				sons_loyalty_modifier = -0.1
				legitimacy = -1
			}
			benefits = {
				advisor_cost = -0.10
				army_tradition = 1
			}
		}
		new expel_the_most_troublesome = {
			name = "Expel the most troublesome"
			desc = ""
			icon = privilege_migrate
			influence = -0.05
			loyalty = 0.5
			max_absolutism = 5
			penalties = {
				idea_cost = 0.05
				global_tax_modifier = -0.05
				production_efficiency = -0.10
			}
			benefits = {
				global_unrest = -2
			}
			on_granted = {
				add_yearly_manpower = -0.05
			}
		}
		# raiding is gonna have a casus belli, only mana ,money ,legitim, war reps
		new raiding_parties = {
			name = "Raiding Parties"
			desc = ""
			icon = privilege_sword_torch
			loyalty = 0.15
			on_granted = {
				add_years_of_income = 1
			}
		}	
	}
	base_influence = 20
}