new government_reform tier_1_hrothgar_territories = {
	name = "Hrothgar Territories"
	desc = ""
	icon = "landscape"
	allow_normal_conversion = yes
	force_general_leader = yes
	potential = {
		has_reform = tier_1_hrothgar_territories
	}
	modifiers = {
		governing_capacity = -150
		min_autonomy = 50
		naval_forcelimit_modifier = -1.0
		land_forcelimit_modifier = 1.0
		land_maintenance_modifier = -0.5
	}
	government_abilities = {
		defineloc ability_hrothgar_mechanic = "Cohesion"
		defineloc hrothgar_power = "Cohesion"
		defineloc hrothgar_power_desc = ""
		defineloc monthly_hrothgar_power = "Monthly Cohesion"
		hrothgar_mechanic
	}
	ai = {
		factor = 1
	}
}
on_actions:on_general_recruited += {
	if [has_government_mechanic = hrothgar_mechanic]
	{
		add_government_power = {
			mechanic_type = hrothgar_mechanic
			power_type = hrothgar_power
			value = 5
		}
	}
}
new incident collapse_of_hrothgar = {
	name = "Collapse of Hrothgar"
	event = incidents.2
	default_option = 0
	can_stop = {
		NOT = {
			exists = HRO
		}
	}
	0 = {
		factor = 1
	}
	1 = {
		factor = 1
	}
	2 = {
		factor = 1
	}
}
new country_event incidents.2 = {
	title = "Collapse of Hrothgar"
	desc = ""
	picture = DEATH_OF_HEIR_eventPicture
	is_triggered_only = yes
	fire_only_once = yes
	immediate = {
		p@whiterun = {
			owner = {
				save_event_target_as = whiterun_owner
			}
		}
		p@amol = {
			owner = {
				save_event_target_as = amol_owner
			}
		}
	}
	options = {
		{
			name = "Split Hrothgar"
			effect = {
				HRO = {
					every_owned_province = {
						if [region = whiterun_region] {
							cede_province = event_target:whiterun_owner
						}
						else_if [region = eastmarch_region] {
							cede_province = event_target:amol_owner
						}
						else {
							cede_province = emperor
						}
					}
				}
			}
			ai_chance = {
				factor = 5
			}
		}
		{
			name = "The Emperor shall have it all"
			effect = {
				HRO = {
					every_owned_province = {
						cede_province = emperor
					}
				}
			}
		}
		{
			name = "Re-establish the Hrothgar Territories"
			effect = {
				HRO = {
					if [has_government_mechanic = hrothgar_mechanic]
					{
						add_government_power = {
							mechanic_type = hrothgar_mechanic
							power_type = hrothgar_power
							value = 100
						}
					}
				}
				emperor = {
					add_yearly_manpower = -2.5
				}
			}
			ai_chance = {
				factor = 3
			}
		}
	}
}
