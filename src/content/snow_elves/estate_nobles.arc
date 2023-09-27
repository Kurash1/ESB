new estate nobility = {
	name = "Nobility"
	desc = ""
	icon = 9
	color = {
		0 100 255
	}
	trigger = {
		culture_group = culture_groups:snow_elven
	}
	country_modifier_happy = {
		state_maintenance_modifier = -0.5
		global_unrest = -1
		land_forcelimit_modifier = 10%
		global_manpower_modifier = 0.10
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
		state_maintenance_modifier = 0.5
		global_unrest = 2
		land_forcelimit_modifier = -10%
		global_manpower_modifier = -0.10
	}
	land_ownership_modifier = {
	}
	privileges = {
		new curtail_the_nobility_influence = {
			name = "Curtail the Nobility's Influence"
			desc = ""
			icon = privilege_curtail_influence
			influence = -0.15
			loyalty = -0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = estates:nobility:privileges:favor_the_nobility_influence
				}
			}
		}
		new favor_the_nobility_influence = {
			name = "Favor the Nobility's Influence"
			desc = ""
			icon = privilege_favor_influence
			influence = 0.15
			loyalty = 0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = estates:nobility:privileges:curtail_the_nobility_influence
				}
			}
		}
		new grant_new_titles = {
			name = "Grant new titles"
			desc = ""
			icon = privilege_land_rights
			influence = 0.05
			loyalty = 0.15
			land_share = 5
			on_granted = {
				prestige = 15
			}
		}
		new ask_for_money = {
			name = "Ask for money"
			desc = ""
			icon = privilege_ducats
			influence = 0.10
			penalties = { 
				global_autonomy = 0.10
			}
			on_granted = {
				custom_tooltip = estate_burghers_indebted_to_burghers_effect_tooltip
				tooltip = {
					add_inflation = 0.5
				}
				hidden_effect = {
					add_loan = {
						fixed_interest = 1
						duration = 60
						estate_loan = yes
					}
					add_loan = {
						fixed_interest = 1
						duration = 60
						estate_loan = yes
					}
					add_loan = {
						fixed_interest = 1
						duration = 60
						estate_loan = yes
					}
					add_loan = {
						fixed_interest = 1
						duration = 60
						estate_loan = yes
					}
					add_loan = {
						fixed_interest = 1
						duration = 60
						estate_loan = yes
					}
				}
			}
			can_revoke = {
				has_estate_loan = no
			}
		}
		new levy_more_troops = {
			name = "Levy more troops"
			desc = ""
			icon = privilege_manpower_warning
			influence = 0.10
			loyalty = -0.10
			penalties = {
				global_tax_modifier = -0.10
				manpower_recovery_speed = -0.10
			}
			on_granted = {
				add_yearly_manpower = 2
			}
		}
	}
	base_influence = 35
}
on_actions:on_loan_repaid += {
	if [
		has_estate_privilege = estates:nobility:privileges:ask_for_money
		has_estate_loan = no
	] {
		remove_estate_privilege = estates:nobility:privileges:ask_for_money
	}
}
