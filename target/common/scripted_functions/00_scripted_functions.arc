# Hard-coded functions made fully or partly scripted
#
# Note that most functions use unique mechanics

# ROOT = country
can_join_hre_league = {
	condition = {
		tooltip = "CANNOT_JOIN_LEAGUE_AT_WAR"
		potential = {
		}
		allow = {
			is_at_war = no
		}
	}
}

can_leave_hre_league = {
}

can_harsh_treatment = {
}

can_reduce_war_exhaustion = {
}

can_reduce_inflation = {
}

can_declare_bankruptcy = {
}

can_release_colonial_nation = {
	condition = {
		tooltip = "CAN_RELEASE_CN_WE_ARE_AT_WAR"
		potential = {
		}
		allow = {
			is_at_war = no
		}
	}
}

can_claim_defender_of_faith = {
}

can_change_national_focus = {
}

can_increase_stability = {
}

# ROOT = province, FROM = country
can_add_province_to_hre = {
}

can_remove_province_from_hre = {
}

can_increase_autonomy = {
}

can_decrease_autonomy = {
}

can_make_core = {
}

can_make_state = {
}

can_abandon_state = {
}

can_improve_tax = {
}

can_improve_production = {
}

can_improve_manpower = {
}

can_exploit_tax = {
}

can_exploit_production = {
}

can_exploit_manpower = {
}

can_change_culture = {
}

can_move_capital = {
	condition = {
		tooltip = "NO_CAPITAL_MOVE_SHOGUN"
		potential = {
			always = no
		}
		allow = {
			always = no
		}
	}
}

can_move_trade_port = {
}

can_order_assault = {
}

can_order_force_march = {
}

can_scorch_earth = {
}

can_garrison_sorties = {
}

can_seize_colony = {
}

can_burn_colony = {
}

can_colonize_province = {
	condition = {
		defineloc COLONY_HAMMERFELL = "Colonists are unable to colonize the harsh terrain of Hammerfell."
		tooltip = COLONY_HAMMERFELL
		allow = {
			NOT = {
				superregion = hammerfell_superregion
			}
		}
	}
	condition = {
		defineloc COLONY_TRIBAL_LAND = "§RMay not colonize tribal land.§!"
		tooltip = COLONY_TRIBAL_LAND
		allow = {
			tribal_land_of = none
		}
	}
}

can_colonize_province_siberian_frontier = {
}

can_add_seat_in_parliament = {
}

can_add_estate = {
}

can_expel_minority_from = {
	condition = {
		potential = {
			OR = {
				is_religious_center_province = yes
				is_reformation_center = yes
			}
		}
		allow = {
			always = no
		}
	}
}

#hardcoded: has a colonial parent or is in the same colonial region as the capital
can_have_colonial_nations = {
	condition = {
		potential = {
			FROM = {
				has_country_flag = no_colonial_nations
			}
		}
		allow = {
			always = no
		}
	}
}

### Special functions

# Called by can_add_province_to_hre
is_possible_hre_province = {
	condition = {
		tooltip = "APH_ONLY_EUROPE"
		potential = {
		    continent = Tamriel
		}
		allow = {
			continent = Tamriel
		}
	}
}

will_demand_annexation = {
	condition = {
		potential = {
			is_elector = yes
		}
		allow = {
			NOT = { hre_reform_passed = es_prohibit_internal_wars }
		}
	}
}