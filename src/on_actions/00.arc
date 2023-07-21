on_actions:on_startup += {
	set_allow_female_emperor = yes
	if = {
		limit = {
			NOT = { has_global_flag = on_action_set_up_global_flag }
		}
		every_country = {
			every_country = {
				limit = {
					NOT = { 
						OR = {
							tag = REB
							tag = PREV 
						}
					}
				}
				if = {
					limit = {
						culture_group = PREV
					}
					add_opinion = { who = PREV modifier = esb_same_race }
				}
				if = {
					limit = {
						NOT = { culture_group = PREV }
					}
					add_opinion = { who = PREV modifier = esb_different_race }
				}
				if = {
					limit = {
						OR = {
							AND = {
								is_human_nation_trigger = yes
								PREV = { is_elven_nation_trigger = yes }
							}
							AND = {
								is_elven_nation_trigger = yes
								PREV = { is_human_nation_trigger = yes }
							}
						}
					}
					add_opinion = { who = PREV modifier = esb_elf_men_hate }
				}
				if = {
					limit = {
						OR = {
							AND = {
								culture_group = northern_cg
								PREV = { culture_group = snow_elves_cg }
							}
							AND = {
								culture_group = snow_elves_cg
								PREV = { culture_group = northern_cg }
							}
						}
					}
					add_opinion = { who = PREV modifier = esb_night_of_tears }
				}
			}
		}
		set_global_flag = on_action_set_up_global_flag
	}
	if = {
		limit = {
			tag = BLA
		}
		
	}
	Tamriel = {
		discover_country = ROOT
	}
}

on_actions:on_religion_change += {
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

on_actions:on_war_won += {
	add_government_power = {
		mechanic_type = mane_vs_king_mechanic
		power_type = mane_vs_king_power
		value = -5
	}
}

on_actions:on_new_monarch += {
	es_change_opinion = yes
	
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

on_actions:on_regent += {
	if = { limit = { is_emperor = yes } define_ruler = { religion = root culture = root } }
}

on_actions:on_extend_regency += {
	add_legitimacy = -10
}

on_actions:on_new_term_election += {
	events = {
		700		# Election event
	}
}

on_actions:on_heir_needed_theocracy += {
	events = {
		es_theocracy.1
	}
}

on_actions:on_death_election += {
	events = {
		701		# Election event
	}
}

on_actions:on_bankruptcy += {
	add_adm_power = 100
	add_dip_power = 100
	add_mil_power = 100
}

on_actions:on_revoke_estate_land_ai += {
	add_province_modifier = {
		name = revoked_estate_modifier
		duration = 5475
	}
}

on_actions:on_revoke_estate_land += {
	add_province_modifier = {
		name = revoked_estate_modifier
		duration = 5475 #15 years
	}
}

on_actions:on_revoke_estate_land_ai_post += {
	add_local_autonomy = 25
}

on_actions:on_revoke_estate_land_post += {
	add_local_autonomy = 25
}

on_actions:on_grant_estate_land += {
	if = {
		limit = {
			has_province_modifier = revoked_estate_modifier
		}
		remove_province_modifier = revoked_estate_modifier
	}
}

on_actions:on_province_religion_converted += {
    owner = {
		add_government_power = {
				mechanic_type = mane_vs_king_mechanic
				power_type = mane_vs_king_power
				value = 1
		}
	}
}

on_actions:on_general_recruited += {
	add_army_professionalism = 0.01
	add_government_power = {
		mechanic_type = mane_vs_king_mechanic
		power_type = mane_vs_king_power
		value = -1
	}
}

on_actions:on_mercenary_recruited += {
	FROM = {
		add_army_professionalism = -0.01
	}
}

on_actions:on_primary_culture_changed += {
	es_clear_opinion = yes
	es_change_opinion = yes
}

on_actions:on_colonist_boosting_colony += {
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