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