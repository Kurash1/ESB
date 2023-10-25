new estate giants = {
	name = "Giants"
	desc = ""
	icon = 13
	color = {
		127 51 0
	}
	trigger = {
		is_race = nord
	}
	country_modifier_happy = {
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
	}
	land_ownership_modifier = {
	}
	base_influence = 5
	privileges = {
		new sponsor_giant_hunts = {
			name = "Sponsor Giant Hunts"
			icon = privilege_grant_autonomy
			loyalty = -5%
			influence = -20%
			benefits = {
				army_tradition = 1
			}
		}
		new promote_giant_rights = {
			name = "Promote Giant Rights"
			icon = privilege_grant_autonomy
			loyalty = 5%
			influence = 5%
		}
		new giant_land_rights = {
			name = "Giant Land Rights"
			icon = privilege_grant_autonomy
			loyalty = 10%
			influence = 10%
			benefits = {
				global_manpower_modifier = 25%
			}
			mechanics = {
				exempt_from_seize_land
			}
		}
		new institute_cow_sacrifices = {
			name = "Institute Cow Sacrifices"
			icon = privilege_grant_autonomy
			loyalty = 10%
			penalties = {
				production_efficiency = -10%
			}
		}
		new study_giantish = {
			name = "Studies in Giantish"
			icon = privilege_grant_autonomy
			loyalty = 15%
			penalties = {
				dip_advisor_cost = 50%
			}
		}
		new promote_giant_trade = {
			name = "Promote Giant Trade"
			icon = privilege_grant_autonomy
			loyalty = 5%
			influence = 5%
			benefits = {
				trade_efficiency = 10%
			}
		}
		new establish_spiral_arts = {
			name = "Establish Spiral Arts"
			icon = privilege_grant_autonomy
			loyalty = 10%
			on_granted = {
				add_prestige = 25
			}
			benefits = {
				prestige = 0.5
			}
		}
		new rights_of_half_giants = {
			name = "Rights of Half-Giants"
			icon = privilege_grant_autonomy
			loyalty = 5%
			influence = 10%
			benefits = {
				global_unrest = -1
			}
		}
		new recruit_tundrastriders = {
			name = "Recruit Tundrastriders"
			icon = privilege_grant_autonomy
			influence = 10%
			is_valid = {
				has_dlc = "Dharma"
			}
			benefits = {
				can_recruit_rajputs = yes
				allowed_rajput_fraction = 0.1
			}
		}
		new manufacture_giant_armor = {
			name = "Manufacture Giant Armor"
			icon = privilege_grant_autonomy
			is_valid = {
				has_estate_privilege = giants:recruit_tundrastriders
			}
			can_select = {
				full_idea_group = smithing_ideas
			}
		}
		new fjellhork_guards = {
			name = "Fjellhork Guards"
			icon = privilege_grant_autonomy
			is_valid = {
				has_estate_privilege = giants:recruit_tundrastriders
			}
		}
		new raise_a_high_chieftain = {
			name = "Raise a High Chieftain"
			icon = privilege_grant_autonomy
			is_valid = {
				has_estate_privilege = giants:recruit_tundrastriders
			}
		}
		new fire_raiser_giants = {
			name = "Fire Raiser Giants"
			icon = privilege_grant_autonomy
			is_valid = {
				has_estate_privilege = giants:recruit_tundrastriders
			}
			can_select = {
				full_idea_group = fire0
			}
		}
		new sing_praises_to_sinmur = {
			name = "Sing Praises to Sinmur"
			icon = privilege_grant_autonomy
			is_valid = {
				has_estate_privilege = giants:recruit_tundrastriders
			}
			can_select = {
				any_owned_province = {
					region = eastmarch
				}
			}
		}
	}
}
special_units:rajput:name := "Tundrastrider"
special_units:rajput:regiment := {
	shock_damage = 20%
	morale_damage = 20%
}
special_units:rajput:uses_construction := 1
special_units:rajput:base_cost_modifier := 2
special_units:rajput:maximum_ratio := 1
special_units:rajput:starting_strength := 1
special_units:rajput:localisation := {
	RAJPUT_REGIMENT = "Tundrastrider Regiment\n$EFFECT$"
	ONLY_RAJPUT_MODIFIER = "§YAffects only Tundrastriders§!"
	RECRUIT_RAJPUT_REGIMENTS = "Recruit Tundrastrider Regiments"
	RAJPUT_FORCELIMIT = "We can recruit up to $VAL|%Y$ of our force-limit of $FL$ as §GTundrastriders§! due to:\n"
	enables_rajput_regiments = "Tundrastrider Regiments"
	REGCAT_rajput = "Tundrastrider"
	RAJPUT_NAME = "$HOME$'s $NUM$$ORDER$ Tundrastriders"
	MODIFIER_CAN_RECRUIT_RAJPUTS = "Can recruit Tundrastriders"
	ADD_RAJPUT_SUB_UNIT_EFFECT = "Get '§GTundrastrider§!' $UNIT$ in $WHERE|Y$."
	RAJPUT_REGIMENT_TYPE = "Tundrastrider"
	HAVE_LESS_RAJPUT_THAN = "Have less Tundrastrider Regiments than $VALUE|Y$.\n"
	HAVE_AT_LEAST_RAJPUT_THAN = "Have at least $VALUE|Y$ Tundrastrider Regiments.\n"
	MODIFIER_ALLOWED_COSSACK_FRACTION = "Tundrastrider Force Limit Fraction"
	MODIFIER_ALLOWED_RAJPUT_FRACTION = "Tundrastrider Force Limit Fraction"
	RAJPUT_DESC = ""
}