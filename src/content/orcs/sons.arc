new estate sons = {
	name = "Sons"
	desc = ""
	icon = 5
	color = {
		0 153 0
	}
	trigger = {
		culture_group = culture_groups:orc
	}
	country_modifier_happy = {
		global_unrest = -1
		discipline = 0.01
	}
	country_modifier_neutral = {
	}
	country_modifier_angry = {
		global_unrest = 2
		discipline = -0.01
	}
	land_ownership_modifier = {
	}
	# why isn't it possible to create our privileges icons? It just isn't .Why not you stupid bastard!
	privileges = {
		new curtail_the_sons_influence = {
			name = "Curtail the Sons' Influence"
			desc = ""
			icon = privilege_curtail_influence
			influence = -0.15
			loyalty = -0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = estates:sons:privileges:favor_the_sons_influence 
				}
			}
		}
		new favor_the_sons_influence = {
			name = "Favor the Sons' Influence"
			desc = ""
			icon = privilege_favor_influence
			influence = 0.15
			loyalty = 0.20
			can_select = { 
				NOT = { 
					has_estate_privilege = estates:sons:privileges:curtail_the_sons_influence 
				}
			}
		}
		
	}
	base_influence = 25
}