new decision kynes_sacred_trials = {
	name = "Kyne's Sacred Trials"
	potential = {
		is_race = nord
		has_personal_deity = kyne
		NOT = {
			has_ruler_flag = kynes_sacred_trials_ruler
		}
	}
	allow = {
		has_regency = no
		government = monarchy
		if [has_country_flag = recent_kynes_sacred_trials] {
			had_country_flag = {
				flag = recent_kynes_sacred_trials
				days = 7300
			}
		}
	}
	effect = {
		set_ruler_flag = kynes_sacred_trials_ruler
		set_country_flag = recent_kynes_sacred_trials
		country_event = kynes_sacred_trials.1
	}
}
new effect kynes_trial = {
	args = {
		difficulty = int
		on_success = effect
		on_fail = effect
	}
	transpile = {
		random_list = {
			100 = {
				modifier = { 
					factor = 1.5
					mil = 1 
				}
				modifier = { 
					factor = 1.6
					mil = 2    
				}
				modifier = { 
					factor = 1.7
					mil = 3       
				}
				modifier = {     
					factor = 1.8
					mil = 4
				}
				modifier = {    
					factor = 1.9
					mil = 5
				}
				modifier = {      
					factor = 2
					mil = 6
				}
				modifier = {
					factor = 1.1
					owns = shadowgreen
					provinces:shadowgreen = {
						has_great_project = {
							type = shadowgreen_holy_site
							tier = 1
						}
					}
				}
				args:on_success
			} 
			args:difficulty = {
				args:on_fail
			}	
		}
	}
}
new country_event kynes_sacred_trials.1 = {
	title = "Defeat the Guardian Mudcrab"
	desc = ""
	picture = kyne_crab_eventPicture
	is_triggered_only = yes
	options = {
		{
			name = "To Battle!"
			effect = {
				kynes_trial = {
					difficulty = 25
					on_fail = {
						kill_ruler = yes
					}
					on_success = {
						new_custom_tooltip = "The event '§YDefeat the Guardian Skeever§!' happens."
						hidden_effect = {
							random_list = {
								95 = {
									country_event = kynes_sacred_trials.2
								}
								5 = {
									country_event = kynes_sacred_trials.8
								}
							}
						}
					}
				}
			}
		}
		{
			name = "This is as far as I can go."
			effect = {
				
			}
		}
	}
}
new country_event kynes_sacred_trials.2 = {
	title = "Defeat the Guardian Skeever"
	desc = ""
	picture = kyne_skeever_eventPicture
	is_triggered_only = yes
	options = {
		{
			name = "To Battle!"
			effect = {
				kynes_trial = {
					difficulty = 50
					on_fail = {
						kill_ruler = yes
					}
					on_success = {
						add_prestige = 10
						country_event = kynes_sacred_trials.3
					}
				}
			}
		}
		{
			name = "This is as far as I can go."
			effect = {
				
			}
		}
	}
}
new country_event kynes_sacred_trials.3 = {
	title = "Defeat the Guardian Wolf"
	desc = ""
	picture = kyne_wolf_eventPicture
	is_triggered_only = yes
	options = {
		{
			name = "To Battle!"
			effect = {
				kynes_trial = {
					difficulty = 100
					on_fail = {
						kill_ruler = yes
					}
					on_success = {
						add_legitimacy = 10
						country_event = kynes_sacred_trials.4
					}
				}
			}
		}
		{
			name = "This is as far as I can go."
			effect = {
				
			}
		}
	}
}
new country_event kynes_sacred_trials.4 = {
	title = "Defeat the Guardian Bear"
	desc = ""
	picture = kyne_bear_eventPicture
	is_triggered_only = yes
	options = {
		{
			name = "To Battle!"
			effect = {
				kynes_trial = {
					difficulty = 150
					on_fail = {
						kill_ruler = yes
					}
					on_success = {
						add_mil_power = 50
						country_event = kynes_sacred_trials.5
					}
				}
			}
		}
		{
			name = "This is as far as I can go."
			effect = {
				
			}
		}
	}
}
new country_event kynes_sacred_trials.5 = {
	title = "Defeat the Guardian Mammoth"
	desc = ""
	picture = kyne_mammoth_eventPicture
	is_triggered_only = yes
	options = {
		{
			name = "To Battle!"
			effect = {
				kynes_trial = {
					difficulty = 200
					on_fail = {
						kill_ruler = yes
					}
					on_success = {
						add_dip_power = 50
						country_event = kynes_sacred_trials.6
					}
				}
			}
		}
		{
			name = "This is as far as I can go."
			effect = {
				
			}
		}
	}
}
new country_event kynes_sacred_trials.6 = {
	title = "Defeat the Guardian Sabre Cat"
	desc = ""
	picture = kyne_sabre_cat_eventPicture
	is_triggered_only = yes
	options = {
		{
			name = "To Battle!"
			effect = {
				kynes_trial = {
					difficulty = 250
					on_fail = {
						kill_ruler = yes
					}
					on_success = {
						add_adm_power = 50
						country_event = kynes_sacred_trials.7
					}
				}
			}
		}
		{
			name = "This is as far as I can go."
			effect = {
				
			}
		}
	}
}
new country_event kynes_sacred_trials.7 = {
	title = "Defeat the Guardian Troll"
	desc = ""
	picture = kyne_troll_eventPicture
	is_triggered_only = yes
	options = {
		{
			name = "To Battle!"
			effect = {
				kynes_trial = {
					difficulty = 300
					on_fail = {
						kill_ruler = yes
					}
					on_success = {
						add_ruler_modifier = { 
							name = kynes_token
							duration = -1
						}
					}
				}
			}
		}
		{
			name = "This is as far as I can go."
			effect = {
				
			}
		}
	}
}
new event_modifier kynes_token = {
	name = "Kyne's Token"
	modifier = {
		country_military_power = 1
	}
}
new country_event kynes_sacred_trials.8 = {
	title = "Defeat the Guardian Emperor Crab"
	desc = ""
	picture = kyne_emperor_crab_eventPicture
	is_triggered_only = yes
	options = {
		{
			name = "To Battle!"
			effect = {
				kynes_trial = {
					difficulty = 1500
					on_fail = {
						kill_ruler = yes
					}
					on_success = {
						add_ruler_modifier = { 
							name = kynes_sacred_token
							duration = -1
						}
					}
				}
			}
		}
		{
			name = "This is as far as I can go."
			effect = {
				
			}
		}
	}
}
new event_modifier kynes_sacred_token = {
	name = "Kyne's Sacred Token"
	modifier = {
		country_admin_power = 1
		country_diplomatic_power = 1
		country_military_power = 1
	}
}