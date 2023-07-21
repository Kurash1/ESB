daedraphile_group = {
	flags_with_emblem_percentage = 0
	flag_emblem_index_range = { 1 18 }
	
	center_of_religion = 1206
	
	ai_will_propagate_through_trade = yes
	
	defender_of_faith = yes
	can_form_personal_unions = yes
	
	daedraphile_blood_made_pleasure = {
		color = { 163 10 62 }
		icon = 46
		allow_female_defenders_of_the_faith = yes
		country = {
			merc_maintenance_modifier = -0.25
			improve_relation_modifier = 0.5
		}
		country_as_secondary = {
			merc_maintenance_modifier = -0.25
			improve_relation_modifier = 0.5
		}
		province = {
			local_missionary_strength = -0.015
		}
		
		uses_church_power = yes
		aspects = {
			devote_to_revelry_aspect
			sanctify_debauchery_aspect 
			embold_greed_aspect
			vindicate_gluttony_aspect 
			luxuriate_lust_aspect 
			graze_sloth_aspect
		}
		aspects_name = PROTESTANT_ASPECTS
		
		defineloc BLOOD_MADE_PLEASURE_HERETIC = "Blood-Made-Pleasure Heretics"
		heretic = { BLOOD_MADE_PLEASURE_HERETIC }	
	}
	daedraphile_hyrma_mora = {
		color = { 238 248 146 }
		icon = 30
		allow_female_defenders_of_the_faith = yes
		country = {
			technology_cost = -0.10
	        global_institution_spread = 0.25
		}
		country_as_secondary = {
			technology_cost = -0.10
	        global_institution_spread = 0.25
		}
		province = {
			local_missionary_strength = -0.015
		}
		
		uses_church_power = yes
		aspects = {
			protection_of_knowledge_aspect
            memory_strengthening_aspect
            gratification_of_fate_aspect
            perpetuation_of_past_aspect
            future_provision_aspect
            vindication_of_stars_aspect
		}
		aspects_name = PROTESTANT_ASPECTS
		
		defineloc HYRMA_MORA_HERETIC = "Hyrma Mora Heretics"
		heretic = { HYRMA_MORA_HERETIC }	
	}
	daedraphile_mehrunes_dagon = {
		color = { 255 18 0 }
		icon = 29
		allow_female_defenders_of_the_faith = yes
		country = {
			fire_damage = 0.15
			loot_amount = 0.50
		}
		country_as_secondary = {
			fire_damage = 0.15
			loot_amount = 0.50
		}
		province = {
			local_missionary_strength = -0.015
		}
		
		uses_church_power = yes
		aspects = {
			spread_destruction_aspect
            inception_of_revolution_aspect
            energy_patronage_aspect
            change_approachment_aspect
            aspiration_to_ambitions_aspect
            deification_of_filth_aspect
		}
		aspects_name = PROTESTANT_ASPECTS
		
		heretic = { MEHRUNES_DAGON_HERETIC }	
	}
	daedraphile_mephala = {
		color = { 0 0 0 }
		icon = 43
		allow_female_defenders_of_the_faith = yes
		country = {
			build_cost = -0.25
			province_warscore_cost = -0.25
		}
		country_as_secondary = {
			build_cost = -0.25
			province_warscore_cost = -0.25
		}
		province = {
			local_missionary_strength = -0.015
		}
		
		uses_church_power = yes
		aspects = {
			shed_lies_aspect
			embrace_lust_aspect
			forgive_murder_aspect
			preserve_secrets_aspect
			crave_to_desires_aspect
			succumb_to_seduce_aspect
		}
		aspects_name = PROTESTANT_ASPECTS
		
		heretic = { MEPHALA_HERETIC }	
	}
	daedraphile_merid_nunda = {
		color = { 146 248 238 }
		icon = 28
		allow_female_defenders_of_the_faith = yes
		country = {
			global_manpower_modifier = 0.25
			state_maintenance_modifier = -0.25
		}
		country_as_secondary = {
			global_manpower_modifier = 0.25
			state_maintenance_modifier = -0.25
		}
		province = {
			local_missionary_strength = -0.015
		}
		
		uses_church_power = yes
		aspects = {
			infinite_energies_aspect
            purification_of_land_aspect
            purge_of_undead_aspect
            inspiration_of_life_aspect
            light_preservation_aspect
            worship_of_dawn_aspect
		}
		aspects_name = PROTESTANT_ASPECTS
		defineloc DAEDRAPHILE_MERID_NUNDA_HERETIC = "Merid-Nunda Heretics"
		heretic = { DAEDRAPHILE_MERID_NUNDA_HERETIC }	
	}
	daedraphile_mola_gbal = {
		color = { 0 0 100 }
		icon = 27
		allow_female_defenders_of_the_faith = yes
		country = {
			free_leader_pool = 1
			mercenary_manpower = 0.5
		}
		country_as_secondary = {
			free_leader_pool = 1
			mercenary_manpower = 0.5
		}
		province = {
			local_missionary_strength = -0.015
		}
		
		uses_church_power = yes
		aspects = {
			blood_rituals_aspect
            enslaement_of_mortals_aspect
            eternal_domination_aspect
            harvest_of_souls_aspect
            encouragement_of_strife_aspect
            abetment_to_lust_aspect
		}
		aspects_name = PROTESTANT_ASPECTS
		
		defineloc DAEDRAPHILE_MOLA_GBAL_HERETIC = "Mola Gbal Heretics"
		heretic = { DAEDRAPHILE_MOLA_GBAL_HERETIC }
	}
}