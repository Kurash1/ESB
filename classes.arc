new class superregion = {
	list = superregions
	attributes = {
		name = string
	}
}
new class region = {
	list = regions
	attributes = {
		name = string
		superregion = superregion
	}
}
new class area = {
	list = areas
	attributes = {
		name = string
		region = region
	}
}
new class province = {
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
new class tradegood = {
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
new class terrain = {
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
new class blessing = {
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
new class church_aspect = {
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
new class country = {
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
new class adjacency = {
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
new class subject_type = {
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
new class government_names = {
	list = government_names
	default = {
		rank = { }
		ruler_male = { }
		ruler_female = { }
		consort_male = { }
		consort_female = { }
		heir_male = { }
		heir_female = { }
	}
	attributes = {
		rank = block
		ruler_male = block
		ruler_female = block
		consort_male = block
		consort_female = block
		heir_male = block
		heir_female = block
		trigger = trigger
	}
}
new class government_mechanic = {
	list = government_mechanics
	default = { }
	attributes = {
		name = string
		alert_icon_gfx = string?
		alert_icon_index = string?
		available = trigger?
		powers = list<block>?
		interactions = list<block>?
	}
}
new class custom_button = {
	list = custom_buttons
	default = {
		potential = { }
		trigger = { }
		effect = { }
	}
	attributes = {
		potential = trigger
		trigger = trigger
		effect = effect
		tooltip = string?
	}
}
new class custom_icon = {
	list = custom_icons
	default = {
		potential = { }
	}
	attributes = {
		potential = trigger
		tooltip = string?
	}
}
new class custom_text_box = {
	list = custom_text_boxes
	default = {
		potential = { }
	}
	attributes = {
		name = string
		potential = trigger
		tooltip = string?
	}
}
new class culture_group = {
	list = culture_groups
	default = {
		male_names = { }
		female_names = { }
		dynasty_names = { }
		country = { }
		province = { }
	}
	attributes = {
		graphical_culture = string
		name = string
		male_names = block
		female_names = block
		dynasty_names = block
		country = modifier
		province = modifier
	}
}
new class culture = {
	list = cultures
	default = {
		male_names = { }
		female_names = { }
		dynasty_names = { }
		country = { }
		province = { }
	}
	attributes = {
		name = string
		male_names = block
		female_names = block
		dynasty_names = block
		country = modifier
		province = modifier
		primary = country?
		culture_group = culture_group
	}
}
new enum monarch_power = {
	ADM
	DIP
	MIL
}
new class advisor_type = {
	list = advisor_types
	default = {
		ai_will_do = {
			factor = 1
		}
		allow_only_male = no
		allow_only_female = no
		allow_only_owner_religion = no
		chance = {
			factor = 1
		}
	}
	attributes = {
		name = string
		desc = string
		modifier = modifier
		ai_will_do = trigger
		allow_only_male = bool
		allow_only_female = bool
		chance = trigger
		monarch_power = monarch_power
	}
}
new struct option = {
	default = {
		ai_chance = {
			factor = 1
		}
		highlight = no
		trigger = { }
		effect = { }
	}
	attributes = {
		name = string
		ai_chance = trigger
		highlight = bool
		goto = province?
		trigger = trigger
		effect = effect
	}
}
new class country_event = {
	list = country_events
	default = {
		desc = ""
		picture = template_eventPicture
		major = no
		major_trigger = { }
		fire_only_once = no
		hidden = no
		trigger = { }
		immediate = { }
		after = { }
		mean_time_to_happen = { }
		is_triggered_only = yes
	}
	attributes = {
		title = string
		desc = string
		picture = string
		major = bool
		trigger = trigger
		fire_only_once = bool
		hidden = bool
		immediate = effect
		after = effect
		mean_time_to_happen = trigger
		is_triggered_only = bool
		options = mlist<option>
	}
}
new class province_event = {
	list = province_events
	default = {
		desc = ""
		picture = template_eventPicture
		major = no
		major_trigger = { }
		fire_only_once = no
		hidden = no
		trigger = { }
		immediate = { }
		after = { }
		mean_time_to_happen = { }
		is_triggered_only = yes
	}
	attributes = {
		title = string
		desc = string
		picture = string
		major = bool
		trigger = trigger
		fire_only_once = bool
		hidden = bool
		immediate = effect
		after = effect
		mean_time_to_happen = trigger
		is_triggered_only = bool
		options = mlist<option>
	}
}
new class opinion_modifier = {
	list = opinion_modifiers
	attributes = {
		name = string
		opinion = int
		min = int?
		max = int?
		max_vassal = int?
		max_in_other_direction = int?
		yearly_decay = int?
		months = int?
	}
}
new class event_modifier = {
	list = event_modifiers
	attributes = {
		name = string
		modifier = modifier
	}
}
new class province_triggered_modifier = {
	list = province_triggered_modifiers
	default = {
		potential = { }
		trigger = { }
		modifier = { }
		on_apply = { }
		on_remove = { }
	}
	attributes = {
		name = string
		potential = trigger
		trigger = trigger
		modifier = modifier
		on_apply = effect
		on_remove = effect
	}
}
new class estate = {
	list = estates
	default = {
		province_independence_weight = {
			factor = 1
		}
		influence_modifiers = { }
		loyalty_modifiers = { }
		custom_names = { }
		contributes_to_curia_treasury = no
		priviliges = { }
		agendas = { }
		influence_from_dev_modifier = 1
	}
	attributes = {
		name = string
		desc = string
		icon = int
		color = block
		trigger = trigger
		country_modifier_happy = modifier
		country_modifier_neutral = modifier
		country_modifier_angry = modifier
		land_ownership_modifier = modifier
		province_independence_weight = trigger
		base_influence = float
		influence_modifiers = list<trigger>
		loyalty_modifiers = list<trigger>
		custom_names = list<trigger>
		contributes_to_curia_treasury = bool
		priviliges = list<block>
		agendas = list<block>
		influence_from_dev_modifier = float
	}
}
new class government_reform = {
	list = government_reforms
	default = {
		desc = ""
	}
	attributes = {
		name = string
		desc = string
		icon = string
		allow_normal_conversion = bool?
		custom_attributes = block?
		government_abilities = block?
		potential = trigger?
		trigger = trigger?
		effect = effect?
		modifier = modifier?
		ai = trigger?
	}
}
new class personality_trait = {
	list = personality_traits
	default = {
		desc = ""
		death = ""
		ruler_allow = { }
		heir_allow = { }
		consort_allow = { }
		chance = { }
		allow = { }
		war_priority = { }
		ai_rules = { }
		modifier = { }
		nation_designer_cost = 1
	}
	attributes = {
		name = string
		desc = string
		death = string
		ruler_allow = trigger
		heir_allow = trigger
		consort_allow = trigger
		chance = trigger
		allow = trigger
		war_priority = trigger
		ai_rules = block
		modifier = modifier
		nation_designer_cost = int
	}
}
new class diplomatic_action = {
	list = diplomatic_actions
	attributes = {
		name = string
		title = string
		desc = string
		tooltip = string
		category = string
		alert_index = int?
		alert_tooltip = string?
		require_acceptance = bool
		potential = trigger
		trigger = trigger
		on_accept = effect
		on_decline = effect?
		ai_acceptance = trigger?
		ai_will_do = trigger
	}
}
new class mercenary_company = {
	list = mercenary_companies
	attributes = {
		name = string
		home_province = province?
		cavalry_cap = int?
		regiments_per_development = float?
		cost_modifier = float?
		cavalry_weight = float?
		artillery_weight = float?
		trigger = trigger?
		modifier = modifier?
	}
}
new class province_group = {
	list = province_groups
	default = {
		provinces = { }
	}
	attributes = {
		name = string
		provinces = list<province>
	}
}