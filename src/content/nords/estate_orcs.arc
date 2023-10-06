new estate orcs = {
	name = "Orcs"
	desc = ""
	icon = 14
	color = {
		28 127 0
	}
	trigger = {
		any_owned_province = {
			has_province_flag = orc_stronghold
		}
		NOT = {
			culture_group = orc 
		}	
	}
	country_modifier_happy = {
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
	}
	land_ownership_modifier = {
	}
	privileges = {
		new roaming_orcs = {
			name = "Roaming Orcs"
			desc = ""
			icon = privilege_roaming
			loyalty = 0.1
			influence = -0.1
			benefits = {
				global_unrest = 1
			}
		}
		new trade_with_strongholds = {
			name = "Trade with Strongholds"
			desc = ""
			icon = privilege_trade_outside
			max_absolutism = -5
			loyalty = 0.05
			influence = 0.1
			benefits = {
				trade_efficiency = 0.1
			}
		}
		new ritual_warfare = {
			name = "Ritual Warfare"
			desc = ""
			icon = privilege_sword_helm
			max_absolutism = 10
			loyalty = -0.10
			influence = -0.2
			benefits = {
				army_tradition = 1
			}
			penalties = {
				manpower_recovery_speed = -0.10
			}
		}
		new hire_orc_warriors = {
			name = "Hire Orc Warriors"
			desc = ""
			icon = privilege_recruit_rajput_general
			influence = 0.15
			benefits = {
				manpower_recovery_speed = 15%
				shock_damage = 5%
			}
		}
		new stronghold_rights = {
			name = "Stronghold Rights"
			desc = ""
			icon = privilege_land_rights
			max_absolutism = -10
			loyalty = 0.2
			influence = 0.1
			mechanics = {
				exempt_from_seize_land
			}
		}
		new redeem_mauloch = {
			name = "Redeem Mauloch"
			desc = ""
			icon = privilege_malacath
			max_absolutism = -10
			loyalty = 0.1
			can_select = {
				has_estate_privilege = orcs:trade_with_strongholds
				has_estate_privilege = orcs:hire_orc_warriors
				has_estate_privilege = orcs:stronghold_rights
			}
			on_granted = {
				defineloc redeemed_mauloch = "Adds Mauloch to the Deity Choices if you are of §YNordic Pantheon§! or §YOld Ways§! religion"
				custom_tooltip = redeemed_mauloch
			}
		}
	}
	base_influence = 5
}
new personal_deity mauloch = {
	name = "Mauloch"
	desc = ""
	sprite = 16
	modifiers = {
		morale_damage = 10%
		global_unrest = 2
	}
	potential = {
		OR = {
			religion = nordic_pantheon
			religion = the_old_ways
		}
		has_estate_privilege = orcs:redeem_mauloch
	}
}