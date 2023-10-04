new estate clans = {
	name = "Clans"
	desc = ""
	icon = 3
	color = {
		255 100 0
	}
	trigger = {
		culture_group = culture_groups:nord
	}
	country_modifier_happy = {
		state_maintenance_modifier = -0.5
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
		state_maintenance_modifier = 0.5
	}
	land_ownership_modifier = {
	}
	privileges = {
		new clan_land_rights = {
			name = "Clan Land Rights"
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
				country_admin_power = 1
			}
		}
		new hire_clan_advisors = {
			name = "Hire Clan Advisors"
			desc = ""
			icon = privilege_empty_throne
			max_absolutism = -5
			loyalty = 0.05
			influence = 0.05
			penalties = {
				stability_cost_modifier = 0.1
			}
			benefits = {
				adm_advisor_cost = -0.25
			}
		}
		new indebted_to_the_clans = {
			name = "Indebted to the Clans"
			desc = ""
			icon = privilege_give_money
			max_absolutism = -5
			loyalty = 0.05
			influence = 0.05
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
			penalties = {
				trade_efficiency = -0.05
			}
			can_revoke = {
				has_estate_loan = no
			}
			ai_will_do = {
				factor = 0
			}
		}
	}
	base_influence = 25
}

on_actions:on_loan_repaid += {
	if [
		has_estate_privilege = clans:indebted_to_the_clans
		has_estate_loan = no
	] {
		remove_estate_privilege = clans:indebted_to_the_clans
	}
}
