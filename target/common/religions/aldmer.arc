aldmeri_group = {
	defineloc aldmer_group = "Aldmeri Group"
	flags_with_emblem_percentage = 0
	flag_emblem_index_range = { 1 18 }
	
	center_of_religion = 1206
	
	ai_will_propagate_through_trade = yes
	
	defender_of_faith = yes
	can_form_personal_unions = yes
	
	defineloc altmeri_pantheon = "Altmeri Pantheon"
	altmeri_pantheon = {
		color = { 236 223 33 }
		icon = 1
		allow_female_defenders_of_the_faith = yes
		country = {
			tolerance_own = 2.5
			tolerance_heretic = 2.5
		}
		country_as_secondary = {
			tolerance_own = 2.5
			tolerance_heretic = 2.5
		}
		province = {
			local_missionary_strength = -0.015
		}
		
		personal_deity = yes
		
		defineloc ALTMERI_PANTHEON_HERETIC = "Altmeri Pantheon Heretics"
		heretic = { ALTMERI_PANTHEON_HERETIC }	
	}
	
	defineloc barsaebic_pantheon = "Barsaebic Pantheon"
	barsaebic_pantheon = {
		color = { 150 150 0 }
		icon = 50
		allow_female_defenders_of_the_faith = yes
		country = {
			tolerance_own = 1
			shock_damage_received = -5%
		}
		country_as_secondary = {
			tolerance_own = 1
			shock_damage_received = -5%
		}
		province = {
			
		}
		
		personal_deity = yes
		
		defineloc BARSAEBIC_PANTHEON_HERETIC = "Barsaebic Pantheon Heretics"
		heretic = { BARSAEBIC_PANTHEON_HERETIC }	
	}
	
	
}