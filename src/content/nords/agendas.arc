new agenda cock = {
	name = "Floof"
	desc = ""
	max_days_active = 420
	can_select = {
		always = yes
	}
	provinces_to_highlight = {}
	selection_weight = { factor = 1 }
	pre_effect = {
		
	}
	immediate_effect = {
		quick_country_modifier = {
					name = "The Rift is secured"
					duration = (15*365)
					modifier = {
						global_monthly_devastation = -0.2
						global_prosperity_growth = 0.1
					}
		}
	}
	task_requirements = {
		army_size_percentage = 1.0
	}
	task_completed_effect = {
		quick_country_modifier = {
					name = "The Rift is secured"
					duration = (15*365)
					modifier = {
						global_monthly_devastation = -0.2
						global_prosperity_growth = 0.1
					}
		}
	}
	failing_effect = {
		quick_country_modifier = {
					name = "The Rift is secured"
					duration = (15*365)
					modifier = {
						global_monthly_devastation = -0.2
						global_prosperity_growth = 0.1
					}
		}
	}
	fail_if = {
		always = no
	}
	on_invalid = {}
	invalid_trigger = {}
	modifier = {}
	
}

# modifier = {}