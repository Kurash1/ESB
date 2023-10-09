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
governments:remnant:reform_levels:1 += new tier_1_hrothgar_territories = {
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
governments:remnant:reform_levels:5 += new remnant_become_hrothgar_kingdom = {
	name = "Reform into the Hrothgar Kingdom"
	desc = ""
	icon = "leader_icon"
	allow_normal_conversion = yes
	potential = {
		has_reform = tier_1_hrothgar_territories
	}
	effect = {
		reform_remnant = {
			type = monarchy
			reform = tier_1_hrothgar_kingdom
		}
	}
}
governments:monarchy:reform_levels:1 += new tier_1_hrothgar_kingdom = {
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
	immediate = {
		p@whiterun = {
			owner = {
				if [tag = hrothgar] {
					emperor = {
						save_event_target_as = whiterun_owner
					}
				}
				else {
					save_event_target_as = whiterun_owner
				}
			}
		}
		p@amol = {
			owner = {
				if [tag = hrothgar] {
					emperor = {
						save_event_target_as = amol_owner
					}
				}
				else {
					save_event_target_as = amol_owner
				}
			}
		}
	}
	can_stop = {
		NOT = {
			exists = HRO
		}
	}
	options = {
		{
			name = "Split Hrothgar"
			effect = {
				HRO = {
					every_owned_province = {
						if [region = whiterun] {
							cede_province = event_target:whiterun_owner
						}
						else_if [region = eastmarch] {
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