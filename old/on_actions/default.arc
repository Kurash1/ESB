#When adding effects directly in on_actions always consider if it would be best to do so through a scripted effect. on_actions with a lot of script in them are harder to get an overview of.

# country
block ::on_actions:on_startup = {
	every_owned_province = {
		change_religion = PREV
	}

	p@black_mountain:id = {
		cede_province = BLA
		add_core = BLA
	}

    set_allow_female_emperor = yes
	set_hre_religion_treaty = yes
	
	if = { 
		limit = { 
			NOT = { 
				has_global_flag = on_action_set_up_global_flag 
			} 
		}
		
		# On startup every_country effects
		every_country = {
			while = {
				limit = {
					NOT = {
						crown_land_share = 40
					}
				}
				take_estate_land_share_massive = {
					estate = all
				}
			}
		}
		
		PAA = {
			add_country_modifier = { 
				name = moon-emperor
				duration = -1  
			}
			set_country_flag = moon-emperor_vassal
			every_subject_country = {
				limit = {
					is_subject_of_type = moon-emperor_vassal
				}
				set_country_flag = moon-emperor_vassal
			}
		}
		
		set_global_flag = on_action_set_up_global_flag
	}

	if = { 
		limit = { 
			NOT = { 
				has_country_flag = on_action_setup_flag 
			} 
		}
	
		
		add_country_modifier = { name = "es_female_advisors" duration = -1 hidden = yes }
		
		add_legitimacy = 100
		add_republican_tradition = 100
		add_devotion = 100
		add_horde_unity = 100
		add_meritocracy = 100
		
		init_variables = yes
		
		set_country_flag = on_action_setup_flag
	}
}

# country
block ::on_actions:on_religion_change = {
	if = {
		limit = {
			has_heir = yes
		}
		set_heir_religion = ROOT
	}
	if = {
		limit = {
			has_regency = no
		}
		set_ruler_religion = ROOT
	}
	if = {
		limit = {
			has_dlc = "Rights of Man"
			has_consort = yes
		}
		set_consort_religion = ROOT
	}
	
	add_country_modifier = {
		name = recently_changed_religion_dummy
		duration = 10
		hidden = yes
	}
}

# country.
block ::on_actions:on_secondary_religion_change = {
	
}

# country. Spawned when Enforcing Rebel Demands through a Support Rebels-war.
block ::on_actions:on_enforce_rebel_demands = {

}

# country
block ::on_actions:on_colonial_liberation = {

}

# country
block ::on_actions:on_colonial_reintegration = {

}

# country
block ::on_actions:on_peace_actor = {
}

# country
block ::on_actions:on_peace_recipient = {
}

# country
# root = winning country, from = loser country
block ::on_actions:on_war_won = {
	change_variable = {
		which = num_of_wars_won
		value = 1
	}
	add_government_power = {
		mechanic_type = mane_vs_king_mechanic
		power_type = mane_vs_king_power
		value = -5
	}
}

# country
# root = loser country, from = winner country
block ::on_actions:on_war_lost = {
	change_variable = {
		which = war_lost
		value = 1
	}	
	add_country_modifier = {
		name = just_lost_war_timer
		duration = 10
		hidden = yes
	}
}


# country
# root = winning country, from = loser country
block ::on_actions:on_battle_won_country = {
    change_variable = {
		which = num_of_battles_won
		value = 1
	}	
}

# country
# root = loser country, from = winner country
block ::on_actions:on_battle_lost_country = {
}

# province
# root = location, from = loser country
block ::on_actions:on_battle_won_province = {
    
}

#Unit Scope OnAction for Battle Won
block ::on_actions:on_battle_won_unit = {
	
}

# #Unit Scope OnAction for Battle Lost
block ::on_actions:on_battle_lost_unit = {

}

# province
# root = location, from = country doing it
block ::on_actions:on_added_to_trade_company = {

}

# province
# root = location, from = country doing it
block ::on_actions:on_removed_from_company = {

}

# province
# root = location, from = country doing it
block ::on_actions:on_company_formed = {

}

# province
# root = location, from = country doing it
block ::on_actions:on_company_disolved = {

}

# province
# root = location, from = winner country
block ::on_actions:on_battle_lost_province = {
	
}

# country
# root = winning country, from = location
block ::on_actions:on_siege_won_country = {
	
}

# country
# root = losing country, from = location
block ::on_actions:on_siege_lost_country = {
}

# province
# root = location, from = losing country
block ::on_actions:on_siege_won_province = {
	
}

# province
# root = location, from = winning country
block ::on_actions:on_siege_lost_province = {
	
}

# province
# root = location, from = country that abandons colony
# Fired right before the colony is abandoned.
block ::on_actions:on_abandon_colony = {
}

# province
# root = location, from = country that owns it
# Fired right after the great project is constructed
block ::on_actions:on_great_project_constructed = {
}

# OBS: Consider that the following on_actions can be called for Personal Union juniors as well.
# country
block ::on_actions:on_new_monarch = {
	if = {
		limit = {
			has_consort_regency = no
			any_owned_province = {
				has_province_modifier = domain_of_spouses_family
			}
		}
		random_owned_province = {
			limit = { has_province_modifier = domain_of_spouses_family }
			remove_province_modifier = domain_of_spouses_family
		}
	}
	if = {
		limit = {
			has_consort_regency = no
			any_owned_province = {
				has_province_modifier = home_of_consort
			}
		}
		random_owned_province = {
			limit = { has_province_modifier = home_of_consort }
			remove_province_modifier = home_of_consort
		}
	}
	
	if = {
		limit = {
			is_lesser_in_union = yes
			NOT = { government = monarchy }
		}
		change_government = monarchy
	}
}

block ::on_actions:on_new_consort = {
}

# country
block ::on_actions:on_monarch_death = {
	if = {
		limit = {
			has_country_modifier = moon-emperor
		}
		remove_country_modifier = moon-emperor
		random_subject_country = {
			limit = {
				has_country_flag = moon-emperor_vassal
			}
			add_country_modifier = { 
				name = moon-emperor
				duration = -1  
			}
			
			PREV = {
				every_subject_country = {
					limit = {
						has_country_flag = moon-emperor_vassal
					}
					grant_independence = yes
				}
			}
			
			every_country = {
				limit = {
					has_country_flag = moon-emperor_vassal
				}
				PREV = {
					create_subject = {
						subject_type = moon-emperor_vassal
						subject = PREV
					}
				}
			}
		}
		
		#Event for ascendance of new Moon-Emperor (kingdom)
		#Event for ascendance of new Moon-Emperor (moon-emperor)
	}
}

# country
block ::on_actions:on_regent = {
	if = { limit = { is_emperor = yes } define_ruler = { religion = root culture = root } }
}

# country
block ::on_actions:on_extend_regency = {
	add_legitimacy = -10
}

# country	 
block ::on_actions:on_new_term_election = {
	events = {
		700		# Election event
	}
}

# country
block ::on_actions:on_death_election = {
	events = {
		701		# Election event
	}
}

# country
block ::on_actions:on_death_foreign_slave_ruler = {

}

# country
block ::on_actions:on_replace_governor = {

}


# country
block ::on_actions:on_bankruptcy = {
	add_adm_power = 100
	add_dip_power = 100
	add_mil_power = 100
}

# country (country annexing, root = target)
block ::on_actions:on_diplomatic_annex = {
	change_variable = {
		which = diplo_annexed_nation
		value = 1
	}		
}

# country
block ::on_actions:on_heir_death = {
}

# country
block ::on_actions:on_queen_death = {						 
}

# country
block ::on_actions:on_new_heir = {
}

# country
block ::on_actions:on_weak_heir_claim = {
}

# country : no heir in theocracy
block ::on_actions:on_heir_needed_theocracy = {
	events = {
		es_theocracy.1
	}
}

# Emperor from same dynasty
block ::on_actions:on_successive_emperor = {
}

# Called whenever a new emperor is elected
# FROM = Previous Emperor
# ROOT = New Emperor 
block ::on_actions:on_emperor_elected = {
	every_elector = {
		if = {
			limit = {
				preferred_emperor = root
			}
			change_variable = {
				which = supported_successive_emperors
				value = 1
			}
		}
		else = {
			set_variable = {
				which = supported_successive_emperors
				value = 0
			}
		}
	}

	FROM = {
		if = {
			limit = { has_country_modifier = diet_occupied }
			remove_country_modifier = diet_occupied
			ROOT = {
				add_country_modifier = { name = diet_occupied duration = -1 }
			}
		}
		if = {
			limit = {
				any_country = {
					reverse_has_opinion_modifier = {
						modifier = opinion_imperial_diplomacy
						who = prev
					}
				}
			}
			every_country = {
				limit = {
					reverse_has_opinion_modifier = {
						modifier = opinion_imperial_diplomacy
						who = prev
					}
				}
				reverse_remove_opinion = {
					modifier = opinion_imperial_diplomacy
					who = prev
				}
				ROOT = {
					add_opinion = {
						modifier = opinion_imperial_diplomacy
						who = prev
					}
				}
			}
		}
	}
}
# HRE Prince released by the emperor
block ::on_actions:on_released_hre_member = {
}

# HRE Prince converts to non-Emperor religion
block ::on_actions:on_hre_member_false_religion = {
}

# HRE Prince converts to Emperor religion
block ::on_actions:on_hre_member_true_religion = {
}

# Emperor wins HRE defensive war
block ::on_actions:on_hre_wins_defensive_war = {
}

# HRE member annexed by non-HRE country
block ::on_actions:on_hre_member_annexed = {
}

# HRE member released from non-HRE vassalage
block ::on_actions:on_hre_released_vassal = {
}

# HRE member transferred from non-HRE vassalage to Emperor
block ::on_actions:on_hre_transfered_vassal = {
}

# Emperor coming to the defense of a HRE member
block ::on_actions:on_hre_defense = {
	
}

# Emperor NOT coming to the defense of a HRE member
block ::on_actions:on_hre_non_defense = {
}

# HRE Member takes a HRE province from an outs100e country in a peace (province scope)
block ::on_actions:on_hre_province_reconquest = {
	
}

block ::on_actions:on_lock_hre_religion = {
}

block ::on_actions:on_change_hre_religion = {
}

block ::on_actions:on_hre_religion_white_peace = {
}

# When a non-native changes government `type`
block ::on_actions:on_government_change = {	
}

# When a native changes government after filling all their advancement groups.
block ::on_actions:on_native_change_government = {
}

# Nation is integrated after being in union
block ::on_actions:on_integrate = {
}

# Nation annexed.
# FROM is the nation being annexed
block ::on_actions:on_annexed = {
	change_variable = {
		which = annexed_nation
		value = 1
	}
	if = {
		limit = { FROM = { is_emperor = yes } }
		emperor = {
			add_imperial_influence = -50
		}
	}
	if = {
		limit = { FROM = { is_elector = yes } }
		emperor = {
			add_imperial_influence = -25
		}
	}
	if = {
		limit = { FROM = { has_reform = free_city } }
		emperor = {
			add_imperial_influence = -15
		}
	}
	if = {
		limit = { FROM = { is_part_of_hre = yes is_emperor = no is_elector = no NOT = { has_reform = free_city } } }
		emperor = {
			add_imperial_influence = -5
		}
	}
}

# When the chinese empire gets dismantled (e.g. when the emperor is annexed)
# FROM = Emperor, ROOT = Current Nation
block ::on_actions:on_chinese_empire_dismantled = {						   
}

# When a nation gains the Mandate of Heaven (becomes the Emperor of China)
# FROM = Old Emperor, ROOT = New Emperor
block ::on_actions:on_mandate_of_heaven_gained = {
}

# When a nation loses the Mandate of Heaven
# FROM = New Emperor, ROOT = Old Emperor
block ::on_actions:on_mandate_of_heaven_lost = {
}

block ::on_actions:on_embrace_revolution = {
	if = {
		limit = { NOT = { government = republic } }
		change_government_to_republic = yes
	}
	if = {
		limit = { 
			revolution_target_exists = no
			is_great_power = yes
		}
		set_revolution_target = ROOT
		add_government_reform = revolutionary_republic_reform
		if = {
			limit = {
				any_country = {
					has_country_flag = last_revolutionary_country
				}
			}
			every_country = {
				limit = {
					has_country_flag = last_revolutionary_country
				}
				clr_country_flag = last_revolutionary_country
			}
		}
	}
	else = {
		add_government_reform = junior_revolutionary_republic_reform
	}
	kill_ruler = yes
	set_country_flag = revolutionary_republic_flag
	set_country_flag = had_revolution
}

block ::on_actions:on_dismantle_revolution = {
	if = {
		limit = {
			any_country = {
				has_country_flag = last_revolutionary_country
			}
		}
		every_country = {
			limit = {
				has_country_flag = last_revolutionary_country
			}
			clr_country_flag = last_revolutionary_country
		}
	}
	set_country_flag = last_revolutionary_country
}

# province
block ::on_actions:on_adm_development = {
	if = {
		limit = {
			owner = {
				has_country_flag = increase_adm_dev_agenda
			}
		}
		owner = {
			set_country_flag = increase_adm_dev_agenda_completed
		}
	}
}

# province
block ::on_actions:on_dip_development = {
	if = {
		limit = {
			owner = {
				has_country_flag = increase_dip_dev_agenda
			}
		}
		owner = {
			set_country_flag = increase_dip_dev_agenda_completed
		}
	}
}

# province
block ::on_actions:on_mil_development = {
	if = {
		limit = {
			owner = {
				has_country_flag = increase_mil_dev_agenda
			}
		}
		owner = {
			set_country_flag = increase_mil_dev_agenda_completed
		}
	}
}

block ::on_actions:on_overextension_pulse = {
}


block ::on_actions:on_colonial_pulse = {
}

block ::on_actions:on_siberian_pulse = {
}

# country random events
block ::on_actions:on_bi_yearly_pulse = {
}

block ::on_actions:on_bi_yearly_pulse_2 = {
}

# ES Flavour Events
block ::on_actions:on_bi_yearly_pulse_3 = {
}

block ::on_actions:on_bi_yearly_pulse_4 = {
	
}

block ::on_actions:on_bi_yearly_pulse_5 = {

}


# country random events
block ::on_actions:on_thri_yearly_pulse = {
}

block ::on_actions:on_thri_yearly_pulse_2 = {
}

block ::on_actions:on_thri_yearly_pulse_3 = {
}

block ::on_actions:on_thri_yearly_pulse_4 = {
}

block ::on_actions:on_four_year_pulse = {
}

block ::on_actions:on_four_year_pulse_2 = {
}

block ::on_actions:on_four_year_pulse_3 = {
}

block ::on_actions:on_four_year_pulse_4 = {
}

block ::on_actions:on_five_year_pulse = {
}

block ::on_actions:on_five_year_pulse_2 = {
}

block ::on_actions:on_five_year_pulse_3 = {
}

block ::on_actions:on_five_year_pulse_4 = {
}

# El Dorado
block ::on_actions:on_explore_coast = {
}
block ::on_actions:on_conquistador_empty = {
}

block ::on_actions:on_conquistador_native = {
}

block ::on_actions:on_buy_religious_reform = {
}

block ::on_actions:on_circumnavigation = {
}

block ::on_actions:on_become_free_city = {
}

block ::on_actions:on_remove_free_city = {
}

block ::on_actions:on_revoke_estate_land_ai = {
	add_province_modifier = {
		name = revoked_estate_modifier
		duration = 5475
	}
}

block ::on_actions:on_revoke_estate_land = {
	add_province_modifier = {
		name = revoked_estate_modifier
		duration = 5475 #15 years
	}
	if = {
		limit = {
			has_estate = estate_priests
			has_owner_religion = yes
			owner = {
				NOT = {
					estate_loyalty = {
						estate = estate_priests
						loyalty = 40
					}
				}
			}
		}
		spawn_rebels = {
			`type` = religious_rebels
			size = 1
		}
	}
	if = {
		limit = {
			has_estate = estate_priests
			has_owner_religion = no
			owner = {
				NOT = {
					estate_loyalty = {
						estate = estate_priests
						loyalty = 40
					}
				}
			}
		}
		spawn_rebels = {
			`type` = particularist_rebels
			size = 1
		}
	}
	if = {
		limit = {
			has_estate = estate_nobility
			owner = {
				NOT = {
					estate_loyalty = {
						estate = estate_nobility
						loyalty = 40
					}
				}
			}
		}
		spawn_rebels = {
			`type` = noble_rebels
			size = 1
		}
	}
	
	if = {
		limit = {
			has_estate = estate_mages
			owner = {
				NOT = {
					estate_loyalty = {
						estate = estate_mages
						loyalty = 40
					}
				}
			}
		}
		spawn_rebels = {
			`type` = religious_rebels
			size = 1
		}
	}
	if = {
		limit = {
			has_estate = estate_mages
			owner = {
				NOT = {
					estate_loyalty = {
						estate = estate_mages
						loyalty = 40
					}
				}
			}
		}
		spawn_rebels = {
			`type` = particularist_rebels
			size = 1
		}
	}
	if = {
		limit = {
			has_estate = estate_merchants
			owner = {
				NOT = {
					estate_loyalty = {
						estate = estate_merchants
						loyalty = 40
					}
				}
			}
		}
		spawn_rebels = {
			`type` = particularist_rebels
			size = 1
		}
	}
	if = {
		limit = {
			has_estate = estate_warriors
			owner = {
				NOT = {
					estate_loyalty = {
						estate = estate_warriors
						loyalty = 40
					}
				}
			}
		}
		spawn_rebels = {
			`type` = noble_rebels
			size = 1
		}
	}
	if = {
		limit = {
			has_estate = estate_commoners
			owner = {
				NOT = {
					estate_loyalty = {
						estate = estate_commoners
						loyalty = 40
					}
				}
			}
		}
		spawn_rebels = {
			`type` = particularist_rebels
			size = 1
		}
	}

}

block ::on_actions:on_revoke_estate_land_ai_post = {
	add_local_autonomy = 25
}
block ::on_actions:on_revoke_estate_land_post = {
	add_local_autonomy = 25
}

block ::on_actions:on_grant_estate_land = {
	if = {
		limit = {
			has_province_modifier = revoked_estate_modifier
		}
		remove_province_modifier = revoked_estate_modifier
	}
}

block ::on_actions:on_death_has_harem = {
}

block ::on_actions:on_select_heir_from_harem = {
}

block ::on_actions:on_fetishist_cult_change = {
}

# country
block ::on_actions:on_gain_great_power_status = {
	if = {
		limit = {
			NOT = { has_country_flag = became_great_power_flag }
		}
		set_country_flag = became_great_power_flag
	}
}

# country
block ::on_actions:on_lose_great_power_status = {
}

# province
block ::on_actions:on_province_religion_converted = {
    owner = {
		change_variable = {
			which = religions_converted
			value = 1
		}
		add_government_power = {
				mechanic_type = mane_vs_king_mechanic
				power_type = mane_vs_king_power
				value = 1
		}
	}
}

# province
block ::on_actions:on_province_culture_converted = {
    owner = {
		change_variable = {
			which = cultures_converted
			value = 1
		}
	}
}

# THIS = Province, FROM = Country who Propogated
block ::on_actions:on_convert_by_trade_policy = {
}

# province
# FROM = old owner
block ::on_actions:on_province_owner_change = {
    owner = {
		change_variable = {
			which = provinces_gained
			value = 1
		}
	}
}

# country
block ::on_actions:on_parliament_debate_failed = {
}

# country
block ::on_actions:on_parliament_debate_succeeded = {
}

# country
block ::on_actions:on_harmonized_po_tun_pantheon = { }
block ::on_actions:on_harmonized_unknown_pantheon = { }
block ::on_actions:on_harmonized_cult_of_lorelia = { }

block ::on_actions:on_harmonized_polytheistic_group = {
}
block ::on_actions:on_harmonized_occult_group = {
}
block ::on_actions:on_harmonized_elemental_group = {
}
block ::on_actions:on_harmonized_daedric_group = {
}

# country
block ::on_actions:on_russian_sudebnik = {

}

# country
block ::on_actions:on_russian_oprichnina = {

}

# country
block ::on_actions:on_russian_streltsy = {

}

# province
block ::on_actions:on_consecrate_patriarch = {
}

# country. from = overlord
block ::on_actions:on_accept_tribute = {
}

# country. from = overlord
block ::on_actions:on_refuse_tribute = {
}

# country
block ::on_actions:on_leader_recruited = {
}

# country
block ::on_actions:on_general_recruited = {
	add_army_professionalism = 0.01
	add_government_power = {
		mechanic_type = mane_vs_king_mechanic
		power_type = mane_vs_king_power
		value = -1
	}
}

# country
block ::on_actions:on_admiral_recruited = {
}

# country
block ::on_actions:on_conquistador_recruited = {
}

# country
block ::on_actions:on_explorer_recruited = {
}

# THIS = Province, FROM = Country
block ::on_actions:on_regiment_recruited = {

}

# THIS = Province, FROM = Country
block ::on_actions:on_mercenary_recruited = {
	FROM = {
		add_army_professionalism = -0.01
	}
}

# THIS = One province in the state
block ::on_actions:on_add_pasha = {
}

# THIS = One province in the state
block ::on_actions:on_remove_pasha = {
	hidden_effect = {
		owner = {
			save_event_target_as = province_owner
		}
		remove_province_modifier = pasha_removed_modifier
	}

	area = {
		limit = { owned_by = event_target:province_owner }
		add_or_extend_province_modifier_effect = { MODIFIER = pasha_removed_modifier DURATION = 3650 }
	}
}

# THIS = Province
block ::on_actions:on_janissaries_raised = {
}

block ::on_actions:on_cawa_raised = {
}
block ::on_actions:on_revolutionary_guard_raised = {
}								 
block ::on_actions:on_reform_enacted = {
}

block ::on_actions:on_reform_changed = {
}

block ::on_actions:on_trade_company_investment = {
}

block ::on_actions:on_center_of_trade_upgrade = {
    owner = {
		change_variable = {
			which = cot_upgraded
			value = 1
		}
	}
}

block ::on_actions:on_center_of_trade_downgrade = {

}

block ::on_actions:on_culture_promoted = {
    owner = {
		change_variable = {
			which = culture_promoted
			value = 1
		}
	}
}

# FROM = Previous Country, ROOT = Province
block ::on_actions:on_company_chartered = {
}

# ROOT = Overlord, FROM = Minor
block ::on_actions:on_dependency_gained = {
}

# ROOT = Overlord, FROM = Minor
block ::on_actions:on_dependency_lost = {

}

# ROOT = New vassal, FROM = Overlord
block ::on_actions:on_create_vassal = {
	if = {
		limit = {
	    has_dlc = "Emperor"
			FROM = {
				is_revolutionary = yes
			}
		}
		change_government = republic
		add_government_reform = junior_revolutionary_republic_reform
		set_country_flag = had_revolution
	}
}

# ROOT = Country establishing it
# First province in state is set
block ::on_actions:on_holy_order_established = {
}

# When a minority is expelled to a colony
# THIS = Colony, ROOT = Colony, FROM = Home province
block ::on_actions:on_minority_expelled = {
	FROM = {
		remove_province_modifier = religious_zeal_at_conv
		add_permanent_province_modifier = {
			name = expelled_minority_home
			duration = 36500
		}
	}
}

# THIS = Raiding country, FROM = Sea province
block ::on_actions:on_raid_coast = {
}

# ROOT = Tag that captured the flagship, FROM = Tag that lost the flagship
block ::on_actions:on_flagship_captured = {
}

# ROOT = Tag that destroyed the flagship, FROM = Tag that lost the flagship
block ::on_actions:on_flagship_destroyed = {
}

# this = Released country, FROM = Releasing country
block ::on_actions:on_country_released = {
}

# ROOT = province, FROM = country
block ::on_actions:on_trade_good_changed = {
}

# this = country
block ::on_actions:on_loan_repaid = {
}

# this = country
block ::on_actions:on_rebels_break_country = {
}
# this = country
## Fires when you fire or replace your ADM advisor, in the moment before they are actually removed from their post.
## Note: Defining a new advisor here will result in the shortest appointment in history. Use on_post_adm_advisor_fired instead :)
block ::on_actions:on_pre_adm_advisor_fired = {
	if = {
		limit = {
			has_country_flag = need_to_fire_adm_advisor
		}
		set_country_flag = just_fired_adm_advisor
		remove_advisor_by_category_no_action = ADM
	}
}

# this = country
block ::on_actions:on_pre_dip_advisor_fired = {
	if = {
		limit = {
			has_country_flag = need_to_fire_dip_advisor
		}
		set_country_flag = just_fired_dip_advisor
		remove_advisor_by_category_no_action = DIP
	}
}

# this = country
block ::on_actions:on_pre_mil_advisor_fired = {
	if = {
		limit = {
			has_country_flag = need_to_fire_mil_advisor
		}
		set_country_flag = just_fired_mil_advisor
		remove_advisor_by_category_no_action = MIL
	}
}

# this = country
block ::on_actions:on_post_adm_advisor_fired = {

}

# this = country
block ::on_actions:on_post_dip_advisor_fired = {
	
}

# this = country
block ::on_actions:on_post_mil_advisor_fired = {
	
}

# this = new client state, from = parent country
block ::on_actions:on_create_client_state = {
}

# this = new target, from = previous target (both can be non-existent tag)
block ::on_actions:on_change_revolution_target = {
}

# this = curia controller (enactor of the bull)
block ::on_actions:on_golden_bull_enacted = {
	set_country_flag = enacted_golden_bull
}


# province:  spawned whenever a new owner takes over the province
# FROM = The previous owner.
block ::on_actions:on_conquest = {
	remove_named_unrest = estate_land_seized
}

block ::on_actions:on_country_creation = {
}

block ::on_actions:on_federation_leader_change = {
	if = {
		limit = { tag = FROM }
		disband_federation = THIS
	}
	else = {
		# New strongest member becomes the new federation leader
		set_federation_leader = THIS
	}

	# TODO IMPLEMENT EVENTS
}

#FROM = country pillaged, ROOT = country doing the pillaging
block ::on_actions:on_pillaged_capital = {
}

#FROM = country dev was transferred from, ROOT = country doing the transferring
block ::on_actions:on_transfer_development = {
}

block ::on_actions:on_colonial_type_change = {
	clr_country_flag = encourage_cash_crops_flag
}

block ::on_actions:on_estate_led_regency = {
	add_ruler_modifier = {
		name = empowered_regency_modifier
		duration = -1
	}
	change_adm = 1
	change_dip = 1
	change_mil = 1
}

block ::on_actions:on_estate_led_regency_surpassed = {
}

block ::on_actions:on_extended_regency = {
}

block ::on_actions:on_primary_culture_changed = {
}

block ::on_actions:on_estate_removed = {
}

block ::on_actions:on_colonist_boosting_colony = {
	hidden_effect = {
		if = {
			limit = {
				OR = {
					religion = noreligion
					#test if colonists outnumber natives
					variable_arithmetic_trigger = {
						custom_tooltip = colonysize_is_larger_than_nativesize_tt
						export_to_variable = {
							which = vab_colonysize
							value = trigger_value:colonysize
						}
						export_to_variable = {
							which = vab_nativesize
							value = trigger_value:native_size
						}
						check_variable = {
							which = vab_colonysize
							which = vab_nativesize
						}
					}
					is_in_capital_area = yes
				}
			}
			change_religion = FROM
		}
		if = {
			limit = {
				OR = {
					culture = noculture
					#test if colonists outnumber natives
					variable_arithmetic_trigger = {
						custom_tooltip = colonysize_is_larger_than_nativesize_tt
						export_to_variable = {
							which = vab_colonysize
							value = trigger_value:colonysize
						}
						export_to_variable = {
							which = vab_nativesize
							value = trigger_value:native_size
						}
						check_variable = {
							which = vab_colonysize
							which = vab_nativesize
						}
					}
					is_in_capital_area = yes
				}
			}
			change_culture = FROM
			change_original_culture = FROM
		}
	}
}

block ::on_actions:on_institution_embracement = { }
block ::on_actions:on_national_focus_change = { }
block ::on_actions:on_capital_moved = { }

#ROOT = converted country, FROM = country which force converts ROOT, on_action gets called on Force religion peace and Enforce Religion subject interaction
block ::on_actions:on_force_conversion = {
}

#ROOT = province that was expanded in, FROM = country that did it
block ::on_actions:on_expanded_infrastructure = {
}

#ROOT = province that was centralized in
block ::on_actions:on_centralized_state = {
}