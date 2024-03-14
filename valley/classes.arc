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
}