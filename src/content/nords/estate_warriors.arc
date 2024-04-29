new estate warriors = {
	name = "Warriors"
	desc = ""
	icon = 2
	color = {
		255 0 0
	}
	trigger = {
		OR = {
			is_race = nord
			is_race = atmoran
		}
	}
	country_modifier_happy = {
		manpower_recovery_speed = 0.5
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
		manpower_recovery_speed = -0.5
	}
	land_ownership_modifier = {
	}
	privileges = {
		new warrior_land_rights = {
			name = "Warrior Land Rights"
			desc = ""
			icon = privilege_grant_autonomy
			land_share = 5
			max_absolutism = -5
			loyalty = 0.05
			influence = 0.05
			benefits = {
				governing_capacity = 100
			}
			ai_will_do = {
				factor = 5
				modifier = {
					factor = 1.4
					num_of_territories = 5
				}
				modifier = {
					factor = 1.5
					num_of_territories = 10
				}
				modifier = {
					factor = 1.5
					num_of_territories = 15
				}
				modifier = {
					factor = 0
					NOT = { governing_capacity_percentage = 0.5 }
				}
			}
		}
		new warrior_state = {
			name = "Warrior State"
			desc = ""
			icon = privilege_military_power
			land_share = 10
			max_absolutism = -5
			benefits = {
				country_military_power = 1
			}
			ai_will_do = {
				factor = 100
				modifier = {
					factor = 10
					tag = jorrvaskr
				}
			}
		}
		new hire_warrior_advisors = {
			name = "Hire Warrior Advisors"
			desc = ""
			icon = privilege_empty_throne
			max_absolutism = -5
			loyalty = 0.05
			influence = 0.05
			penalties = {
				stability_cost_modifier = 0.1
			}
			benefits = {
				mil_advisor_cost = -0.25
			}
			ai_will_do = {
				factor = 5
			}
		}
		new warrior_retirement_homes = {
			name = "Warrior Retirement Homes"
			icon = privilege_peasant
			loyalty = 0.1
			on_granted = {
				new localisation warrior_retirement_homes_grant_tooltip = "Every owned province producing §YFur§! or §YWood§! gains:
{modifier_to_string = {
	local_tax_modifier = 0.15
	local_autonomy = 0.05
}}"
				custom_tooltip = warrior_retirement_homes_grant_tooltip
			}
			on_revoked = {
				new localisation warrior_retirement_homes_revoke_tooltip = "The modifier §YWarrior Retirement Homes§! is removed from all owned provinces."
				custom_tooltip = warrior_retirement_homes_revoke_tooltip
			}
			on_granted_province = {
				if [
					OR = {
						has_trade_goods = fur
						has_trade_goods = wood
					}
				] {
					add_province_modifier = {
						name = warrior_retirement_homes
						duration = -1
					}
				}
				else_if [has_province_modifier = warrior_retirement_homes] {
					remove_province_modifier = warrior_retirement_homes
				}
			}
			on_revoked_province = {
				if [has_province_modifier = warrior_retirement_homes] {
					remove_province_modifier = warrior_retirement_homes
				}
			}
			on_invalid_province = {
				if [has_province_modifier = warrior_retirement_homes] {
					remove_province_modifier = warrior_retirement_homes
				}
			}
			ai_will_do = {
				factor = 5
			}
		}
		new to_sovngarde = {
			name = "To Sovngarde"
			icon = privilege_to_sovngarde
			loyalty = -0.1
			benefits = {
				land_morale = 0.1
			}
			ai_will_do = {
				factor = 5
			}
		}
		new skald_warriors = {
			name = "Sponsor Skald Warriors"
			icon = privilege_prestige_from_land
			loyalty = 0.1
			influence = 0.05
			benefits = {
				prestige_from_land = 0.5
			}
			ai_will_do = {
				factor = 5
			}
		}
	}
	base_influence = 25
}
new event_modifier warrior_retirement_homes = {
	name = "Warrior Retirement Homes"
	modifier = {
		local_tax_modifier = 0.15
		local_autonomy = 0.05
	}
}
create_develop_manpower_agenda = warriors
create_hire_advisor_agenda = { estate = warriors category = MIL }
create_fire_advisor_agenda = { estate = warriors category = { full = ADM loc = Adm name = "Administrative" } }
create_fire_advisor_agenda = { estate = warriors category = { full = DIP loc = Dip name = "Diplomatic" } }
create_fire_advisor_agenda = { estate = warriors category = { full = MIL loc = Mil name = "Military" } }