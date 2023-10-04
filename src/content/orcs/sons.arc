new estate sons = {
	name = "Sons"
	desc = ""
	icon = 5
	color = {
		0 153 0
	}
	trigger = {
		culture_group = culture_groups:orc
	}
	country_modifier_happy = {
		global_unrest = -1
		discipline = 0.05
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
		global_unrest = 2
		discipline = -0.05
	}
	land_ownership_modifier = {
	}
	privileges = {
		new curtail_the_sons_influence = {
			name = "Curtail the Sons' Influence"
			desc = ""
			icon = privilege_curtail_influence
			influence = -0.15
			loyalty = -0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = sons:favor_the_sons_influence 
				}
			}
		}
		new favor_the_sons_influence = {
			name = "Favor the Sons' Influence"
			desc = ""
			icon = privilege_favor_influence
			influence = 0.15
			loyalty = 0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = sons:curtail_the_sons_influence 
				}
			}
		}
		# event sons die out some survive ,modf to decide
		new weed_out_the_weak = {
			name = "Weed out the weak"
			desc = ""
			loyalty = 0.05
			icon = privilege_skull
			penalties = {
				governing_capacity = -60
			}
			benefits = {
				land_morale = 0.05
				legitimacy = 0.5
			}
			on_granted = {
				add_yearly_manpower = -0.05
			}
		}
		# event to gain leg 
		new show_strenght = {
			name = "Show Strenght"
			desc = ""
			icon = privilege_show_strenght
			influence = -0.1
			loyalty = 0.05
			benefits = {
				legitimacy = 0.5
			}
		}
		new send_them_out_to_manage = {
			name = "Send them out to manage"
			desc = ""
			icon = privilege_ae
			influence = -0.10
			loyalty = -0.10
			penalties = {
				legitimacy = -1.5
			}
			benefits = {
				global_autonomy = -0.05
				min_autonomy = -20
			}
		}
		new stomp_ambition = {
			name = "Stomp ambition"
			desc = ""
			icon = privilege_stomp
			loyalty = 0.05
			influence = -0.1
			penalties = {
				min_autonomy = 10
				all_power_cost = 0.025
			}
			benefits = {
				legitimacy = 1
			}
		}
	}
			
		
	
	base_influence = 25
}