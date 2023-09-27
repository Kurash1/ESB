new estate harem = {
	name = "Harem"
	desc = ""
	icon = 4
	color = {
		0 51 0
	}
	trigger = {
		culture_group = culture_groups:orc
	}
	country_modifier_happy = {
		production_efficiency = 0.10
		global_unrest = -1
		manpower_recovery_speed = 0.05
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
		global_unrest = 2
		production_efficiency = -0.10
		manpower_recovery_speed = -0.05
	}
	land_ownership_modifier = {
	}
	privileges = {
		new curtail_the_harem_influence = {
			name = "Curtail the Harem's Influence"
			desc = ""
			icon = privilege_curtail_influence
			influence = -0.15
			loyalty = -0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = estates:harem:privileges:favor_the_harem_influence 
				}
			}
		}
		new favor_the_harem_influence = {
			name = "Favor the Harem's Influence"
			desc = ""
			icon = privilege_favor_influence
			influence = 0.15
			loyalty = 0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = estates:harem:privileges:curtail_the_harem_influence 
				}
			}
		}	
		new breeding_is_essential = {
			name = "Breeding is essential"
			desc = ""
			icon = privilege_delegate_subject_diplomacy
			influence = 0.10
			loyalty = -0.05
			max_absolutism = 5
			benefits = {
				manpower_recovery_speed = 0.20
				global_manpower_modifier = 0.15
				
			}
			
		    penalties = {
				production_efficiency = -0.25
			}		
		}	
		new grant_more_autonomy = {
			name = "Grant more autonomy"
			desc = ""
			icon = privilege_establish_a_favor_system
			influence = 0.15
			loyalty = 0.10
			max_absolutism = -15
			benefits = {
				all_power_cost = -0.025
			}
			penalties = {
				global_unrest = 1.5
			}	
	    }
		# adding an event giving leg + morale + or leg - glob unr -
		new ask_the_wise_women_for_a_sign = {
			name = "Ask the wise women for a sign"
			desc = ""
			icon = privilege_build_jain_temple
			influence = 0.10
			loyalty = 0
			max_absolutism = -5
			comment = {
				Event grants legitimacy and some bonuses 
			}
			on_granted = {
			add_prestige = 10
			}
		}
		# adding opinion modf +30 to all kreath orcs opinion
		new marry_off_your_daughters = {
			name = "Marry off your daughters"
			desc = ""
			icon = privilege_royal_marriage
			benefits = {
			diplomatic_reputation = 1
			}
	        comment = { 
				adding an event adding opinion with all tags of same culture
			}
			on_granted = {
			}
		}
	}
		
	base_influence = 25
}