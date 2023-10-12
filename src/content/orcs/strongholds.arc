new localisation remove_orc_stronghold_tooltip = "[This.GetName] loses the conditional modifier '§YOrc Stronghold§!'."
new effect remove_orc_stronghold = {
	args = bool
	transpile = {
		custom_tooltip = remove_orc_stronghold_tooltip
		hidden_effect = {
			clr_province_flag = orc_stronghold
			remove_province_triggered_modifier = orc_stronghold_primary
			remove_province_triggered_modifier = orc_stronghold_secondary
			remove_province_triggered_modifier = orc_stronghold_loyal
			remove_province_triggered_modifier = orc_stronghold_neutral
			remove_province_triggered_modifier = orc_stronghold_disloyal
			remove_province_triggered_modifier = orc_stronghold_unknown
		}
	}
}
new decision reload_strongholds = {
	name = "Reload Strongholds"
	desc = "Sometimes Orc Strongholds don't properly reload, if you notice an inactive Orc Stronghold you can press this button to reload all Strongholds"
	potential = {
		ai = no
	}
	allow = {
		ai = no
	}
	effect = {
		every_province [has_province_flag = orc_stronghold] {
			province_event = orc_stronghold.1
		}
	}
}
new localisation orc_stronghold = "Orc Stronghold"
new province_event orc_stronghold.1 = {
	title = "Orc Stronghold Reload"
	desc = ""
	picture = TOMB_eventPicture
	is_triggered_only = yes
	hidden = yes
	options = {
		{
			name = ""
			effect = {
				remove_province_triggered_modifier = orc_stronghold_primary
				remove_province_triggered_modifier = orc_stronghold_secondary
				remove_province_triggered_modifier = orc_stronghold_loyal
				remove_province_triggered_modifier = orc_stronghold_neutral
				remove_province_triggered_modifier = orc_stronghold_disloyal
				remove_province_triggered_modifier = orc_stronghold_unknown
				if [province_triggered_modifiers:orc_stronghold_primary:trigger] {
					add_province_triggered_modifier = orc_stronghold_primary
				}
				else_if [province_triggered_modifiers:orc_stronghold_secondary:trigger] {
					add_province_triggered_modifier = orc_stronghold_secondary
				}
				else_if [province_triggered_modifiers:orc_stronghold_loyal:trigger] {
					add_province_triggered_modifier = orc_stronghold_loyal
				}
				else_if [province_triggered_modifiers:orc_stronghold_neutral:trigger] {
					add_province_triggered_modifier = orc_stronghold_neutral
				}
				else_if [province_triggered_modifiers:orc_stronghold_disloyal:trigger] {
					add_province_triggered_modifier = orc_stronghold_disloyal
				}
				else {
					add_province_triggered_modifier = orc_stronghold_unknown
				}
			}
		}
	}
}
new province_triggered_modifier orc_stronghold_primary = {
	name = "Orc Stronghold (Primary)"
	trigger = {
		OR = {
			owner = {
				has_government_attribute = multiple_orc_strongholds
			}
			AND = {
				owner = {
					has_government_attribute = orc_stronghold
				}
				is_capital = yes
			}
		}
	}
	modifier = {
		fort_level = 1
		local_defensiveness = 0.5
		local_manpower_modifier = 0.5
		local_production_efficiency = 0.5
		local_tax_modifier = 0.5
		local_development_cost_modifier = -0.25
		trade_goods_size = 1.0
	}
	on_remove = {
		province_event = orc_stronghold.1
	}
}
new province_triggered_modifier orc_stronghold_secondary = {
	name = "Orc Stronghold (Secondary)"
	trigger = {
		owner = {
			has_government_attribute = orc_stronghold
		}
		is_capital = no
	}
	modifier = {
		fort_level = 1
		local_defensiveness = 0.25
		local_manpower_modifier = 0.25
		local_production_efficiency = 0.25
		local_tax_modifier = 0.25
		local_development_cost_modifier = -0.10
		trade_goods_size = 0.5
	}
	on_remove = {
		province_event = orc_stronghold.1
	}
}
new province_triggered_modifier orc_stronghold_loyal = {
	name = "Orc Stronghold (Loyal)"
	trigger = {
		owner = {
			has_estate = estate_orcs
			estate_loyalty = {
				estate = estate_orcs
				loyalty = 60
			}
		}
	}
	modifier = {
		fort_level = 1
		local_defensiveness = 0.30
		local_manpower_modifier = 0.30
		local_production_efficiency = 0.30
		local_tax_modifier = 0.30
		local_development_cost_modifier = -0.15
		trade_goods_size = 0.5
	}
	on_remove = {
		province_event = orc_stronghold.1
	}
}
new province_triggered_modifier orc_stronghold_neutral = {
	name = "Orc Stronghold (Neutral)"
	trigger = {
		owner = {
			has_estate = estate_orcs
			estate_loyalty = {
				estate = estate_orcs
				loyalty = 30
			}
			NOT = {
				estate_loyalty = {
					estate = estate_orcs
					loyalty = 60
				}
			}
		}
	}
	modifier = {
		fort_level = 1
		local_defensiveness = 0.15
		local_manpower_modifier = 0.15
		local_production_efficiency = 0.15
		local_tax_modifier = 0.15
		trade_goods_size = 0.25
	}
	on_remove = {
		province_event = orc_stronghold.1
	}
}
new province_triggered_modifier orc_stronghold_disloyal = {
	name = "Orc Stronghold (Disloyal)"
	trigger = {
		owner = {
			has_estate = estate_orcs
			NOT = {
				estate_loyalty = {
					estate = estate_orcs
					loyalty = 30
				}
			}
		}
	}
	modifier = {
		fort_level = 1
		local_defensiveness = 0.15
		local_manpower_modifier = -0.15
		local_production_efficiency = -0.15
		local_tax_modifier = -0.15
	}
	on_remove = {
		province_event = orc_stronghold.1
	}
}
new province_triggered_modifier orc_stronghold_unknown = {
	name = "Orc Stronghold (Unknown)"
	trigger = {
		always = no
	}
	modifier = {
		trade_goods_size = 0.5
	}
	on_remove = {
		province_event = orc_stronghold.1
	}
}
