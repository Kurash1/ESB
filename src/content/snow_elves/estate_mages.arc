new estate mages = {
	name = "Mages"
	desc = ""
	icon = 7
	color = {
		255 100 0
	}
	trigger = {
		culture_group = snow_elven
	}
	country_modifier_happy = {
		monthly_magicka = 0.30
		global_unrest = -1
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
		monthly_magicka = -0.50
		global_unrest = 2
	}
	land_ownership_modifier = {
	}
	privileges = {
		new curtail_the_mages_influence = {
			name = "Curtail the Mages' Influence"
			desc = ""
			icon = privilege_curtail_influence
			influence = -0.15
			loyalty = -0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = estates:mages:privileges:favor_the_mages_influence 
				}
			}
		}
		new favor_the_mages_influence = {
			name = "Favor the Mages' Influence"
			desc = ""
			icon = privilege_favor_influence
			influence = 0.15
			loyalty = 0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = estates:mages:privileges:curtail_the_mages_influence 
				}
			}
		}
		new ask_for_magicka_assistance = {
			name = "Ask for magicka assistance"
			desc = ""
			icon = magicka_for_privs
			influence = 0.10
			benefits = {
				monthly_magicka = 0.2
			}
			
		}
		new institute_battlemages_regiments = {
			name = "Institute Battlemages regiments"
			desc = ""
			icon = privilege_battlemage
			influence = 0.15
			loyalty = -0.05
			benefits = {
				fire_damage = 0.10
				fire_damage_received = -0.05
			}
		}
		# increase likelihood magic events
		new loosen_research = {
			name = "Loosen arcane research"
			desc = ""
			icon = privilege_mana_research
			loyalty = 0.15
			influence = 0.05
			benefits = {
				idea_cost = -0.05
			}
		}
		# allows mages college building 
		new offer_land = {
			name = "Offer land"
			desc = ""
			icon = privilege_land_agreement
			land_share = 5
			loyalty = 0.15
			influence = 0.10
			benefits = { }
			
		}		
	}
	base_influence = 30
}

