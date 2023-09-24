new government_mechanic hrothgar_mechanic = {
	name = "Cohesion"
	powers = {
		hrothgar_power = {
			name = "Cohesion"
			desc = ""
			gui = {
				size = { x = 345 y = 25 }
				moveable = 0
				
				# bar and frame for the power type associated with this interaction (if it's unique to the interaction - if not, these will be hidden)
				iconType = { 
					name = "government_power_bar"
					spriteType = "GFX_fanaticism_progressbar"
					position = { x = 16 y = 0 }
				}	

				# Frame
				iconType = {
					name = "government_power_bar_frame"
					spriteType = "GFX_fanaticism_frame"
					position = { x = 0 y = 0 }
					alwaystransparent = yes
				}
			}
			max = 100
			min = 0
			monarch_power = mil
			default = 100
			base_monthly_growth = -0.5
			on_min_reached = {
				set_imperial_incident = collapse_of_hrothgar
			}
		}
	}
}
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
		hrothgar_mechanic
	}
	ai = {
		factor = 1
	}
}
new government_reform remnant_become_hrothgar_kingdom = {
	name = "Reform into the Hrothgar Kingdom"
	desc = ""
	icon = "leader_icon"
	allow_normal_conversion = yes
	potential = {
		has_reform = tier_1_hrothgar_territories
	}
	effect = {
		
		if [has_reform = remnant_1_focus_on_quality] { add_country_modifier = { name = remnant_1_focus_on_quality_mod duration = 3650 } }
		if [has_reform = remnant_1_focus_on_quantity] { add_country_modifier = { name = remnant_1_focus_on_quantity_mod duration = 3650 } }
		if [has_reform = remnant_1_focus_on_navy] { add_country_modifier = { name = remnant_1_focus_on_navy_mod duration = 3650 } }
		if [has_reform = remnant_2_focus_on_taxation] { add_country_modifier = { name = remnant_2_focus_on_taxation_mod duration = 3650 } }
		if [has_reform = remnant_2_focus_on_production] { add_country_modifier = { name = remnant_2_focus_on_production_mod duration = 3650 } }
		if [has_reform = remnant_2_focus_on_trade] { add_country_modifier = { name = remnant_2_focus_on_trade_mod duration = 3650 } }
		if [has_reform = remnant_3_focus_on_the_court] { add_country_modifier = { name = remnant_3_focus_on_the_court_mod duration = 3650 } }
		if [has_reform = remnant_3_focus_on_local_forces] { add_country_modifier = { name = remnant_3_focus_on_local_forces_mod duration = 3650 } }
		if [has_reform = remnant_3_focus_on_bureaucracy] { add_country_modifier = { name = remnant_3_focus_on_bureaucracy_mod duration = 3650 } }
		
		change_government = monarchy
		add_government_reform = tier_1_hrothgar_kingdom
		change_government_reform_progress = -800
		
		set_country_flag = reformed_remnant
	}
}
new government_reform tier_1_hrothgar_kingdom = {
	name = "Hrothgar Kingdom"
	desc = ""
	icon = "leader_icon"
	allow_normal_conversion = yes
	force_general_leader = yes
	trigger = {
		has_reform = tier_1_hrothgar_kingdom
	}
	modifiers = {
		monarch_military_power = 1
		land_forcelimit_modifier = 0.25
		land_maintenance_modifier = -0.1
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