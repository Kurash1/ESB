new estate sailors = {
	name = "Sailors"
	desc = ""
	icon = 1
	color = {
		0 148 255
	}
	trigger = {
		OR = {
			is_race = nord
			is_race = atmoran
		}
		num_of_ports = 1
	}
	country_modifier_happy = {
		sailors_recovery_speed = 0.5
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
		sailors_recovery_speed = -0.5
	}
	land_ownership_modifier = {
	}
	privileges = {
		new sailor_land_rights = {
			name = "Sailor Land Rights"
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
		new sailor_state = {
			name = "Sailor State"
			desc = ""
			icon = privilege_diplo_power
			land_share = 10
			max_absolutism = -5
			benefits = {
				country_diplomatic_power = 1
			}
			ai_will_do = {
				factor = 100
			}
		}
		new hire_sailor_advisors = {
			name = "Hire Sailor Advisors"
			desc = ""
			icon = privilege_empty_throne
			max_absolutism = -5
			loyalty = 0.05
			influence = 0.05
			penalties = {
				stability_cost_modifier = 0.1
			}
			benefits = {
				dip_advisor_cost = -0.25
			}
			ai_will_do = {
				factor = 5
			}
		}
		new sponsor_distant_land_trading = {
			name = "Sponsor Distant Land Trading"
			icon = privilege_trade_range
			loyalty = 0.05
			benefits = {
				trade_range_modifier = 0.5
			}
			ai_will_do = {
				factor = 5
			}
		}
		new sponsor_shipbuilding = {
			name = "Sponsor Shipbuilding"
			icon = privilege_ship_recruit
			loyalty = 0.05
			influence = 0.1
			benefits = {
				global_ship_recruit_speed = -0.25
			}
			ai_will_do = {
				factor = 5
			}
		}
	}
	base_influence = 25
}
create_develop_production_agenda = sailors