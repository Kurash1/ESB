definegfx = {
	name = "GFX_cardinal_icon"
	texturefile = "gfx/interface/cardinal_icon.dds"
}

khajiit_group = {
	flags_with_emblem_percentage = 0
	flag_emblem_index_range = { 1 18 }
	
	center_of_religion = 922
	
	ai_will_propagate_through_trade = yes
	
	defender_of_faith = yes
	can_form_personal_unions = yes
	
	religious_schools = {
	
	    desert_wind = {
		    potential_invite_scholar = { 
				religion = khajiiti_pantheon 		
				knows_of_scholar_country_capital_trigger = yes 
			}
			can_invite_scholar = { 
				adm_power_cost = 50 
				reverse_has_opinion = { 
					who = FROM 
					value = 150 
				} 
				NOT = { has_country_modifier = desert_wind_modifier } 
				OR = { alliance_with = FROM is_subject_of = FROM overlord_of = FROM } 
				hidden_progressive_opinion_for_scholar_trigger = yes 
			}
			on_invite_scholar = { 
				adm_power_cost = 100 
				clear_religious_scholar_modifiers_effect = yes 
				custom_tooltip = INVITE_SCHOLAR_COUNTRY_TEXT 
				add_country_modifier = { 
					name = desert_wind_modifier 
					duration = 7300 
				} 
			}
			
			invite_scholar_modifier_display = desert_wind_modifier
			
			picture = "GFX_icon_desert_wind"
			
			army_tradition_decay = -0.015
		}
		
		goutfang = {
		    potential_invite_scholar = { 
				religion = khajiiti_pantheon 		
				knows_of_scholar_country_capital_trigger = yes 
			}
			can_invite_scholar = { 
				adm_power_cost = 50 
				reverse_has_opinion = { 
					who = FROM 
					value = 150 
				} 
				NOT = { has_country_modifier = goutfang_modifier } 
				OR = { alliance_with = FROM is_subject_of = FROM overlord_of = FROM } 
				hidden_progressive_opinion_for_scholar_trigger = yes 
			}
			on_invite_scholar = { 
				adm_power_cost = 100 
				clear_religious_scholar_modifiers_effect = yes 
				custom_tooltip = INVITE_SCHOLAR_COUNTRY_TEXT 
				add_country_modifier = { 
					name = goutfang_modifier 
					duration = 7300 
				} 
			}
			
			invite_scholar_modifier_display = goutfang_modifier
			
			picture = "GFX_icon_goutfang"
			
			discipline = 0.05
		}
		
		desert_rain = {
		    potential_invite_scholar = { 
				religion = khajiiti_pantheon 		
				knows_of_scholar_country_capital_trigger = yes 
			}
			can_invite_scholar = { 
				adm_power_cost = 50 
				reverse_has_opinion = { 
					who = FROM 
					value = 150 
				} 
				NOT = { has_country_modifier = desert_rain_modifier } 
				OR = { alliance_with = FROM is_subject_of = FROM overlord_of = FROM } 
				hidden_progressive_opinion_for_scholar_trigger = yes 
			}
			on_invite_scholar = { 
				adm_power_cost = 100 
				clear_religious_scholar_modifiers_effect = yes 
				custom_tooltip = INVITE_SCHOLAR_COUNTRY_TEXT 
				add_country_modifier = { 
					name = desert_rain_modifier 
					duration = 7300 
				} 
			}
			
			invite_scholar_modifier_display = desert_rain_modifier
			
			picture = "GFX_icon_desert_rain"
			
			movement_speed = 0.1
		}
		
		whispering_claw = {
		    potential_invite_scholar = { 
				religion = khajiiti_pantheon 		
				knows_of_scholar_country_capital_trigger = yes 
			}
			can_invite_scholar = { 
				adm_power_cost = 50 
				reverse_has_opinion = { 
					who = FROM 
					value = 150 
				} 
				NOT = { has_country_modifier = whispering_claw_modifier } 
				OR = { alliance_with = FROM is_subject_of = FROM overlord_of = FROM } 
				hidden_progressive_opinion_for_scholar_trigger = yes 
			}
			on_invite_scholar = { 
				adm_power_cost = 100 
				clear_religious_scholar_modifiers_effect = yes 
				custom_tooltip = INVITE_SCHOLAR_COUNTRY_TEXT 
				add_country_modifier = { 
					name = whispering_claw_modifier 
					duration = 7300 
				} 
			}
			
			invite_scholar_modifier_display = whispering_claw_modifier
			
			picture = "GFX_icon_whispering_claw"
			
			spy_offence = 0.15
		}
		
		
	}
	
	
	khajiiti_pantheon = {
		color = { 202 230 59 }
		icon = 8
		allow_female_defenders_of_the_faith = yes
		country = {
		    dip_tech_cost_modifier = -0.10
			recover_army_morale_speed = 0.10
		}
		country_as_secondary = {
			dip_tech_cost_modifier = -0.10
			recover_army_morale_speed = 0.10
		}
		province = {
			local_missionary_strength = -0.015
		}
		
		papacy = {
			papal_tag = TOR
			election_cost = 5
			seat_of_papacy = 922
			
			# Papal Actions below!
			
			local_saint = { #1
				cost = 50
				potential = {
					always = yes
				}
				allow = {
					NOT = { war_with = TOR }
					NOT = { stability = 3 }
				}
				effect = {
					add_stability = 1
				}
				ai_will_do = {
					factor = 2
					modifier = {
						factor = 2
						NOT = { stability = 0 }
					}
				}
			}
			sanction_holy_order_adm = { #2
				cost = 100
				potential = {
					always = yes
				}
				allow = {
					NOT = { 
						war_with = TOR 
						has_country_modifier = khajiit_holy_adm 
						has_country_modifier = khajiit_holy_dip 
						has_country_modifier = khajiit_holy_mil 
					}
				}
				effect = {
					add_country_modifier = {
						name = khajiit_holy_adm
						duration = 10years
					}
					definemod khajiit_holy_adm = { 
						country_admin_power = 1
						global_tax_modifier = -25%
					}
				}
				ai_will_do = {
					factor = 2
					modifier = {
						factor = 2
						NOT = { monthly_adm = 3 }
					}
					modifier = {
						factor = 2.5
						NOT = { adm = 2 }
					}
					modifier = {
						factor = 0
						adm = 5
					}
					modifier = {
						factor = 0
						is_in_deficit = yes
					}
				}
			}
			sanction_holy_order_dip = { #3
				cost = 100
				potential = {
					always = yes
				}
				allow = {
					NOT = { 
						war_with = TOR 
						has_country_modifier = khajiit_holy_adm 
						has_country_modifier = khajiit_holy_dip 
						has_country_modifier = khajiit_holy_mil 
					}
				}
				effect = {
					add_country_modifier = {
						name = khajiit_holy_dip
						duration = 10years
					}
					definemod khajiit_holy_dip = { 
						country_diplomatic_power = 1
						production_efficiency = -25%
					}
				}
				ai_will_do = {
					factor = 2
					modifier = {
						factor = 2
						NOT = { monthly_dip = 3 }
					}
					modifier = {
						factor = 2.5
						NOT = { dip = 2 }
					}
					modifier = {
						factor = 0
						dip = 5
					}
					modifier = {
						factor = 0
						is_in_deficit = yes
					}
				}
			}
			sanction_holy_order_mil = { #4
				cost = 100
				potential = {
					always = yes
				}
				allow = {
					NOT = { 
						war_with = TOR 
						has_country_modifier = khajiit_holy_adm 
						has_country_modifier = khajiit_holy_dip 
						has_country_modifier = khajiit_holy_mil 
					}
				}
				effect = {
					add_country_modifier = {
						name = khajiit_holy_mil
						duration = 10years
					}
					definemod khajiit_holy_mil = { 
						country_military_power = 1
						land_maintenance_modifier = 25%
					}
				}
				ai_will_do = {
					factor = 2
					modifier = {
						factor = 2
						NOT = { monthly_mil = 3 }
					}
					modifier = {
						factor = 2.5
						NOT = { mil = 2 }
					}
					modifier = {
						factor = 0
						mil = 5
					}
					modifier = {
						factor = 0
						is_in_deficit = yes
					}
				}
			}
			khajiit_wares_if_coin = { #5
				cost = 100
				potential = {
					always = yes
				}
				allow = {
					NOT = { war_with = TOR }
					NOT = { has_country_modifier = khajiit_wares_if_coin_mod }
				}
				effect = {
					add_country_modifier = {
						name = khajiit_wares_if_coin_mod
						duration = 10years
					}
					definemod khajiit_wares_if_coin_mod = { 
						global_tax_income = 60
					}
				}
				ai_will_do = {
					factor = 1
					modifier = {
						factor = 2
						NOT = { monthly_income = 25 }
					}
					modifier = {
						factor = 2.5
						NOT = { monthly_income = 10 }
					}
					modifier = {
						factor = 5
						NOT = { monthly_income = 0 }
					}
					modifier = {
						factor = 0
						monthly_income = 50
					}
				}
			}
			khajiit_paragon = { #6
				cost = 75
				potential = {
					always = yes
				}
				allow = {
					NOT = { war_with = TOR }
					years_of_income = 1
				}
				effect = {
					create_general = { tradition = 100 }
					defineloc khajiit_paragon_formula = "cost = 50 + (Monthly Income * 6)"
					custom_tooltip = khajiit_paragon_formula
					add_years_of_income = -0.5
					add_treasury = -50
				}
				ai_will_do = {
					factor = 2
					modifier = {
						factor = 2
						manpower_percentage = 0.75
					}
					modifier = {
						factor = 2.5
						manpower_percentage = 1
					}
					modifier = {
						factor = 0.5
						OR = {
							NOT = { manpower_percentage = 0.5 }
							NOT = { treasury = 100 }
						}
					}
					modifier = {
						factor = 0
						NOT = { manpower_percentage = 0.25 }
					}
				}
			}
			khajiit_loyal_court = { #7 NOT defFaith
				cost = 75
				potential = {
					always = yes
					is_defender_of_faith = no
				}
				allow = {
					NOT = { war_with = TOR }
				}
				effect = {
					add_country_modifier = {
						name = khajiit_loyal_court_mod
						duration = 10years
					}
					definemod khajiit_loyal_court_mod = { 
						all_estate_loyalty_equilibrium = 5%
						#allow_free_estate_privilege_revocation = yes
						global_spy_defence = 15%
					}
				}
				ai_will_do = {
					factor = 1
					modifier = {
						factor = 2
						NOT = { monthly_income = 25 }
					}
					modifier = {
						factor = 2.5
						NOT = { monthly_income = 10 }
					}
					modifier = {
						factor = 5
						NOT = { monthly_income = 0 }
					}
					modifier = {
						factor = 0
						monthly_income = 50
					}
				}
			}
			khajiit_wisdom_old = { #8
				defineloc khajiit_wisdom_old = "Wisdom of the Clan Mothers"
				cost = 25
				potential = {
					always = yes
				}
				allow = {
					NOT = { war_with = TOR }
					NOT = { has_country_modifier = khajiit_wisom_old_mod }
				}
				effect = {
					add_country_modifier = {
						name = khajiit_wisom_old_mod
						duration = 5years
					}
					defineloc khajiit_wisom_old_mod = "Wisdom of the Clan Mothers"
					definemod khajiit_wisom_old_mod = { 
						idea_cost = -2.5%
						development_cost = -5%
					}
					if = { limit = { NOT = { TAG = TOR } }
						add_adm_power = 20
						add_dip_power = 20
						add_mil_power = 20
					}
					else = { 
						add_adm_power = 30
						add_dip_power = 30
						add_mil_power = 30
					}
				}
				ai_will_do = {
					factor = 1
				}
			}
			
			khajiit_limit_pope_two = { #11 ONLY pope
				cost = 1
				potential = {
					always = yes
					TAG = TOR
				}
				allow = {
					NOT = { war_with = TOR }
					NOT = { has_ruler_flag = main_mane }
				}
				effect = {
					random_list = {
						1 = {
							if = { 
								limit = { 
									NOT = { 
										adm = 7 
									} 
								}
								change_adm = 1
							}
							else = {
								add_adm_power = 100
							}
						}
						1 = {
							if = { 
								limit = { 
									NOT = { 
										dip = 7 
									} 
								}
								change_dip = 1
							}
							else = {
								add_dip_power = 100
							}
						}
						1 = {
							if = { 
								limit = { 
									NOT = { 
										mil = 7 
									} 
								}
								change_mil = 1
							}
							else = {
								add_mil_power = 100
							}
						}
					}
					set_ruler_flag = main_mane
				}
				ai_will_do = {
					factor = 1
				}
			}
			#khajiit_unity_formable = { #12 formable only
			#	cost = 50
			#	potential = {
			#		OR = {
			#			TAG = c@elsweyr
			#			TAG = c@pellitine
			#			TAG = c@anequina
			#		}
			#	}
			#	allow = {
			#		NOT = { war_with = TOR }
			#		culture_group = khajiit_group
			#	}
			#	effect = {
			#		add_country_modifier = {
			#			name = khajiit_unity_mod
			#			duration = 10years
			#		}
			#		definemod khajiit_unity_mod = { 
			#			relation_with_same_culture_group = 25
			#			manpower_in_culture_group_provinces = 0.1
			#			regiment_manpower_usage = -0.1
			#			diplomatic_reputation = 1
			#		}
			#	}
			#	ai_will_do = {
			#		factor = 2
			#		modifier = {
			#			factor = 2
			#			NOT = { diplomatic_reputation = 1 }
			#		}
			#		modifier = {
			#			factor = 2.5
			#			NOT = { diplomatic_reputation = -1 }
			#		}
			#		modifier = {
			#			factor = 0
			#			diplomatic_reputation = 3
			#		}
			#	}
			#}
			#khajiit_limit_emperor = { #13 moon emperor ONLY
			#	cost = 1
			#	potential = {
			#		always = yes
			#	}
			#	allow = {
			#		NOT = { war_with = TOR }
			#	}
			#	effect = {
			#	}
			#	ai_will_do = {
			#		factor = 0
			#	}
			#}
			#NOT x
			khajiit_heathen_hunt = { #14 NOT pope
				cost = 100
				potential = {
					always = yes
					NOT = { TAG = TOR }
				}
				allow = {
					NOT = { war_with = TOR }
				}
				effect = {
					add_country_modifier = {
						name = khajiit_heathen_hunt_mod
						duration = 10years
					}
					definemod khajiit_convert_mod = { 
						curia_powers_cost = 0.5
						curia_treasury_contribution = 5
						papal_influence = 1
						global_missionary_strength = 0.05
						missionaries = 1
						missionary_maintenance_cost = 1
						papal_influence_from_cardinals = 0.333
						prestige_per_development_from_conversion = -1.1
						tolerance_own = -0.5
						tolerance_heretic = -2.5
						tolerance_heathen = -2.5
					}
				}
				ai_will_do = {
					factor = 1
					modifier = {
						factor = 0
						OR = { religious_unity = 100 NOT = { OR = { prestige = 0 monthly_income = 0 } } }
					}
					modifier = {
						factor = 0.5
						NOT = { monthly_income = 10 }
					}
					modifier = {
						factor = 2
						NOT = { religious_unity = 75 }
					}
					modifier = {
						factor = 2.5
						NOT = { religious_unity = 50 }
					}
					modifier = {
						factor = 5
						NOT = { religious_unity = 25 }
					}
				}
			}
			khajiit_youngsters = { #15 NOT pope
				cost = 75
				potential = {
					always = yes
					NOT = { TAG = TOR }
				}
				allow = {
					NOT = { war_with = TOR }
				}
				effect = {
					add_country_modifier = {
						name = khajiit_youngsters_mod
						duration = 10years
					}
					definemod khajiit_youngsters_mod = { 
						monarch_lifespan = -0.25
						monthly_heir_claim_increase = 0.25
						no_stability_loss_on_monarch_death = yes
						reform_progress_growth = 0.1
					}
				}
				ai_will_do = {
					factor = 1
					modifier = {
						factor = 2
						ruler_age = 50
					}
					modifier = {
						factor = 0
						NOT = { ruler_age = 30 }
					}
					modifier = {
						factor = 2.5
						heir_age = 20
					}
					modifier = {
						factor = 0
						NOT = { heir_age = 10 }
					}
				}
			}
			khajiit_limit_not_formable = { #16 NOT formable
				cost = 1
				potential = {
					always = yes
					#not formable
				}
				allow = {
					NOT = { war_with = TOR }
				}
				effect = {
				}
				ai_will_do = {
					factor = 1
				}
			}
			khajiit_limit_not_emperor = { #17 NOT emperor
				cost = 1
				potential = {
					always = yes
					#not moon emperor
				}
				allow = {
					NOT = { war_with = TOR }
				}
				effect = {
				}
				ai_will_do = {
					factor = 1
				}
			}
			khajiit_loyal_court = { #7 only defFaith
				cost = 75
				potential = {
					always = yes
					is_defender_of_faith = yes
				}
				allow = {
					NOT = { war_with = TOR }
				}
				effect = {
					add_country_modifier = {
						name = khajiit_loyal_court_mod
						duration = 10years
					}
					definemod khajiit_loyal_court_mod = { 
						all_estate_loyalty_equilibrium = 0.1
						allow_free_estate_privilege_revocation = yes
						global_spy_defence = 0.25
					}
				}
				ai_will_do = {
					factor = 1
					modifier = {
						factor = 2
						NOT = { monthly_income = 25 }
					}
					modifier = {
						factor = 2.5
						NOT = { monthly_income = 10 }
					}
					modifier = {
						factor = 5
						NOT = { monthly_income = 0 }
					}
					modifier = {
						factor = 0
						monthly_income = 50
					}
				}
			}
		}
		
		heretic = { KHAJIITI_HERETIC }	
	}
}
