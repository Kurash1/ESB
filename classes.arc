superregion = {
	list = superregions
	attributes = {
		name = string
	}
}
region = {
	list = regions
	attributes = {
		name = string
		superregion = superregion
	}
}
area = {
	list = areas
	attributes = {
		name = string
		region = region
	}
}
province = {
	list = provinces
	default = {
		sea = no
		lake = no
		impassible = no
		base_development = 0
		terrain = grasslands
		history = { }
	}
	attributes = {
		terrain = string
		color = block
		history = effect
		sea = bool
		lake = bool
		impassible = bool
		area = area?
		base_development = int
		position = block
		rotation = block
		height = block
	}
}
tradegood = {
	list = tradegoods
	attributes = {
		name = string
		desc = string
		color = block
		modifier = modifier
		province = modifier
		base_price = float
		is_gold = bool
		chance = block
	}
}
terrain = {
	list = terrains
	default = {
		desc = ""
		is_water = no
		inland_sea = no
		movement_cost = 1
		defence = 0
		modifier = { }
		base_development = 0
	}
	attributes = {
		name = string
		desc = string
		color = block
		sound_type = string
		is_water = bool
		inland_sea = string
		type = string?
		movement_cost = float
		defence = int
		modifier = modifier
		base_development = int
	}
}
blessing = {
	list = blessings
	attributes = {
		name = string
		desc = string
		potential = trigger
		modifier = modifier
		effect = effect
		ai_will_do = trigger
	}
}
church_aspect = {
	list = church_aspects
	default = {
		potential = { }
		allow = { }
		modifier = { }
		effect = { }
		ai_will_do = {
			factor = 1
		}
		cost = 100
		trigger = { }
	}
	attributes = {
		name = string
		desc = string
		potential = trigger
		allow = trigger
		modifier = modifier
		effect = effect
		ai_will_do = trigger
		cost = int
		trigger = trigger
	}
}
country = {
	list = countries
	default = {
		adj = this:name
		historical_idea_groups = { }
		historical_units = { }
		monarch_names = { }
		leader_names = { }
		ship_names = { }
		army_names = {
			"Army of $PROVINCE$"
		}
		fleet_names = {
			"Fleet of $PROVINCE$"
		}
		government = monarchy
		government_rank = 1
		mercantilism = 1
		definitions = { }
		history = { }
	}
	attributes = {
		historical_idea_groups = block
		historical_units = block
		monarch_names = block
		leader_names = block
		ship_names = block
		army_names = block
		fleet_names = block
		tag = string
		name = string
		adj = string
		color = block
		government = string
		government_rank = int
		mercantilism = int
		technology_group = string
		religion = string
		primary_culture = string
		graphical_culture = string
		definitions = block
		history = block
		capital = province
		starting_reform = string?
	}
}
adjacency = {
	list = adjacencies
	default = {
		start_x = -1
		start_y = -1
		stop_x = -1
		stop_y = -1
		comment = ""
	}
	attributes = {
		from = province
		to = province
		type = string
		through = province
		start_x = int
		start_y = int
		stop_x = int
		stop_y = int
		comment = string
	}
}
subject_type = {
	list = subject_types
	default = { }
	attributes = {
		copy_from = subject_type?
		sprite = string?
		diplomacy_overlord_sprite = string?
		diplomacy_subject_sprite = string?
		is_potential_overlord = trigger?
		has_overlords_ruler = bool?
		can_fight_independence_war = bool?
		is_voluntary = bool?
		transfer_trade_power = bool?
		transfer_trade_if_merchant_republic = bool?
		joins_overlords_wars = bool?
		can_be_co_belligerented = bool?
		must_accept_cta_from_overlord = bool?
		favors_cost_to_join_offensive_wars = int?
		favors_cost_to_join_defensive_wars = int?
		opinion_cost_to_join_offensive_wars = int?
		opinion_cost_to_join_defensive_wars = int?
		opinion_cost_instead_of_favors_cost = bool?
		opinion_on_subject_integration = int?
		joins_colonial_wars = bool?
		can_be_integrated = bool?
		can_release_and_play = bool?
		uses_tariffs = bool?
		dynamically_created_during_history = bool?
		eats_overlords_colonies = bool?
		has_colonial_parent = bool?
		overlord_can_attack = bool?
		overlord_can_be_subject = bool?
		can_have_subjects_of_other_types = bool?
		can_be_annexed = bool?
		takes_diplo_slot = bool?
		has_power_projection = bool?
		can_release_in_peace = bool?
		uses_military_focus = bool?
		overlord_protects_external = bool?
		counts_for_borders = bool?
		overlord_enforce_peace_attacking = bool?
		can_use_claims = bool?
		gives_daimyo_bonuses = bool?
		gets_help_with_rebels = bool?
		share_rebel_popup = bool?
		separatists_become_subjects = bool?
		allows_taking_land_without_independence = bool?
		can_transfer_in_peace = bool?
		can_set_mil_focus = bool?
		can_send_missionary_to_subject = bool?
		can_union_break = bool?
		overlord_can_fabricate_for = bool?
		does_overlord_size_count_for_warscore_cost = bool?
		is_colony_subtype = bool?
		is_march = bool?
		forms_trade_companies = bool?
		can_concentrate_development = bool?
		can_have_great_projects_moved_by_overlord = bool?
		extend_trading_range = bool?
		can_gain_favors = bool?
		max_government_rank = int?
		cities_required_for_bonuses = int?
		trust_on_start = int?
		base_liberty_desire = float?
		liberty_desire_negative_prestige = float?
		liberty_desire_development_ratio = float?
		liberty_desire_same_dynasty = float?
		pays_overlord = float?
		forcelimit_to_overlord = float?
		naval_forcelimit_to_overlord = float?
		manpower_to_overlord = float?
		sailors_to_overlord = float?
		military_focus = float?
		annex_cost_per_development = float?
		relative_power_class = int?
		should_quit_wars_on_activation = bool?
		diplomacy_view_class = int?
		can_fight = trigger?
		can_rival = trigger?
		can_ally = trigger?
		can_marry = trigger?
		embargo_rivals = bool?
		support_loyalists = bool?
		subsidize_armies = bool?
		scutage = bool?
		send_officers = bool?
		divert_trade = bool?
		placate_rulers = bool?
		place_relative_on_throne = bool?
		enforce_religion = bool?
		customize_subject = bool?
		replace_governor = bool?
		grant_province = bool?
		enforce_culture = bool?
		siphon_income = bool?
		fortify_march = bool?
		seize_territory = bool?
		start_colonial_war = bool?
		grant_core_claim = bool?
		sacrifice_ruler = bool?
		sacrifice_heir = bool?
		increase_tariffs = bool?
		decrease_tariffs = bool?
		takeondebt = bool?
		bestow_gifts = bool?
		send_additional_troops = bool?
		demand_artifacts = bool?
		demand_additional_tribute = bool?
		force_seppuku = bool?
		press_sailors = bool?
		contribute_to_capital = bool?
		force_isolation = bool?
		return_land = bool?
		conscript_general = bool?
		knowledge_sharing = bool?
		block_settlement_growth = bool?
		allow_settlement_growth = bool?
		change_colonial_type = bool?
		upgrade_subject_type = bool?
		seize_court_resources = bool?
		request_extra_levies = bool?
		grant_administrative_autonomy = bool?
		sword_hunt = bool?
		sankin_kotai = bool?
		expel_ronin = bool?
		clear_subject_modifier = bool?
		subject_modifiers = block?
		clear_overlord_modifier = bool?
		overlord_opinion_modifier = string?
		subject_opinion_modifier = string?
	}
}