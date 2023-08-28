new estate orcs = {
	name = "Orcs"
	desc = ""
	icon = 14
	color = {
		255 100 0
	}
	trigger = {
		culture_group = culture_groups:nord
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
		new trade_with_strongholds = {
			name = "Trade with Strongholds"
			desc = ""
			icon = privilege_grant_autonomy
			max_absolutism = -5
			loyalty = 0.05
			influence = 0.05
			benefits = {
				trade_efficiency = 0.1
			}
		}
		new ritual_warfare = {
			name = "Ritual Warfare"
			desc = ""
			icon = privilege_grant_autonomy
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
			icon = privilege_grant_autonomy
			influence = 0.05
			benefits = {
				manpower_recovery_speed = 15%
				shock_damage = 5%
			}
		}
		new stronghold_rights = {
			name = "Stronghold Rights"
			desc = ""
			icon = privilege_grant_autonomy
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
			icon = privilege_grant_autonomy
			max_absolutism = -10
			loyalty = 0.1
			can_select = {
				has_estate_privilege = estate_orcs_trade_with_strongholds_privelege
				has_estate_privilege = estate_orcs_hire_orc_warriors_privelege
				has_estate_privilege = estate_orcs_stronghold_rights_privelege
			}
			on_granted = {
				defineloc redeemed_mauloch = "Adds Mauloch to the Deity Choices if you are of §YNordic Pantheon§! or §YOld Ways§! religion"
				custom_tooltip = redeemed_mauloch
			}
		}
	}
	base_influence = 0
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
		has_estate_privilege = estate_orcs_redeem_mauloch_privelege
	}
}