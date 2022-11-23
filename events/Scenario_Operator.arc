namespace = es_scenario_operator

# Dawn Era
country_event = {
	id = es_scenario_operator.1
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	is_triggered_only = yes
	fire_only_once = yes
	
	immediate = {
		#Sunset of Merethic Era
		p@Alinor, p@Imperial_City, p@Sentinel, p@Alysinetta, p@Nilheim = { 
			owner = {
				country_event = { 
					id = es_1_scenario.1 
					days = 0 
				}
			}
		}
		#Our Old Republic
		p@Raven_Rock = {
			owner = {
				limit = {
					culture_group = high_elves_cg
				}
				country_event = {
					id = es_1_scenario.2
					days = 0
				}
			}
		}
		#Mad Ruler
		p@Tarlain_Heights = {
			owner = {
				limit = { 
					culture_group = bosmer_cg 
				} 
				country_event = { 
					id = es_1_scenario.3 
					days = 0
				}
			}
		}
		#Conquest of Weye
		#p@Imperial_City = {
		#	owner = {
		#		limit = { 
		#			culture_group = high_elves_cg 
		#		} 
		#		country_event = { 
		#			id = es_1_scenario.4 
		#			days = 392 
		#			random = 3725 
		#		}
		#	}
		#}
		#Conquest of Western Colovia
		#p@Imperial_City = { 
		#	owner = {
		#		limit = { 
		#			culture_group = high_elves_cg 
		#		} 
		#		country_event = { 
		#			id = es_1_scenario.5 
		#			days = 393 
		#			random = 5475 
		#		}
		#	} 
		#}
		#The Winterborn Clan
		p@Jehanna = {
			owner = {
				limit = { 
					culture_group = half_blood_cg 
				} 
				country_event = { 
					id = es_1_scenario.6 
					days = 0
				}
			}
		}
		###############################################################
		#The Isle of Artaeum
		every_country = {
			limit = { 
				culture_group = half_blood_cg
			} 
			country_event = { 
				id = es_0_scenario.1 
				days = 19years
				random = 2years
			}
		}
		#Visit from Atmora
		every_country = {
			limit = { 
				any_owned_province = { 
					is_capital = no 
					has_port = yes
					OR = {
						superregion = skyrim_superregion
						region = velothi_mountains_lr
						region = vvardenfell_lr
						region = llothanis_peninsula_lr
						trade_company_region = trade_company_wrothgar
						trade_company_region = trade_company_rivenspire
					}
				}
			}
			country_event = { 
				id = es_0_scenario.2 
				days = 0
			}
		}
	}

	option = {
		name = "es_1_scenario.1.a"
	}
	
}

# Second Dragon War
country_event = {
	id = es_scenario_operator.2
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	
	fire_only_once = yes
	
	trigger = {
	    tag = BLA
		NOT = { is_year = 135 }
		is_year = 102
   }

	mean_time_to_happen = {
		days = 3650		
	}
	
	immediate = {
		#Rise of Dragon Cult
	    if = { 
			limit = { 
				NOT = { 
					exists = c@Dragon_Cult
				}
			} 
			p@Dragon_Sanctuary = {
				owner = { 
					country_event = { 
						id = es_2_scenario.1 
						days = 397 
						random = 3650 
					}
				}
			}
		}
		#The Wailing Wheel of Vindasel
		p@Pellentea = {
			owner = {
				limit = { 
					culture_group = high_elves_cg 
					religion_group = daedric_group 
				} 
				country_event = { 
					id = es_2_scenario.6 
					days = 398 
					random = 3750 
				}
			}
		}
		#The Gut-Gardens of Sercen
		p@Vilverin = {
			owner = {
				limit = { 
					culture_group = high_elves_cg 
					religion_group = daedric_group 
				} 
				country_event = { 
					id = es_2_scenario.7 
					days = 399 
					random = 3850 
				}
			}
		}
		#Ceyatatar's Spearmen
		p@Elenglynn = {
			owner = {
				limit = { 
					culture_group = high_elves_cg 
				} 
				country_event = { 
					id = es_2_scenario.8 
					days = 400 
					random = 3950 
				}
			}
		}
		###
		set_global_flag = war_against_cult_of_dragons_global_flag
	}

	option = {
		name = "es_1_scenario.1.a"
	}
	
}

# Second Nordic-Elven War
country_event = {
	id = es_scenario_operator.3
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	
	fire_only_once = yes
	
	trigger = {
	    tag = BLA
		NOT = { is_year = 171 }
		OR = {
			is_year = 135
			any_country = {
				owns_or_subject_of = 3931
				owns_or_subject_of = 1286
				owns_or_subject_of = 1280
				owns_or_subject_of = 1268
				owns_or_subject_of = 1313
			}
		}
	}

	mean_time_to_happen = {
		days = 3650		
	}
	
	immediate = {
	    emperor = { kill_ruler = yes }
		set_global_flag = war_against_nords_global_flag
		#Nordic-Elven Crisis
		p@Nilheim = {
			owner = {
				limit = { 
					culture_group = snow_elves_cg 
				} 
				country_event = { 
					id = es_3_scenario.1 
					days = 401 
					random = 3425 
				}
			}
		}
		#Unification of Snow Elves
		p@Nilheim = {
			owner = {
				limit = { 
					culture_group = snow_elves_cg 				
				} 
				country_event = { 
					id = es_3_scenario.3 
					days = 402 
					random = 3650 
				}
			}
		}
		#War is Near
		every_country = {
			limit = { 
				culture_group = northern_cg 
				any_neighbor_country = { 
					culture_group = snow_elves_cg 
				} 
			} 
			country_event = { 
				id = es_3_scenario.2 
				days = 403 
				random = 3525 
			}
		}
		#Unification of Reach
		p@Karthwasten = { 
			owner = {
				limit = { 
					culture_group = half_blood_cg 
				} 
				country_event = { 
					id = es_3_scenario.4 
					days = 404 
					random = 3325 
				}
			} 
		}
		#Conquest of Valus Mountains
		p@Imperial_City = {
			owner = {
				country_event = { 
					id = es_3_scenario.5 
					days = 405 
					random = 3225 
				}
			}
		}
		#New lands await us!
		p@Bruma = { 
			owner = {
				limit = { 
					culture_group = snow_elves_cg 
				} 
				country_event = { 
					id = es_3_scenario.6 
					days = 406 
					random = 5475 
				}
			}
		}
		###
		#every_country = {
		#limit = { culture_group = high_elves_cg owns = 271 is_emperor = no } country_event = { id = es_3_scenario.7 days = 407 random = 5375 }
		#}
	}

	option = {
		name = "es_1_scenario.1.a"
	}
	
}

# Third Nordic Elven War
country_event = {
	id = es_scenario_operator.4
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	
	fire_only_once = yes
	
	trigger = {
	    tag = BLA
		NOT = { is_year = 204 }
		OR = {
			is_year = 171
			any_country = {
				owns_or_subject_of = 1275
				owns_or_subject_of = 1299
				owns_or_subject_of = 1306
				owns_or_subject_of = 3009
				owns_or_subject_of = 3000
			}
		}
   }

	mean_time_to_happen = {
		days = 3650		
	}
	
	immediate = {
		#Proposal of Randagulf
		p@Windhelm = {
			owner = {
				limit = { 
					ai = yes 
					culture_group = northern_cg 
					NOT = { has_country_flag = sky_ysgramor } 
				} 
				country_event = { 
					id = es_4_scenario.1 
					days = 408 
					random = 3650 
				}
			}
		}
		#Formation of the Skaal Tribe
		every_country = {
		limit = { primary_culture = skaal is_core = 3315 } country_event = { id = es_4_scenario.8 days = 409 random = 3750 }
		}
		###
		every_country = {
		limit = { culture_group = snow_elves_cg owns = 3191 } country_event = { id = es_4_scenario.2 days = 410 random = 3550 }
		}
		###
		every_country = {
		limit = { owns = 3119 religion = dragon_cult } country_event = { id = es_4_scenario.3 days = 411 random = 3450 }
		}
		###
		every_country = {
		limit = { culture_group = half_blood_cg owns = 7220 } country_event = { id = es_4_scenario.4 days = 412 random = 3350 }
		}
		###
		every_country = {
		limit = { culture_group = high_elves_cg owns = 1206 NOT = { owns = 1194 } } country_event = { id = es_4_scenario.5 days = 413 random = 3250 }
		}
		###
		every_country = {
			limit = { NOT = { tag = NF5 } owns = 3090 } country_event = { id = es_4_scenario.9 days = 414 random = 3850 }
		}
		###
		every_country = {
		limit = { primary_culture = ayleid owns = 1206 NOT = { tag = AYL } } country_event = { id = es_4_scenario.6 days = 415 random = 3150 }
		}
		###
		every_country = {
		limit = { ai = yes primary_culture = nord owns = 1275 NOT = { tag = SKY } NOT = { tag = OLD } } country_event = { id = es_4_scenario.7 days = 416 random = 3050 }
		}
	}

	option = {
		name = "es_1_scenario.1.a"
	}
	
}

# Narfinsel Schism
country_event = {
	id = es_scenario_operator.5
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	
	fire_only_once = yes
	
	trigger = {
	    tag = BLA
		NOT = { is_year = 233 }
		OR = {
		is_year = 204
		any_country = {
			religion_group = daedric_group
			num_of_cities = 150
			capital_scope = { superregion = cyrodiil_superregion } 
		}
		1206 = { owner = { culture_group = high_elves_cg religion = eight_divines } }
		}
   }

	mean_time_to_happen = {
		days = 3650		
	}
	
	immediate = {
		every_country = {
			limit = { 
				OR = { culture_group = high_elves_cg culture_group = cyrodiil_cg }
				religion_group = daedric_group 
				capital_scope = { superregion = cyrodiil_superregion }
			}
			country_event = { id = es_5_scenario.1 days = 417 random = 3650 }
		}
		###
		every_country = {
		limit = { OR = { owns = 1130 owns = 1120 owns = 1161 } } country_event = { id = es_5_scenario.4 days = 418 random = 31 }
		}
		###
		if = { limit = { 1275 = { owner = { culture_group = northern_cg } } }
        every_country = {
		limit = { culture_group = northern_cg owns = 1319 NOT = { owns = 1275 } } country_event = { id = es_5_scenario.5 days = 419 random = 3550 }
		}
		}
		###
		every_country = {
		limit = { culture_group = northern_cg OR = { owns = 1342 owns = 1336 } NOT = { owns = 1275 } } country_event = { id = es_5_scenario.6 days = 420 random = 3450 }
		}
		### Spawn Avanchzel
		if = { limit = { NOT = { has_country_flag = spawn_of_avanchzel_flag } }
			every_country = {
				limit = { NOT = { culture_group = dwemer_cg } any_owned_province = { area = skyrim_59_la } } country_event = { id = es_5_scenario.8 days = 421 random = 3250 }
			}
			set_country_flag = spawn_of_avanchzel_flag
		}
		if = { limit = { NOT = { has_country_flag = spawn_of_bthalft_flag } }
			every_country = {
				limit = { NOT = { culture_group = dwemer_cg } any_owned_province = { area = skyrim_57_la } } country_event = { id = es_5_scenario.9 days = 422 random = 3350 }
			}
			set_country_flag = spawn_of_bthalft_flag
		}
		### and Deep Folk Crossing
		if = { limit = { NOT = { has_country_flag = spawn_of_deepfolk_flag } }
			every_country = {
				limit = { NOT = { culture_group = dwemer_cg } owns = 1359 } country_event = { id = es_5_scenario.10 days = 423 random = 3150 }
			}
			set_country_flag = spawn_of_deepfolk_flag
		}
	}

	option = {
		name = "es_1_scenario.1.a"
	}
	
}

# Etherial War
country_event = {
	id = es_scenario_operator.6
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	
	fire_only_once = yes
	
	trigger = {
	    tag = BLA
		NOT = { is_year = 272 }
		OR = {
		is_year = 233
		any_country = {
			owns_or_subject_of = 2949
			owns_or_subject_of = 1314
			owns_or_subject_of = 2740
			owns_or_subject_of = 2713
			owns_or_subject_of = 7320
		}
		}
   }

	mean_time_to_happen = {
		days = 3650		
	}
	
	immediate = {
	    set_global_flag = etherial_crisis_flag
		2949 = { add_permanent_province_modifier = { name = "06_etherial_mine" duration = -1 } }
		3129 = { add_permanent_province_modifier = { name = "06_etherial_forge" duration = -1 } }
		2924 = { add_permanent_province_modifier = { name = "06_etherial_research_facility" duration = -1 } }
		###
		every_country = {
			country_event = { id = es_6_scenario.1 days = 31 }
		}
		###
		every_country = {
		limit = { culture_group = northern_cg owns = 1275 government = monarchy NOT = { has_reform = elective_monarchy } } country_event = { id = es_6_scenario.5 days = 424 random = 3550 }
		}
		###
		every_country = {
		limit = { culture_group = northern_cg owns = 1275 } country_event = { id = es_6_scenario.6 days = 425 random = 3450 }
		}
		###
		every_country = {
		limit = { culture_group = northern_cg owns = 1275 } country_event = { id = es_6_scenario.7 days = 426 random = 5475 }
		}
		###
		every_country = {
		limit = { culture_group = dwemer_cg owns = 970 } country_event = { id = es_6_scenario.8 days = 427 random = 3350 }
		}
		###
		every_country = {
		limit = { owns = 952 NOT = { owns = 3315 } } country_event = { id = es_6_scenario.10 days = 428 random = 10950 }
		}
		###
		every_country = {
		limit = { culture_group = dwemer_cg owns = 2949 } country_event = { id = es_6_scenario.12 days = 429 random = 10950 }
		}
		###
		every_country = {
		limit = { NOT = { culture_group = dwemer_cg } any_neighbor_country = { culture_group = dwemer_cg } } country_event = { id = es_6_scenario.13 days = 430 random = 5475 }
		}
		###############################################################
		every_country = {
			limit = { capital_scope = { continent = Tamriel } } country_event = { id = es_0_scenario.3 days = 431 random = 9125 }
		}
		### Spawn Avanchzel if ths bookamrks happens earlier!
		if = { limit = { NOT = { has_country_flag = spawn_of_avanchzel_flag } }
			every_country = {
				limit = { NOT = { culture_group = dwemer_cg } any_owned_province = { OR = { area = skyrim_57_la area = skyrim_59_la } } } country_event = { id = es_5_scenario.8 }
			}
			set_country_flag = spawn_of_avanchzel_flag
		}
		### and Bthalft
		if = { limit = { NOT = { has_country_flag = spawn_of_bthalft_flag } }
			every_country = {
				limit = { NOT = { culture_group = dwemer_cg } any_owned_province = { area = skyrim_57_la } } country_event = { id = es_5_scenario.9 }
			}
			set_country_flag = spawn_of_bthalft_flag
		}
		### and Deep Folk Crossing
		if = { limit = { NOT = { has_country_flag = spawn_of_deepfolk_flag } }
			every_country = {
				limit = { NOT = { culture_group = dwemer_cg } owns = 1359 } country_event = { id = es_5_scenario.10 }
			}
			set_country_flag = spawn_of_deepfolk_flag
		}
	}

	option = {
		name = "es_1_scenario.1.a"
	}
	
}

# Alessian Revolt
country_event = {
	id = es_scenario_operator.7
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	
	fire_only_once = yes
	
	trigger = {
	    tag = BLA
		NOT = { is_year = 208 }
		OR = {
			is_year = 178
			any_country = {
				owns_or_subject_of = 1206 # WGT
				owns_or_subject_of = 1130 # Bravil
				owns_or_subject_of = 5585 # Marlendra
				owns_or_subject_of = 5947 # Cheydinhall 
				owns_or_subject_of = 1251 # Aethelenia
			}
		}
   }

	mean_time_to_happen = {
		days = 3650		
	}
	
	immediate = {
		#es_reduce_development_worldwide = yes
		#every_country = {
		#	country_event = { id = es_economy.10 }
		#}
		###
		set_global_flag = alessian_rebellion_flag
		###
		every_country = {
		limit = { owns = 1206 } country_event = { id = es_7_scenario.1 days = 365 }
		}
		###
		every_country = {
		limit = { culture_group = northern_cg owns = 1275 } country_event = { id = es_7_scenario.6 days = 432 random = 3650 }
		}
		###
		every_country = {
		limit = { culture_group = northern_cg owns = 3073 } country_event = { id = es_7_scenario.7 days = 433 random = 3550 }
		}
		###
		every_country = {
		limit = { NOT = { culture_group = snow_elves_cg } any_owned_province = { region = rift_lr } any_neighbor_country = { any_owned_province = { culture = snow_elven } } } country_event = { id = es_7_scenario.8 days = 434 random = 3450 }
		}
		###
		every_country = {
		limit = { NOT = { culture_group = snow_elves_cg } any_owned_province = { region = jerall_mountains_lr } any_neighbor_country = { any_owned_province = { culture = snow_elven } } } country_event = { id = es_7_scenario.9 days = 435 random = 3350 }
		}
		###
		every_country = {
		limit = { culture_group = minotaur_cg owns = 1179 }  country_event = { id = es_7_scenario.10 days = 436 random = 3250 }
		}
		###
		every_country = {
		limit = { culture_group = cyrodiil_cg owns = 5627 } country_event = { id = es_7_scenario.11 days = 437 random = 3150 }
		}
		###
		every_country = {
		limit = { culture_group = cyrodiil_cg owns = 1120 } country_event = { id = es_7_scenario.12 days = 438 random = 3050 }
		}
		###
		every_country = {
		limit = { culture_group = cyrodiil_cg ai = yes is_free_or_tributary_trigger = yes } country_event = { id = es_7_scenario.13 days = 439 random = 9025 }
		}
		###
		every_country = {
		limit = { culture_group = half_blood_cg owns = 7220 } country_event = { id = es_7_scenario.14 days = 440 random = 3750 }
		}
		###
		every_country = {
		limit = { culture_group = minotaur_cg owns = 5755 } country_event = { id = es_7_scenario.15 days = 441 random = 3725 }
		}
		###############################################################
		if = {	limit = { NOT = { has_global_flag = es_0_scenario.5_flag } }
			random_country = {
				limit = { owns = 1369 } country_event = { id = es_0_scenario.5 days = 442 random = 9125 }
			}
			set_global_flag = es_0_scenario.5_flag
		}
		###
		every_country = {
			limit = { religion = nedic_pantheon } country_event = { id = es_7_scenario.16 days = 443 random = 3850 }
		}
	}

	option = {
		name = "es_1_scenario.1.a"
	}
	
}

# Skyrim Conquests
country_event = {
	id = es_scenario_operator.8
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	
	fire_only_once = yes
	
	trigger = {
	    tag = BLA
		NOT = { is_year = 335 }
		OR = {
		is_year = 308
		any_country = {
			owns_or_subject_of = 1275
			owns_or_subject_of = 1342
			owns_or_subject_of = 1319
			owns_or_subject_of = 3073
			owns_or_subject_of = 1268
		}
		}
   }

	mean_time_to_happen = {
		days = 3650		
	}
	
	immediate = {
		every_country = {
		limit = { owns = 1275 culture_group = northern_cg } country_event = { id = es_8_scenario.1 days = 444 random = 3650 }
		}
		###
		every_country = {
		limit = { owns = 970 culture_group = dwemer_cg } country_event = { id = es_8_scenario.3 days = 445 random = 3550 }
		}
		###
		every_country = {
		limit = { owns = 1379 culture_group = high_elves_cg } country_event = { id = es_8_scenario.4 days = 446 random = 3450 }
		}
		###
		every_country = {
		limit = { owns = 1344 culture_group = dead_cg } country_event = { id = es_8_scenario.5 days = 447 random = 3350 }
		}
		###
		every_country = {
		limit = { primary_culture = nord } country_event = { id = es_8_scenario.6 days = 448 random = 3750 }
		}
		###
		every_country = {
		limit = { owns = 1379 culture_group = high_elves_cg } country_event = { id = es_8_scenario.7 days = 449 random = 3850 }
		}
		###
		every_country = {
		limit = { owns = 1275 culture_group = northern_cg } country_event = { id = es_8_scenario.8 days = 450 random = 9125 }
		}
		###
		every_country = {
		limit = { owns = 6023 culture_group = dwemer_cg } country_event = { id = es_8_scenario.9 days = 451 random = 3950 }
		}
		###
		#every_country = {
		#limit = { is_part_of_hre = no culture_group = cyrodiil_cg } country_event = { id = es_8_scenario.10 days = 452 random = 4050 }
		#}
		###
		every_country = {
		limit = { OR = { owns = 1342 owns = 1319 } culture_group = northern_cg } country_event = { id = es_8_scenario.11 days = 453 random = 9225 }
		}
		###
		every_country = {
		limit = { owns = 5627 culture_group = cyrodiil_cg } country_event = { id = es_8_scenario.12 days = 454 random = 4150 }
		}
		###
		every_country = {
		limit = { owns = 5627 culture_group = cyrodiil_cg } country_event = { id = es_8_scenario.13 days = 455 random = 4225 }
		}
		###
		every_country = {
		limit = { owns = 5947 culture_group = cyrodiil_cg } country_event = { id = es_8_scenario.14 days = 456 random = 4350 }
		}
	}

	option = {
		name = "es_1_scenario.1.a"
	}
	
}

# Singliu Crisis
country_event = {
	id = es_scenario_operator.9
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	
	fire_only_once = yes
	
	trigger = {
	    tag = BLA
		NOT = { is_year = 359 }
		OR = {
			is_year = 335
			any_country = {
			owns_or_subject_of = 724
			owns_or_subject_of = 700
			owns_or_subject_of = 702
			owns_or_subject_of = 695
			owns_or_subject_of = 685
			}
		}
   }

	mean_time_to_happen = {
		days = 3650		
	}
	
	immediate = {
		every_country = {
		limit = { owns = 724 culture_group = tsaesci_cg } country_event = { id = es_9_scenario.1 days = 457 random = 3650 }
		}
		###
		every_country = {
		limit = { 
			OR = { culture_group = po_tun_cg culture_group = transpandomaic_cg }
			owns = 751
		}
		country_event = { id = es_9_scenario.2 days = 458 random = 3750 }
		}
		###
		every_country = {
		limit = { overlord = { is_emperor_of_china = yes } } country_event = { id = es_9_scenario.3 days = 459 random = 1825 }
		}
		###
		every_country = {
		limit = { owns = 751 culture_group = transpandomaic_cg } country_event = { id = es_9_scenario.4 days = 460 random = 9125 }
		}
	}

	option = {
		name = "es_1_scenario.1.a"
	}
	
}

# Fall of the Old World
country_event = {
	id = es_scenario_operator.10
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	
	fire_only_once = yes
	
	trigger = {
	    tag = BLA
		NOT = { is_year = 387 }
		OR = {
			is_year = 359
			AND = {
				has_global_flag = alessian_rebellion_flag
				any_country = {
					OR = {
						religion = eight_divines
						religion = nedic_pantheon
					}
					num_of_cities = 250
				}
			}
		}
    }

	mean_time_to_happen = {
		days = 3650		
	}
	
	immediate = {
		set_global_flag = marukhism_flag
	    ###
	    1130 = { remove_reform_center = nedic_pantheon }
		1120 = { remove_reform_center = nedic_pantheon }
        1161 = { remove_reform_center = nedic_pantheon }
	    ### 
		every_country = {
		limit = { OR = { owns = 1206 owns = 820 } } country_event = { id = es_10_scenario.1 days = 461 random = 3650 }
		}
		###
		every_country = {
		limit = { owns = 1382 culture_group = high_elves_cg } country_event = { id = es_10_scenario.2 days = 462 random = 3750 }
		}
		###
		every_country = {
		limit = { owns = 1206 culture_group = cyrodiil_cg } country_event = { id = es_10_scenario.3 days = 463 random = 3850 }
		}
		###
		every_country = {
			limit = { owns = 1206 NOT = { religion_group = daedric_group } } country_event = { id = es_10_scenario.4 days = 464 random = 3950 }
		}
		###
		every_country = {
		limit = { owns = 1002 culture_group = velothi_cg } country_event = { id = es_10_scenario.7 days = 465 random = 4050 }
		}
		###
		every_country = {
		limit = { owns = 4098 culture_group = velothi_cg } country_event = { id = es_10_scenario.8 days = 466 random = 4150 }
		}
		###
		every_country = {
		limit = { NOT = { is_free_or_tributary_trigger = yes } culture_group = velothi_cg } country_event = { id = es_10_scenario.9 days = 467 random = 4250 }
		}
		###
		every_country = {
		limit = { owns = 1002 culture_group = velothi_cg } country_event = { id = es_10_scenario.10 days = 468 random = 4350 }
		}
	}

	option = {
		name = "es_1_scenario.1.a"
	}
	
}

# War of Succession
country_event = {
	id = es_scenario_operator.11
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	
	fire_only_once = yes
	
	trigger = {
	    tag = BLA
		NOT = { is_year = 410 }
		OR = {
		is_year = 387
		any_country = {
			owns_or_subject_of = 1275
			owns_or_subject_of = 2949
			owns_or_subject_of = 970
			owns_or_subject_of = 1342
			owns_or_subject_of = 1369
		}
		}
   }

	mean_time_to_happen = {
		days = 3650		
	}
	
	immediate = {
	    if = { limit = { exists = OLD }
		    OLD = { country_event = { id = es_11_scenario.1 days = 469 random = 1825 } }
		}
		else = { every_country = { limit = { culture_group = northern_cg owns = 1275 } country_event = { id = es_11_scenario.1 days = 470 random = 1925 } } }
		###
		if = { limit = { 970 = { owner = { NOT = { culture_group = dwemer_cg } } } }
		every_country = { limit = { culture_group = dwemer_cg is_free_or_tributary_trigger = yes capital_scope = { superregion = morrowind_superregion } } country_event = { id = es_11_scenario.2 days = 471 random = 3650 } }
		}
		###
		every_country = { limit = { culture_group = yokudo_redguard_cg capital_scope = { region = yokuda_lr } } country_event = { id = es_11_scenario.3 days = 472 random = 3750 } }
		###
		every_country = { limit = { culture_group = northern_cg OR = { owns = 1342 owns = 1275 } } country_event = { id = es_11_scenario.6 days = 473 random = 3850 } }
		###
		every_country = { limit = { culture_group = high_elves_cg owns = 1382 } country_event = { id = es_11_scenario.8 days = 474 random = 3950 } }
		###
		if = { limit = { NOT = { exists = REA } }
		every_country = { limit = { owns = 7220 NOT = { culture_group = half_blood_cg } NOT = { government_rank = 7 } } country_event = { id = es_11_scenario.9 days = 475 random = 4050 } }
		}
		###
		every_country = { limit = { owns = 1206 } country_event = { id = es_11_scenario.10 days = 476 random = 4150 } }
	}

	option = {
		name = "es_1_scenario.1.a"
	}
	
}

# Intervention into Hammerfell
country_event = {
	id = es_scenario_operator.12
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	
	fire_only_once = yes
	
	trigger = {
	    tag = BLA
		NOT = { is_year = 436 }
		OR = {
		is_year = 410
		any_country = {
			owns_or_subject_of = 1493
			owns_or_subject_of = 1510
			owns_or_subject_of = 6392
			owns_or_subject_of = 1482
			owns_or_subject_of = 6436
		}
		}
   }

	mean_time_to_happen = {
		days = 3650		
	}
	
	immediate = {
	    every_province = { limit = { is_city = no OR = { area = hammerfell_38_la area = hammerfell_37_la area = hammerfell_35_la area = hammerfell_34_la area = hammerfell_33_la } } cede_province = ROU add_core = ROU change_culture = dwemer change_religion = reason_and_logic_cult }
		###
		every_country = { limit = { owns = 1319 } country_event = { id = es_12_scenario.1 days = 477 random = 3650 } }
		###
		every_country = { limit = { NOT = { exists = CA6 } any_owned_province = { area = cyrodiil_6_la } } country_event = { id = es_12_scenario.3 days = 478 random = 3750 } }
		###
		every_country = { limit = { NOT = { exists = CA7 } any_owned_province = { area = cyrodiil_7_la } } country_event = { id = es_12_scenario.4 days = 479 random = 3850 } }
		###
		every_country = { limit = { culture_group = cyrodiil_cg owns = 1206 NOT = { government = monarchy } } country_event = { id = es_12_scenario.5 days = 480 random = 3950 } }
		###
		every_country = { limit = { culture_group = high_elves_cg owns = 1379 } country_event = { id = es_12_scenario.6 days = 481 random = 4050 } }
		###
		every_country = { limit = { culture_group = northern_cg owns = 1342 } country_event = { id = es_12_scenario.7 days = 482 random = 4150 } }
		###
		every_country = { limit = { capital_scope = { superregion = high_rock_superregion } num_of_subjects = 1 } country_event = { id = es_12_scenario.8 days = 483 random = 4250 } }
		###
		every_country = { limit = { culture_group = half_blood_cg owns = 7220 } country_event = { id = es_12_scenario.10 days = 484 random = 4350 } }
		###
		every_country = { limit = { culture_group = cyrodiil_cg owns = 1206 } country_event = { id = es_12_scenario.11 days = 485 random = 9125 } }
		###
		every_country = { limit = { NOT = { tag = COL } culture_group = cyrodiil_cg owns = 1206 } country_event = { id = es_12_scenario.13 days = 486 random = 12775 } }
		###
		every_country = { limit = { OR = { overlord_of = COL any_subject_country = { owns = 5627 } } } country_event = { id = es_12_scenario.14 days = 487 random = 18250 } }
		###
		every_country = { limit = { culture_group = northern_cg any_owned_province = { superregion = skyrim_superregion } } country_event = { id = es_12_scenario.100 days = 488 random = 4450 } }
		###
		every_country = { limit = { culture_group = dwemer_cg } country_event = { id = es_12_scenario.101 days = 489 random = 4550 } }
		###
		every_country = { limit = { culture_group = velothi_cg owns = 1002 } country_event = { id = es_12_scenario.102 days = 490 random = 4650 } }
		###
		every_country = { limit = { culture_group = northern_cg owns = 1275 } country_event = { id = es_12_scenario.103 days = 491 random = 4750 } }
	}

	option = {
		name = "es_1_scenario.1.a"
	}
	
}

# Clash of the Greats
country_event = {
	id = es_scenario_operator.13
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	
	fire_only_once = yes
	
	trigger = {
	    tag = BLA
		NOT = { is_year = 458 }
		OR = {
		is_year = 436
		any_country = {
			culture_group = high_elves_cg
			capital_scope = { region = high_rock_lr }
			num_of_cities = 250
		}
		}
   }

	mean_time_to_happen = {
		days = 3650		
	}
	
	immediate = {
		every_country = { limit = { culture_group = high_elves_cg owns = 1379 } country_event = { id = es_13_scenario.2 days = 492 random = 3650 } }
		###
		every_country = { limit = { culture_group = high_elves_cg owns = 1379 } country_event = { id = es_13_scenario.3 days = 493 random = 5475 } }
		###
		every_country = { limit = { owns = 1379 } country_event = { id = es_13_scenario.4 days = 494 random = 9125 } }
		###
		every_country = { limit = { culture_group = northern_cg owns = 1275 } country_event = { id = es_13_scenario.6 days = 495 random = 5575 } }
		###
		every_country = { limit = { culture_group = cyrodiil_cg owns = 1206 } country_event = { id = es_13_scenario.8 days = 496 random = 5575 } }
		###
		every_country = { limit = { culture_group = high_elves_cg owns = 1379 } country_event = { id = es_13_scenario.9 days = 497 random = 13687 } }
		###
		every_country = { limit = { OR = { culture_group = snow_elves_cg culture_group = high_elves_cg } } country_event = { id = es_13_scenario.10 days = 498 random = 12775 } }
	}
	
	option = {
		name = "es_1_scenario.1.a"
	}
	
}

# Rise of High Rock
country_event = {
	id = es_scenario_operator.14
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	
	fire_only_once = yes
	
	trigger = {
	    tag = BLA
		NOT = { is_year = 326 }
		OR = {
			is_year = 296
			AND = {
				has_global_flag = alessian_rebellion_flag
				any_country = {
					owns_or_subject_of = 1379
					owns_or_subject_of = 6933
					owns_or_subject_of = 1394
					owns_or_subject_of = 6990
					owns_or_subject_of = 7045
				}
			}
		}
   }

	mean_time_to_happen = {
		days = 3650		
	}
	
	immediate = {
		if = {
			limit = {
				any_country = { primary_culture = breton ai = no }
			}
			random_country = {
				limit = {
					culture_group = half_blood_cg ai = no
				}
				country_event = { id = es_14_scenario.1 days = 499 random = 3650 }
			}
		}
		else_if = {
			limit = {
				any_country = { culture_group = half_blood_cg owns = 1394 }
			}
			random_country = {
				limit = {
					culture_group = half_blood_cg owns = 1394
				}
				country_event = { id = es_14_scenario.1 days = 500 random = 3650 }
			}
		}
		else = {
			random_country = {
				limit = {
					primary_culture = breton
				}
				country_event = { id = es_14_scenario.1 days = 501 random = 3650 }
			}
		}
		###
		every_country = { limit = { owns = 1394 } country_event = { id = es_14_scenario.2 days = 502 random = 9125 } }
		###
		every_country = { limit = { any_neighbor_country = { owns = 1206 } is_free_or_tributary_trigger = yes } country_event = { id = es_14_scenario.5 days = 503 random = 3750 }  }
	
		country_event = {
			id = esb_scenario.1 # Will happen 1-51 years after Rise of High Rock
			days = 365 # 1 year
			random = 36500 # + up to 50 years
		}
	}
	
	option = {
		name = "es_1_scenario.1.a"
	}
}

# Coral Kingdom
country_event = {
	id = es_scenario_operator.15
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	
	fire_only_once = yes
	
	trigger = {
	    tag = BLA
		NOT = { is_year = 512 }
		OR = {
		is_year = 487
			any_country = {
				culture_group = sload_cg
				num_of_cities = 150
			}
		}
   }

	mean_time_to_happen = {
		days = 3650		
	}
	
	immediate = {
		every_country = { limit = { OR = { owns = 1394 owns = 1369 } culture_group = half_blood_cg } country_event = { id = es_15_scenario.1 days = 504 random = 3650 } }
		###
		every_country = { limit = { owns = 323 culture_group = sload_cg } country_event = { id = es_15_scenario.2 days = 505 random = 3750 } }
		###
		every_country = { limit = { owns = 335 culture_group = yokudo_redguard_cg } country_event = { id = es_15_scenario.3 days = 506 random = 3850 } }
		
	}
	
	option = {
		name = "es_1_scenario.1.a"
	}
	
}

country_event = {
	id = es_scenario_operator.16
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	
	fire_only_once = yes
	
	trigger = {
	    tag = BLA
		NOT = { is_year = 535 }
		OR = {
		is_year = 512
		any_country = {
			owns_or_subject_of = 1391
			owns_or_subject_of = 1425
			owns_or_subject_of = 1422
			owns_or_subject_of = 1400
			owns_or_subject_of = 1413
		}
		}
   }

	mean_time_to_happen = {
		days = 3650		
	}
	
	immediate = {
		#es_reduce_development_worldwide = yes
		#every_country = {
		#	country_event = { id = es_economy.11 }
		#}
	}
	
	option = {
		name = "es_1_scenario.1.a"
	}
	
}

### DATES NOT CHANGED AFTER THIS LINE!

country_event = {
	id = es_scenario_operator.17
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	
	fire_only_once = yes
	
	trigger = {
	    tag = BLA
		NOT = { is_year = 557 }
		OR = {
		is_year = 535
		}
   }

	mean_time_to_happen = {
		days = 3650		
	}
	
	immediate = {
		# Great Schism Events
		
		# Dark Brotherhood Spawn
		random_country = {
			limit = {
				owns = 1130
			}
			country_event = { id = dark_brotherhood_spawn.1 days = 507 random = 18250 }
		}
	}
	
	option = {
		name = "es_1_scenario.1.a"
	}
	
}

country_event = {
	id = es_scenario_operator.33
	title = es_1_scenario.1.t
	desc = es_1_scenario.1.d
	picture = ES_THRONEROOM_1_eventPicture	
	
	fire_only_once = yes
	
	trigger = {
	    tag = BLA
		NOT = { is_year = 1466 }
		OR = {
			is_year = 1177
			AND = {
				had_global_flag = {
					flag = marukhism_flag
					days = 91250
				}
				1206 = { NOT = { religion = marukhism } }
			}
		}
   }

	mean_time_to_happen = {
		days = 3650		
	}
	
	immediate = {
		every_country = {
			country_event = { id = es_33_scenario.2 days = 365 random = 365 }
		}
		###
		every_country = {
			limit = {
				any_owned_province = {
					OR = {
						superregion = high_rock_superregion
						superregion = elsweyr_superregion
					}
				}
			}
			country_event = { id = es_flavour_san.1 days = 508 random = 3950 }
		}
		###
		every_country = {
			limit = {
				any_owned_province = {
					continent = Tamriel
				}
			}
			country_event = { id = es_flavour_san.3 days = 509 random = 3960 }
		}
		###
		every_country = {
			limit = {
				any_owned_province = {
					region = reach_lr
				}
			}
			country_event = { id = es_flavour_san.4 days = 510 random = 3970 }
		}
		###
		every_country = {
			limit = {
				any_owned_province = {
					superregion = cyrodiil_superregion
				}
			}
			country_event = { id = es_flavour_san.5 days = 511 random = 3980 }
		}
		###
		every_country = {
			limit = {
				any_owned_province = {
					superregion = cyrodiil_superregion
				}
			}
			country_event = { id = es_flavour_san.6 days = 512 random = 5475 }
		}
		###
		random_country = {
			limit = {
				# Lainlyn
				owns = 1493
			}
			country_event = { id = es_flavour_san.7 days = 513 random = 3990 }
		}
		
	}
	
	option = {
		name = "es_1_scenario.1.a"
	}
	
}