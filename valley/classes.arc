new class event_modifier = {
	id = `{this:id}`
	list = event_modifiers
	default = {
		name = "{this:id}"
	}
	args = {
		name = string
		modifier = named_modifier
	}
}
new class custom_text_box = {
	id = `{this:id}`
	list = custom_text_boxes
	default = {
		potential = { }
	}
	args = {
		potential = named_trigger
		name = string
		tooltip = string?
	}
}
new class modifier_definition = {
	id = `{this:id}`
	list = modifier_definitions
	args = {
		name = string
		is_percentage = bool
		trigger = named_trigger
	}
	on_create = {
		arc_call = {
			id = 0 #this creates a modifier localisation
			key = `{this:id}`
			text = `{this:name}`
			localisation_key = `{this:id}`
			multiplier = 1
			percent = this:is_percentage
			is_good = true
			is_bool = false
			is_multiplicative = true
			precision = 1
		}
	}
}