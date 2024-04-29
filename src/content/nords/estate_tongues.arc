new estate tongues = {
	name = "Tongues"
	desc = ""
	icon = 12
	color = {
		255 100 0
	}
	trigger = {
		always = no
		culture_group = nord
	}
	country_modifier_happy = {
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
	}
	land_ownership_modifier = {
	}
	base_influence = 0
}
create_develop_manpower_agenda = tongues
create_hire_advisor_agenda = { estate = tongues category = MIL }
create_fire_advisor_agenda = { estate = tongues category = { full = ADM loc = Adm name = "Administrative" } }
create_fire_advisor_agenda = { estate = tongues category = { full = DIP loc = Dip name = "Diplomatic" } }
create_fire_advisor_agenda = { estate = tongues category = { full = MIL loc = Mil name = "Military" } }