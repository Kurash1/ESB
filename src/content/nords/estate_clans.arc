new estate clans = {
	name = "Clans"
	desc = ""
	icon = 3
	color = {
		255 100 0
	}
	trigger = {
		OR = {
			is_race = nord
			is_race = atmoran
		}
		NOT = {
			has_government_attribute = no_clans_estate
		}
	}
	country_modifier_happy = {
		state_maintenance_modifier = -0.25
		global_tax_modifier = 0.2
		development_cost = -0.1
	}
	country_modifier_neutral = {
		state_maintenance_modifier = -0.25
	}
	country_modifier_angry = {
		state_maintenance_modifier = 0.25
		global_tax_modifier = -0.2
		global_unrest = 2
	}
	land_ownership_modifier = {
		clans_loyalty_modifier = 0.2
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
			ai_will_do = {
				factor = 5
				modifier = {
					factor = 1.4
					num_of_territories = 5
				}
				modifier = {
					factor = 1.5
					num_of_territories = 10
				}
				modifier = {
					factor = 1.5
					num_of_territories = 15
				}
				modifier = {
					factor = 0
					NOT = { governing_capacity_percentage = 0.5 }
				}
			}
		}
		new clan_state = {
			name = "Clan State"
			desc = ""
			icon = privilege_admin_power
			land_share = 10
			max_absolutism = -5
			benefits = {
				country_admin_power = 1
			}
			ai_will_do = {
				factor = 100
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
		new autonomy_of_the_clans = {
			name = "Autonomy of the Clans"
			icon = privilege_autonomy
			max_absolutism = -10
			loyalty = 0.1
			influence = 0.05
			penalties = {
				global_autonomy = 0.15
			}
			benefits = {
				global_unrest = -2
			}
			ai_will_do = {
				factor = 5
			}
		}
		new no_broken_homes_initiative = {
			name = "No Broken Homes Initiative"
			icon = privilege_demand_more_troops
			loyalty = 0.1
			penalties = {
				global_manpower_modifier = -0.15
			}
			benefits = {
				global_unrest = -2
			}
			ai_will_do = {
				factor = 5
			}
		}
		new clan_elder_voices = {
			name = "Clan Elder Voices"
			icon = privilege_recruit_minister
			max_absolutism = -10
			loyalty = 0.10
			influence = 0.15
			benefits = {
				advisor_cost = -0.2
			}
			ai_will_do = {
				factor = 5
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
create_develop_tax_agenda = clans
create_hire_advisor_agenda = { estate = clans category = ADM }
create_fire_advisor_agenda = { estate = clans category = { full = ADM loc = Adm name = "Administrative" } }
create_fire_advisor_agenda = { estate = clans category = { full = DIP loc = Dip name = "Diplomatic" } }
create_fire_advisor_agenda = { estate = clans category = { full = MIL loc = Mil name = "Military" } }