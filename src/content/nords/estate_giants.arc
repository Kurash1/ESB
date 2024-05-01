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
		manpower_recovery_speed = 0.1
		land_maintenance_modifier = -0.05
	}
	country_modifier_neutral = {
		manpower_recovery_speed = 0.1
	}
	country_modifier_angry = {
		manpower_recovery_speed = -0.05
		land_maintenance_modifier = 0.05
		global_unrest = 2
	}
	land_ownership_modifier = {
		giants_loyalty_modifier = 0.2
	}
	base_influence = 15
	privileges = {
		new sponsor_giant_hunts = {
			name = "Sponsor Giant Hunts"
			icon = privilege_army_tradition
			loyalty = -15%
			influence = -20%
			benefits = {
				army_tradition = 1
			}
			penalties = {
				state_maintenance_modifier = 25%
			}
		}
		new promote_giant_rights = {
			name = "Promote Giant Rights"
			icon = privilege_autonomy
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
			icon = privilege_cow
			loyalty = 5%
			penalties = {
				production_efficiency = -10%
			}
		}
		new study_giantish = {
			name = "Studies in Giantish"
			icon = privilege_dip_advisor_cost_opposite
			loyalty = 10%
			penalties = {
				dip_advisor_cost = 50%
			}
		}
		new promote_giant_trade = {
			name = "Promote Giant Trade"
			icon = privilege_monopoly
			loyalty = 5%
			influence = 5%
			benefits = {
				trade_efficiency = 10%
			}
		}
		new establish_spiral_arts = {
			name = "Establish Spiral Arts"
			icon = privilege_prestige
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
			icon = privilege_global_unrest
			loyalty = 5%
			influence = 10%
			benefits = {
				global_unrest = -1
			}
		}
		new hire_chieftains = {
			name = "Hire Chieftains"
			icon = privilege_army_professionalism
			loyalty = -10%
			influence = 10%
			on_granted = {
				new_custom_tooltip = "Unlocks §YHire a Chieftain§! Decision"
			}
		}
		new recruit_tundrastriders = {
			name = "Recruit Tundrastriders"
			icon = privilege_can_recruit_rajputs
			influence = 10%
			is_valid = {
				has_dlc = "Dharma"
			}
			benefits = {
				can_recruit_rajputs = yes
				allowed_rajput_fraction = 25%
			}
		}
		new manufacture_giant_armor = {
			name = "Manufacture Giant Armor"
			icon = privilege_shock_damage_received
			is_valid = {
				has_estate_privilege = giants:recruit_tundrastriders
			}
			can_select = {
				full_idea_group = smithing_ideas
			}
			on_granted = {
				add_country_modifier = {
					name = tundrastrider_giant_armor
					duration = -1
				}
			}
			on_revoked = {
				remove_country_modifier = tundrastrider_giant_armor
			}
		}
		new fire_raiser_giants = {
			name = "Fire Raiser Giants"
			icon = privilege_morale_damage
			is_valid = {
				has_estate_privilege = giants:recruit_tundrastriders
			}
			can_select = {
				full_idea_group = fire_ideas
			}
			on_granted = {
				add_country_modifier = {
					name = tundrastrider_fire_raiser
					duration = -1
				}
			}
			on_revoked = {
				remove_country_modifier = tundrastrider_fire_raiser
			}
		}
		new sing_praises_to_sinmur = {
			name = "Sing Praises to Sinmur"
			icon = privilege_land_morale
			is_valid = {
				has_estate_privilege = giants:recruit_tundrastriders
			}
			can_select = {
				any_owned_province = {
					region = eastmarch
				}
			}
			on_granted = {
				add_country_modifier = {
					name = tundrastrider_sinmurs_legacy
					duration = -1
				}
			}
			on_revoked = {
				remove_country_modifier = tundrastrider_sinmurs_legacy
			}
		}
	}
}
new localisation recent_giant_chieftain_hired = "Recent Giant Chieftain Hired"
new decision giant_hire_chieftain = {
	name = "Hire a Chieftain"
	color = { 127 51 0 }
	potential = {
		has_estate_privilege = giants:hire_chieftains
	}
	allow = {
		OR = {
			NOT = {
				has_country_flag = recent_giant_chieftain_hired
			}
			had_country_flag = {
				flag = recent_giant_chieftain_hired
				days = 3650
			}
		}
	}
	effect = {
		clr_country_flag = recent_giant_chieftain_hired
		set_country_flag = recent_giant_chieftain_hired
		create_general = {
			tradition = 80
		}
	}
}
new event_modifier tundrastrider_giant_armor = {
	name = "Giant Armor"
	modifier = {
		is_rajput_modifier = yes
		
		shock_damage_received = -10%
		fire_damage_received = -10%
	}
}
new event_modifier tundrastrider_fire_raiser = {
	name = "Fire Raiser Giants"
	modifier = {
		is_rajput_modifier = yes
		
		morale_damage = 20%
	}
}
new event_modifier tundrastrider_sinmurs_legacy = {
	name = "Sinmur's Legacy"
	modifier = {
		is_rajput_modifier = yes
		
		land_morale = 15%
	}
}
special_units:rajput:name := "Tundrastrider"
special_units:rajput:regiment := {
	infantry_shock = 1
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
create_develop_tax_agenda = giants
create_develop_production_agenda = giants
create_develop_manpower_agenda = giants
create_fire_advisor_agenda = { estate = giants category = { full = ADM loc = Adm name = "Administrative" } }
create_fire_advisor_agenda = { estate = giants category = { full = DIP loc = Dip name = "Diplomatic" } }
create_fire_advisor_agenda = { estate = giants category = { full = MIL loc = Mil name = "Military" } }