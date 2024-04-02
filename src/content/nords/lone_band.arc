new decision decision_a = {
	name = "Decision A"
	potential = {
		ai = no
		NOT = { 
			has_global_flag = pressed_decision_a
		}
	}
	effect = {
		set_global_flag = pressed_decision_a
		
		quick_country_modifier = {
			name = ""
			modifier = {
				manpower_recovery_speed = 0.25
				discipline = 1.5
				advisor_cost = -0.5
				all_estate_loyalty_equilibrium = 0.3
				
				governing_capacity_modifier = 200
			}
		}
	}
}
new decision decision_b = {
	name = "Decision B"
	potential = {
		ai = no
		NOT = { 
			has_global_flag = pressed_decision_b
		}
	}
	effect = {
		set_global_flag = pressed_decision_b
		
		quick_country_modifier = {
			name = ""
			modifier = {
				development_cost = 0.2
				movement_speed = 2
				manpower_recovery_speed = -0.25
				discipline = -0.2
				land_morale = 1
				
				governing_capacity_modifier = 200
			}
		}
	}
}
new decision hold_of_the_sea = {
	name = "Hold of the Sea"
	major = yes
	potential = {
		tag = lone_band
		NOT = {
			has_country_flag = hold_of_the_sea
		}
	}
	provinces_to_highlight = {
		province_is_on_an_island = yes
		OR = {
			region = haafingar
			region = pale
			region = winterhold
		}
		NOT = { owned_by = ROOT }
	}
	allow = {
		num_of_owned_provinces_with = {
			value = 5
			province_is_on_an_island = yes
			OR = {
				region = haafingar
				region = pale
				region = winterhold
			}
		}
	}
	effect = {
		regions:haafingar; pale; winterhold [province_is_on_an_island = yes] {
			add_permanent_claim = ROOT
		}
		set_country_flag = hold_of_the_sea
	}
}