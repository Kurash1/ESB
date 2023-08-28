new great_project dunmeth_pass = {
	name = "Dunmeth Pass"
	start = black_mountain
}
new great_project lunar_forge = {
	name = "Lunar Forge"
	start = silent_moons
}
new great_project palace_of_the_kings = {
	name = "Palace of the Kings"
	start = windhelm
}
new great_project windhelm_port = {
	name = "Windhelm Port"
	start = black_mountain
}
new mercenary_company cradlecrush_giants = {
	name = "Cradlecrush Giants"
	regiments_per_development = 0
	cost_modifier = 0.5
	home_province = cradlecrush
	cavalry_weight = 0
	artillery_weight = 0
	trigger = {
		has_country_flag = unlocks_cradlecrush_giants
	}
	modifier = {
		shock_damage = 30%
	}
}
new advisor jalmar_old_song = {
	name = "Jalmar Old-Song"
	location = windhelm
	discount = yes
	skill = 2
	type = naval_reformer
	date = 2500.1.1
	death_date = 2551.6.4
}
new mission_series eastmarch_1 = {
	slot = 1
	ai = yes
	potential = {
		tag = WND
	}
	missions = {
	}
}
new mission_series eastmarch_2 = {
	slot = 2
	ai = yes
	potential = {
		tag = WND
	}
	missions = {
		eastmarch_the_second_companions = {
			name = "The Second Companions"
			desc = ""
			position = 1
			icon = mission_unknown_mission
			trigger = {
				army_size_percentage = 1.0
			}
			effect = {
				define_general = {
					shock = 4
					fire = 4
					manuever = 4
					siege = 4
					trait = tongue_personality
				}
			}
		}
	}
}
new mission_series eastmarch_3 = {
	slot = 3
	ai = yes
	potential = {
		tag = WND
	}
	missions = {
		eastmarch_morvunskar = {
			name = "The Morvunskar"
			desc = ""
			position = 2
			icon = mission_unknown_mission
			required = {
				eastmarch_the_second_companions
			}
			trigger = {
				provinces:morvunskar = {
					base_manpower = 5
				}
			}
			effect = {
				provinces:morvunskar = {
					add_base_manpower = 5
				}
			}
		}
		eastmarch_uttering_hills = {
			name = "Uttering Hills Training"
			desc = ""
			position = 3
			icon = mission_unknown_mission
			required = {
				eastmarch_morvunskar
			}
			trigger = {
				manpower_percentage = 0.75
			}
			effect = {
				add_yearly_manpower = -2
				provinces:uttering_hills = {
					add_base_manpower = 3
					quick_province_modifier = {
						name = "Uttering Hills Training"
						permanent = no
						modifier = {
							army_tradition = 0.5
						}
					}
				}
			}
		}
		eastmarch_mixwater = {
			name = "Mixwater Development"
			desc = ""
			position = 4
			icon = mission_unknown_mission
			required = {
				eastmarch_fortify_west
			}
			trigger = {
				owns_or_non_sovereign_subject_of = provinces:mixwater
				provinces:mixwater = {
					development = 15
				}
			}
			effect = {
				provinces:mixwater = {
					add_center_of_trade_level = 1
					add_scaled_local_adm_power = 25
					add_scaled_local_dip_power = 25
					add_scaled_local_mil_power = 25
				}
				areas:amol = {
					add_claim = ROOT
				}
			}
		}
		eastmarch_amol = {
			name = "Amol Annexation"
			desc = ""
			position = 5
			icon = mission_unknown_mission
			required = {
				eastmarch_mixwater
			}
			trigger = {
				areas:amol = {
					type = all
					owned_by = ROOT
				}
			}
			effect = {
				areas:hillgrund, areas:lost_knife, areas:darkwater = {
					add_claim = ROOT
				}
			}
		}
	}
}
new mission_series eastmarch_4 = {
	slot = 4
	ai = yes
	potential = {
		tag = WND
	}
	missions = {
		eastmarch_fortify_west = {
			name = "Fortify the West"
			desc = ""
			position = 3
			icon = mission_unknown_mission
			required = {
				eastmarch_high_king eastmarch_morvunskar
			}
			trigger = {
				provinces:gallows_rock = {
					fort_level = 1
				}
			}
			effect = {
				areas:cradlecrush, areas:gallows_rock, areas:mixwater = {
					quick_province_modifier = {
						name = "Fortify the West"
						duration = 9125
						modifier = {
							defensiveness = 50%
						}
					}
				}
			}
		}
		eastmarch_angas_mill = {
			name = "Anga's Mill Development"
			desc = ""
			position = 4
			icon = mission_unknown_mission
			required = {
				eastmarch_fortify_west
			}
			trigger = {
				owns_or_non_sovereign_subject_of = provinces:angas_mill
				provinces:angas_mill = {
					development = 15
				}
			}
			effect = {
				provinces:angas_mill = {
					add_center_of_trade_level = 1
					add_scaled_local_adm_power = 25
					add_scaled_local_dip_power = 25
					add_scaled_local_mil_power = 25
				}
			}
		}
		eastmarch_yorgrim_trade = {
			name = "Yorgrim Trade"
			desc = ""
			position = 5
			icon = mission_unknown_mission
			required = {
				eastmarch_angas_mill
			}
			trigger = {
				provinces:nightgate = {
					owner = {
						OR = {
							tag = ROOT
							alliance_with = ROOT
						}
					}
				}
			}
			effect = {
				provinces:nightgate = {
					add_trade_modifier = {
						who = ROOT
						duration = 9125
						power = 30
						key = STRONG_MERCHANTS
					}
				}
			}
		}
		eastmarch_darkwater = {
			name = "Darkwater Annexation"
			desc = ""
			position = 6
			icon = mission_unknown_mission
			required = {
				eastmarch_amol
			}
			trigger = {
				areas:darkwater = {
					owned_by = ROOT
				}
			}
			effect = {
				provinces:darkwater_crossing = {
					add_claim = ROOT
				}
			}
		}
		eastmarch_eldergleam = {
			name = "Eldergleam Expedition"
			desc = ""
			position = 7
			icon = mission_unknown_mission
			required = {
				eastmarch_darkwater
			}
			trigger = {
				owns_or_non_sovereign_subject_of = provinces:darkwater_crossing
				provinces:darkwater_crossing = {
					development = 15
				}
			}
			effect = {
				provinces:atronach, provinces:broken_limb, provinces:hjoie, provinces:cherim_pond, provinces:eldergleam, provinces:bonestrew = {
					add_siberian_construction = 50
				}
			}
		}
	}
}
new incident road_mistwatch = {
	name = "Road Mistwatch"
	event = incidents.1
	default_option = 1
	can_stop = {
		NOT = {
			exists = WND
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
new country_event incidents.1 = {
	title = "Road Mistwatch"
	desc = ""
	picture = DEATH_OF_HEIR_eventPicture
	is_triggered_only = yes
	fire_only_once = yes
	options = {
		{
			name = "Full"
			effect = {
				areas:mistwatch = {
					cede_province = ROOT
					add_core = ROOT
				}
				provinces:aleading, provinces:fanella, provinces:akawatch = {
					add_siberian_construction = 50
				}
			}
			ai_chance = {
				factor = 5
			}
		}
		{
			name = "Necessary"
			effect = {
				provinces:mistwatch = {
					cede_province = ROOT
					add_core = ROOT
				}
				areas:mistwatch = {
					add_claim = ROOT
				}
				provinces:aleading, provinces:fanella, provinces:akawatch = {
					add_siberian_construction = 50
				}
			}
			ai_chance = {
				factor = 10
			}
		}
		{
			name = "None"
			effect = {
				areas:mistwatch = {
					add_claim = ROOT
				}
				provinces:aleading, provinces:fanella, provinces:akawatch = {
					add_siberian_construction = 50
				}
			}
			ai_chance = {
				factor = 5
			}
		}
	}
}
new mission_series eastmarch_5 = {
	slot = 5
	ai = yes
	potential = {
		tag = WND
	}
	missions = {
		eastmarch_palace_of_the_kings = {
			name = "Palace of the Kings"
			desc = ""
			position = 1
			icon = mission_unknown_mission
			trigger = {
				owns = provinces:windhelm
				if [ai = yes]
				{
					ags = 20
				}
				else_if [has_dlc = "Leviathan"]
				{
					provinces:windhelm = {
						has_great_project = {
							type = palace_of_the_kings
							tier = 1
						}
					}
				}
				else
				{
					provinces:windhelm = {
						development = 30
					}
				}
			}
			effect = {
				if [has_dlc = "Leviathan"]
				{
					provinces:windhelm = {
						add_great_project_tier = {
							type = palace_of_the_kings
							tier = 1
						}
					}
				}
				else
				{
					add_base_tax = 3
					add_base_production = 3
					add_base_manpower = 3
				}
			}
		}
		eastmarch_high_king = {
			name = "High King"
			desc = ""
			position = 2
			icon = mission_unknown_mission
			required = {
				eastmarch_the_ylgermet eastmarch_palace_of_the_kings eastmarch_the_second_companions
			}
			trigger = {
				is_emperor = yes
			}
			effect = {
				change_adm = 1
				change_dip = 1
				change_mil = 1
				if [ai = yes]
				{
					provinces:gallows_rock, provinces:kynesgrove = {
						add_building_construction = {
							building = fort_15th
							speed = 5
							cost = 0
						}
					}
				}
			}
		}
		eastmarch_deal_with_giants = {
			name = "Deal With Giants"
			desc = ""
			position = 3
			icon = mission_unknown_mission
			trigger = {
				estate_loyalty = {
					estate = estate_giants
					loyalty = 60
				}
			}
			effect = {
				provinces:cradlecrush = {
					add_base_tax = 3
					add_base_production = 3
					add_base_manpower = 3
				}
			}
		}
		eastmarch_cradlecrush_giants = {
			name = "Cradlecrush Giants"
			desc = ""
			position = 4
			icon = mission_unknown_mission
			required = {
				eastmarch_deal_with_giants eastmarch_fortify_west
			}
			trigger = {
				accepted_culture = cultures:march_giant
			}
			effect = {
				defineloc unlocks_cradlecrush_giants = "Unlocks '§YCradlecrush Giant§!' Mercenary Company"
				custom_tooltip = unlocks_cradlecrush_giants
				set_country_flag = unlocks_cradlecrush_giants
			}
		}
		eastmarch_cragwallow = {
			name = "Cragwallow Annexation"
			desc = ""
			position = 5
			icon = mission_unknown_mission
			required = {
				eastmarch_kynesgrove
			}
			trigger = {
				areas:steamcrag, areas:mzulft = {
					type = all
					OR = {
						is_city = no
						owned_by = ROOT
					}
				}
			}
			effect = {
				areas:ansilvund = {
					add_claim = ROOT
				}
			}
		}
		eastmarch_road_mistwatch = {
			name = "Road Mistwatch"
			desc = ""
			position = 7
			icon = mission_unknown_mission
			required = {
				eastmarch_cragwallow eastmarch_darkwater
			}
			trigger = {
				imperial_authority = 40
				NOT = {
					active_imperial_incident = any
				}
			}
			effect = {
				set_imperial_incident = road_mistwatch
			}
		}
		eastmarch_abandon_atmoran_holdings = {
			name = "Abandon Old Holdings"
			desc = ""
			position = 8
			icon = mission_unknown_mission
			required = {
				eastmarch_eldergleam eastmarch_road_mistwatch eastmarch_northwind_mine
			}
			trigger = {
				defineloc eastmarch_has_harald = "§YHarald Hand-Free§! is the Ruler"
				custom_trigger_tooltip = {
					tooltip = eastmarch_has_harald
					has_ruler_flag = eastmarch_has_harald
				}
			}
			effect = {
				remove_country_modifier = atmoran_holdings
			}
		}
		eastmarch_form_eastmarch = {
			name = "Form Eastmarch"
			desc = ""
			position = 9
			icon = mission_unknown_mission
			required = {
				eastmarch_abandon_atmoran_holdings
			}
			trigger = {
				regions:eastmarch = {
					type = all
					owned_by = ROOT
				}
			}
			effect = {
				change_tag = EAS
			}
		}
	}
}
new mercenary_company narzulbur_company = {
	name = "Narzulbur Company"
	regiments_per_development = 0.04
	cost_modifier = 1.0
	home_province = greenstep
	cavalry_weight = 0.1
	artillery_weight = 0.1
	trigger = {
		has_country_flag = unlocks_narzulbur_company
	}
	modifier = {
		discipline = 5%
		morale_damage = 10%
	}
}
new mission_series eastmarch_6 = {
	slot = 6
	ai = yes
	potential = {
		tag = WND
	}
	missions = {
		eastmarch_fortify_south = {
			name = "Fortify the South"
			desc = ""
			position = 3
			icon = mission_unknown_mission
			required = {
				eastmarch_high_king
			}
			trigger = {
				provinces:kynesgrove = {
					fort_level = 1
				}
			}
			effect = {
				areas:kynesgrove, areas:narzulbur [is_city = yes]
				{
					quick_province_modifier = {
						name = "Fortify the South"
						duration = 9125
						modifier = {
							defensiveness = 50%
						}
					}
				}
			}
		}
		eastmarch_kynesgrove = {
			name = "Develop Kynesgrove"
			desc = ""
			position = 4
			icon = mission_unknown_mission
			required = {
				eastmarch_fortify_south
			}
			trigger = {
				owns_or_non_sovereign_subject_of = provinces:kynesgrove
				provinces:kynesgrove = {
					development = 15
				}
			}
			effect = {
				provinces:kynesgrove = {
					add_center_of_trade_level = 1
					add_scaled_local_adm_power = 25
					add_scaled_local_dip_power = 25
					add_scaled_local_mil_power = 25
				}
				areas:steamcrag, areas:mzulft [is_city = yes]
				{
					add_claim = ROOT
				}
			}
		}
		eastmarch_witchmist_expedition = {
			name = "Witchmist Expedition"
			desc = ""
			position = 5
			icon = mission_unknown_mission
			required = {
				eastmarch_kynesgrove
			}
			trigger = {
				provinces:kynesgrove = {
					owned_by = ROOT
					development = 20
				}
			}
			effect = {
				provinces:riverside_shack, provinces:cronvangr, provinces:berasta, provinces:witchmist, provinces:anguki, provinces:steamcrag = {
					add_siberian_construction = 50
				}
			}
		}
		eastmarch_ansilvund_way = {
			name = "Ansilvund Way"
			desc = ""
			position = 6
			icon = mission_unknown_mission
			required = {
				eastmarch_cragwallow
			}
			trigger = {
				areas:ansilvund = {
					type = all
					owned_by = ROOT
				}
			}
			effect = {
				areas:northwind = {
					add_claim = ROOT
				}
			}
		}
		eastmarch_northwind_mine = {
			name = "Northwind Mine"
			desc = ""
			position = 7
			icon = mission_unknown_mission
			required = {
				eastmarch_ansilvund_way
			}
			trigger = {
				provinces:northwind = {
					owned_by = ROOT
					base_production = 5
				}
			}
			effect = {
				provinces:northwind = {
					quick_province_modifier = {
						name = "Northwind Mine"
						modifier = {
							trade_goods_size = 0.5
							trade_value = 1
						}
					}
					add_base_production = -3
				}
			}
		}
	}
}
new mission_series eastmarch_7 = {
	slot = 7
	ai = yes
	potential = {
		tag = WND
	}
	missions = {
		eastmarch_narzulbur = {
			name = "Narzulbur Trade"
			desc = ""
			position = 4
			icon = mission_unknown_mission
			required = {
				eastmarch_fortify_south
			}
			trigger = {
				has_estate_privilege = estate_orcs_trade_with_strongholds_privelege
				owns = provinces:greenstep
			}
			effect = {
				provinces:greenstep = {
					change_trade_goods = ebony
					add_local_autonomy = 50
				}
			}
		}
		eastmarch_orc_company = {
			name = "Orc Company"
			desc = ""
			position = 5
			icon = mission_unknown_mission
			required = {
				eastmarch_narzulbur
			}
			trigger = {
				estate_loyalty = {
					estate = estate_orcs
					loyalty = 60
				}
			}
			effect = {
				defineloc unlocks_narzulbur_company = "Unlocks '§YNarzulbur Company§!' Mercenary Company"
				custom_tooltip = unlocks_narzulbur_company
				set_country_flag = unlocks_narzulbur_company
			}
		}
		eastmarch_brodir_grove = {
			name = "Brodir Grove"
			desc = ""
			position = 7
			icon = mission_unknown_mission
			required = {
				eastmarch_bloodskal_ally
			}
			trigger = {
				defineloc future_update = "Will be implemented in a future update"
				custom_trigger_tooltip = {
					tooltip = future_update
					always = no
				}
			}
			effect = {
				custom_tooltip = future_update
			}
		}
	}
}
new government_reform the_ylgermet = {
	name = "Honor The Ylgermet"
	desc = ""
	icon = "galley_icon"
	allow_normal_conversion = yes
	potential = {
		has_country_flag = unlocks_ylgermet
	}
	modifiers = {
		galley_power = 10%
		coast_raid_range = 1
	}
	ai = {
		factor = 1000
	}
}
new mission_series eastmarch_8 = {
	slot = 8
	ai = yes
	potential = {
		tag = WND
	}
	missions = {
		eastmarch_the_ylgermet = {
			name = "Honor The Ylgermet"
			desc = ""
			position = 1
			icon = mission_unknown_mission
			trigger = {
				advisor = naval_reformer
			}
			effect = {
				add_navy_tradition = 25
				defineloc unlocks_ylgermet = "Unlocks '§YHonor The Ylgermet§!' Reform"
				custom_tooltip = unlocks_ylgermet
				set_country_flag = unlocks_ylgermet
				quick_country_modifier = {
					name = "The Second Ylgermet"
					modifier = {
						max_flagships = 1
					}
				}
				create_flagship = {
					where = windhelm
					name = "The Second Ylgermet"
					type = galley
					traits = {
						spare_jolly_roger the_second_ylgermet captains_log
					}
				}
			}
		}
		eastmarch_skjoralmor_deal = {
			name = "Skjoralmor Deal"
			desc = ""
			position = 2
			icon = mission_unknown_mission
			required = {
				eastmarch_the_ylgermet
			}
			trigger = {
				countries:skjoralmor = {
					has_opinion = {
						who = ROOT
						value = 150
					}
				}
			}
			effect = {
				provinces:lakeview = {
					add_trade_modifier = {
						who = ROOT
						duration = 9125
						power = 30
						key = skjoralmor_deal
					}
				}
				hidden_effect = {
					countries:skjoralmor = {
						every_owned_province [`trade_goods` = wood]
						{
							quick_province_modifier = {
								name = "The Skjoralmor Deal"
								duration = 9125
								modifier = {
									trade_value_modifier = 0.1
								}
							}
						}
					}
				}
			}
		}
		eastmarch_fortify_east = {
			name = "Fortify East"
			desc = ""
			position = 3
			icon = mission_unknown_mission
			required = {
				eastmarch_high_king
			}
			trigger = {
				provinces:dunmeth_pass = {
					fort_level = 1
				}
			}
			effect = {
				if [has_dlc = "Leviathan"]
				{
					provinces:black_mountain = {
						move_great_project = {
							type = dunmeth_pass
							province = provinces:dunmeth_pass
							instant = yes
						}
					}
				}
				else = {
					areas:dunmeth_pass = {
						add_base_manpower = 2
					}
				}
			}
		}
		eastmarch_develop_bleakrock = {
			name = "Develop Bleakrock"
			desc = ""
			position = 4
			icon = mission_unknown_mission
			required = {
				eastmarch_fortify_east
			}
			trigger = {
				provinces:bleakrock_isle = {
					development = 15
				}
			}
			effect = {
				provinces:bleakrock_isle = {
					center_of_trade = 1
					add_base_tax = 3
					add_base_production = 3
					add_base_manpower = 3
				}
			}
		}
		eastmarch_bloodskal_ally = {
			name = "Bloodskal Ally"
			desc = ""
			position = 6
			icon = mission_unknown_mission
			required = {
				eastmarch_ally_in_solstheim
			}
			trigger = {
				custom_trigger_tooltip = {
					tooltip = future_update
					always = no
				}
			}
			effect = {
				custom_tooltip = future_update
			}
		}
		eastmarch_raven_rock_mine = {
			name = "Raven Rock Mine"
			desc = ""
			position = 8
			icon = mission_unknown_mission
			required = {
				eastmarch_thane_of_solstheim
			}
			trigger = {
				custom_trigger_tooltip = {
					tooltip = future_update
					always = no
				}
			}
			effect = {
				custom_tooltip = future_update
			}
		}
	}
}
new event_modifier aegisbane = {
	name = "Aegisbane"
	modifier = {
		siege_ability = 5%
	}
}
new mission_series eastmarch_9 = {
	slot = 9
	ai = yes
	potential = {
		tag = WND
	}
	missions = {
		eastmarch_clan_shatter_shield = {
			name = "Clan Shatter-Shield"
			desc = ""
			position = 2
			icon = mission_unknown_mission
			required = {
				eastmarch_the_ylgermet eastmarch_windhelm_port
			}
			trigger = {
				has_country_modifier = aegisbane
			}
			effect = {
				remove_country_modifier = aegisbane
				provinces:windhelm = {
					quick_province_modifier = {
						name = "Clan Shatter-Shield"
						modifier = {
							ship_recruit_speed = -25%
							local_sailors_modifier = 50%
						}
					}
				}
			}
		}
		eastmarch_the_north_wind = {
			name = "The North Wind"
			desc = ""
			position = 3
			icon = mission_unknown_mission
			required = {
				eastmarch_skjoralmor_deal eastmarch_clan_shatter_shield
			}
			trigger = {
				navy_size = 50
			}
			effect = {
				quick_country_modifier = {
					name = "The North Wind"
					modifier = {
						max_flagships = 1
					}
				}
				create_flagship = {
					where = windhelm
					name = "The North Wind"
					type = transport
					traits = {
						trade_route_map improved_crows_nest the_north_wind
					}
				}
			}
		}
		eastmarch_ally_in_solstheim = {
			name = "Ally in Solstheim"
			desc = ""
			position = 5
			icon = mission_unknown_mission
			required = {
				eastmarch_develop_bleakrock eastmarch_the_north_wind eastmarch_the_winter_war
			}
			trigger = {
				custom_trigger_tooltip = {
					tooltip = future_update
					always = no
				}
			}
			effect = {
				custom_tooltip = future_update
			}
		}
		eastmarch_himmelhost_ally = {
			name = "Himmelhost Ally"
			desc = ""
			position = 6
			icon = mission_unknown_mission
			required = {
				eastmarch_ally_in_solstheim
			}
			trigger = {
				custom_trigger_tooltip = {
					tooltip = future_update
					always = no
				}
			}
			effect = {
				custom_tooltip = future_update
			}
		}
		eastmarch_thane_of_solstheim = {
			name = "Thane of Solstheim"
			desc = ""
			position = 7
			icon = mission_unknown_mission
			required = {
				eastmarch_bloodskal_ally eastmarch_himmelhost_ally eastmarch_skygge_ally
			}
			trigger = {
				custom_trigger_tooltip = {
					tooltip = future_update
					always = no
				}
			}
			effect = {
				custom_tooltip = future_update
			}
		}
		eastmarch_fort_frostmoth = {
			name = "Fort Frostmoth"
			desc = ""
			position = 8
			icon = mission_unknown_mission
			required = {
				eastmarch_thane_of_solstheim
			}
			trigger = {
				custom_trigger_tooltip = {
					tooltip = future_update
					always = no
				}
			}
			effect = {
				custom_tooltip = future_update
			}
		}
	}
}
new mission_series eastmarch_10 = {
	slot = 10
	ai = yes
	potential = {
		tag = WND
	}
	missions = {
		eastmarch_windhelm_port = {
			name = "Windhelm Port"
			desc = ""
			position = 1
			icon = mission_unknown_mission
			trigger = {
				provinces:windhelm = {
					OR = {
						has_building = navy_1
						has_building = navy_2
						has_building = navy_3
					}
				}
			}
			effect = {
				provinces:black_mountain = {
					move_great_project = {
						type = windhelm_port
						province = provinces:windhelm
						instant = yes
					}
				}
			}
		}
		eastmarch_blue_axe_sea_thane = {
			name = "Blue-Axe Sea-Thane"
			desc = ""
			position = 3
			icon = mission_unknown_mission
			required = {
				eastmarch_clan_shatter_shield
			}
			trigger = {
				countries:blue-axe = {
					has_opinion = {
						who = ROOT
						value = 150
					}
				}
			}
			effect = {
				create_admiral = {
					tradition = 100
				}
			}
		}
		eastmarch_the_winter_war = {
			name = "The Winter War"
			desc = ""
			position = 4
			icon = mission_unknown_mission
			required = {
				eastmarch_blue_axe_sea_thane eastmarch_the_north_wind
			}
			trigger = {
				OR = {
					full_idea_group = naval_ideas
					alliance_with = countries:blue-axe
				}
			}
			effect = {
				quick_country_modifier = {
					name = "The Winter War"
					modifier = {
						max_flagships = 1
					}
				}
				create_flagship = {
					where = windhelm
					name = "The Winter War"
					type = heavy_ship
					traits = {
						the_winter_war hull_sheating mass_load_cannons
					}
				}
			}
		}
		eastmarch_skygge_ally = {
			name = "Skygge Ally"
			desc = ""
			position = 6
			icon = mission_unknown_mission
			required = {
				eastmarch_ally_in_solstheim
			}
			trigger = {
				custom_trigger_tooltip = {
					tooltip = future_update
					always = no
				}
			}
			effect = {
				custom_tooltip = future_update
			}
		}
		eastmarch_deal_with_thirsk = {
			name = "Deal With Thirsk"
			desc = ""
			position = 8
			icon = mission_unknown_mission
			required = {
				eastmarch_thane_of_solstheim
			}
			trigger = {
				custom_trigger_tooltip = {
					tooltip = future_update
					always = no
				}
			}
			effect = {
				custom_tooltip = future_update
			}
		}
	}
}