new estate priests = {
	name = "Priests"
	desc = ""
	icon = 8
	color = {
		255 0 0
	}
	trigger = {
		culture_group = snow_elven
	}
	country_modifier_happy = {
		stability_cost_modifier = -0.20
		global_unrest = -1
		tolerance_own = 3
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
		stability_cost_modifier = +0.20
		global_unrest = 2
		tolerance_own = -3
	}
	land_ownership_modifier = {
	}
	privileges = {
		new curtail_the_priests_influence = {
			name = "Curtail the Priests' Influence"
			desc = ""
			icon = privilege_curtail_influence
			influence = -0.15
			loyalty = -0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = priests:favor_the_priests_influence 
				}
			}
		}
		new favor_the_priests_influence = {
			name = "Favor the Priests' Influence"
			desc = ""
			icon = privilege_favor_influence
			influence = 0.15
			loyalty = 0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = priests:curtail_the_priests_influence 
				}
			}
		}
		# event for auriel blessing
		new pray_for_auriel_blessing = {
			name = "Pray for Auriel blessing"
			desc = ""
			icon = privilege_auriel
			influence = 0.05
		}
		# how to autodelete privileges
		new arrange_festivities = {
			name = "Arrange festivities"
			desc = ""
			icon = privilege_festivities
			loyalty = 0.10
			benefits = {
				global_unrest = -2.00
			}
			on_granted = {
				add_years_of_income = -1
			}
		}
		new temple_tax_cut = {
			name = "Temple tax cut"
			desc = ""
			icon = privilege_priests_tax
			loyalty = 0.15
			influence = 0.10
			penalties = {
				global_tax_modifier = -0.10
			}
			benefits = {
				same_religion_advisor_cost = -0.2
				global_missionary_strength = 0.01
			}
		}
		new inspire_the_faithful = {
			name = "Inspire the faithful"
			desc = ""
			icon = privilege_inspire
			loyalty = 0.05
			influence = 0.15
			benefits = {
				land_morale = 0.10
			}
		}
		
	}
	base_influence = 20
}