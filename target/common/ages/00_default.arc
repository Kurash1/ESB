first_century = {
	defineloc first_century = "First Century"
	defineloc first_century_desc = ""
	definegfx = {
		name = "GFX_first_century"
		texturefile = "gfx/interface/ages/first_century/background.dds"
	}
	start = 2500
	
	can_start = {
		is_year = 2490
	}
	
	religious_conflicts = yes
	papacy = 1.00

	absolutism = {
		harsh_treatment = 1
		stability = 1
		decrease_autonomy_command = 1
		strengthen_government = 1
		
		increase_autonomy_command = -1
		debase_currency = -1
		execute_rebel_acceptance_command = -10
		seat_in_parliament = -5
		war_exhaustion = -1
	}

	objectives = {
		obj_good_magic = {
			defineloc obj_good_magic = "High Magic"
			defineloc obj_good_magic_desc = "Have Monthly Magicka Gain of at least 1"
			definegfx = {
				name = "GFX_obj_good_magic"
				texturefile = "gfx/interface/ages/first_century/obj_good_magic.dds"
			}
			custom_trigger_tooltip = {
				defineloc obj_good_magic_trigger = "Have at least 1.0 Magicka gain per month"
				tooltip = obj_good_magic_trigger
				has_global_modifier_value = {
					which = monthly_magicka
					value = 1.0
				}
			}
		}
		obj_gov_rank = {
			defineloc obj_gov_rank = "Be Kingdom"
			defineloc obj_gov_rank_desc = "Be a Kingdom"
			definegfx = {
				name = "GFX_obj_gov_rank"
				texturefile = "gfx/interface/ages/first_century/obj_gov_rank.dds"
			}
			government_rank = 4
		}
		obj_convert_provinces = {
			defineloc obj_convert_provinces = "Convert Provinces "
			defineloc obj_convert_provinces_desc = "Convert 10 provinces of a different religion."
			definegfx = {
				name = "GFX_obj_convert_provinces"
				texturefile = "gfx/interface/ages/first_century/obj_convert_provinces.dds"
			}
			custom_trigger_tooltip = {
				tooltip = obj_convert_10_provinces_tooltip
				check_variable = { which = num_converted_religion value = 10 }
			}
		}
		obj_have_development = {
			defineloc obj_have_development = "Developed Nation"
			defineloc obj_have_development_desc = "Have at least 250 total development."
			definegfx = {
				name = "GFX_obj_have_development"
				texturefile = "gfx/interface/ages/first_century/obj_have_development.dds"
			}
			total_development = 250
		}
	}		
	
	abilities = {}
}
second_century = {
	defineloc second_century = "Second Century"
	defineloc second_century_desc = ""
	definegfx = {
		name = "GFX_second_century"
		texturefile = "gfx/interface/ages/second_century/background.dds"
	}
	start = 2600
	
	can_start = {
		is_year = 2590
	}
	
	religious_conflicts = yes
	papacy = 1.00

	absolutism = {
		harsh_treatment = 1
		stability = 1
		decrease_autonomy_command = 1
		strengthen_government = 1
		
		increase_autonomy_command = -1
		debase_currency = -1
		execute_rebel_acceptance_command = -10
		seat_in_parliament = -5
		war_exhaustion = -1
	}

	objectives = {}		
	
	abilities = {}
}
third_century = {
	defineloc third_century = "Third Century"
	defineloc third_century_desc = ""
	definegfx = {
		name = "GFX_third_century"
		texturefile = "gfx/interface/ages/third_century/background.dds"
	}
	start = 2700
	
	can_start = {
		is_year = 2690
	}
	
	religious_conflicts = yes
	papacy = 1.00

	absolutism = {
		harsh_treatment = 1
		stability = 1
		decrease_autonomy_command = 1
		strengthen_government = 1
		
		increase_autonomy_command = -1
		debase_currency = -1
		execute_rebel_acceptance_command = -10
		seat_in_parliament = -5
		war_exhaustion = -1
	}

	objectives = {}		
	
	abilities = {}
}
fourth_century = {
	defineloc fourth_century = "Fourth Century"
	defineloc fourth_century_desc = ""
	definegfx = {
		name = "GFX_fourth_century"
		texturefile = "gfx/interface/ages/fourth_century/background.dds"
	}
	start = 2800
	
	can_start = {
		is_year = 2790
	}
	
	religious_conflicts = yes
	papacy = 1.00

	absolutism = {
		harsh_treatment = 1
		stability = 1
		decrease_autonomy_command = 1
		strengthen_government = 1
		
		increase_autonomy_command = -1
		debase_currency = -1
		execute_rebel_acceptance_command = -10
		seat_in_parliament = -5
		war_exhaustion = -1
	}

	objectives = {}		
	
	abilities = {}
}
fifth_century = {
	defineloc fifth_century = "Fifth Century"
	defineloc fifth_century_desc = ""
	definegfx = {
		name = "GFX_fifth_century"
		texturefile = "gfx/interface/ages/fifth_century/background.dds"
	}
	start = 2900
	
	can_start = {
		is_year = 2890
	}
	
	religious_conflicts = yes
	papacy = 1.00

	absolutism = {
		harsh_treatment = 1
		stability = 1
		decrease_autonomy_command = 1
		strengthen_government = 1
		
		increase_autonomy_command = -1
		debase_currency = -1
		execute_rebel_acceptance_command = -10
		seat_in_parliament = -5
		war_exhaustion = -1
	}

	objectives = {}		
	
	abilities = {}
}