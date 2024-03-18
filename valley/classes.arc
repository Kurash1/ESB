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
new class named_float = {
	args = float
}
new class script_variable = {
	list = variables
	args = {
		initial_value = float
		name = string
	}
	on_create = {
		new localisation `{this:id}` = `{this:name}`
	}
	init = {
		args = bool
		transpile = {
			set_variable = {
				which = this:id
				value = this:initial_value
			}
		}
	}
	set = {
		args = float
		transpile = {
			set_variable = {
				which = this:id
				value = args
			}
		}
	}
	set_var = {
		args = script_variable
		transpile = {
			set_variable = {
				which = this:id
				which = args
			}
		}
	}
	add = {
		args = float
		transpile = {
			change_variable = {
				which = this:id
				value = args
			}
		}
	}
	add_var = {
		args = script_variable
		transpile = {
			change_variable = {
				which = this:id
				which = args
			}
		}
	}
	subtract = {
		args = float
		transpile = {
			subtract_variable = {
				which = this:id
				value = args
			}
		}
	}
	subtract_var = {
		args = script_variable
		transpile = {
			subtract_variable = {
				which = this:id
				which = args
			}
		}
	}
	multiply = {
		args = float
		transpile = {
			multiply_variable = {
				which = this:id
				value = args
			}
		}
	}
	multiply_var = {
		args = script_variable
		transpile = {
			multiply_variable = {
				which = this:id
				which = args
			}
		}
	}
	divide = {
		args = float
		transpile = {
			divide_variable = {
				which = this:id
				value = args
			}
		}
	}
	divide_var = {
		args = script_variable
		transpile = {
			divide_variable = {
				which = this:id
				which = args
			}
		}
	}
	at_least = {
		args = float
		transpile = {
			check_variable = {
				which = this:id
				value = args
			}
		}
	}
	at_least_var = {
		args = script_variable
		transpile = {
			check_variable = {
				which = this:id
				which = args
			}
		}
	}
	less_than = {
		args = float
		transpile = {
			NOT = {
				check_variable = {
					which = this:id
					value = args
				}
			}
		}
	}
	less_than_var = {
		args = script_variable
		transpile = {
			NOT = {
				check_variable = {
					which = this:id
					which = args
				}
			}
		}
	}
	
}