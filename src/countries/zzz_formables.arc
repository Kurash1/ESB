new country eastmarch = {
	inherit = nordic_country
	primary_culture = eastmarcher
	tag = EAS
	name = "Eastmarch"
	adj = "Eastmarcher"
	color = {
		45 53 206
	}
	starting_reform = tier_1_hold
	capital = windhelm
}
new decision form_eastmarch = {
	name = "Form Eastmarch"
	major = yes
	potential = {
		capital_scope = {
			region = eastmarch
		}
		NOT = {
			has_reform = tier_1_hold
			exists = WND
		}
	}
	provinces_to_highlight = {
		region = eastmarch
		NOT = { owned_by = ROOT }
	}
	allow = {
		NOT = { has_country_flag = no_formation_allowed }
		calc_true_if = {
			amount = 60
			regions:eastmarch = {
				type = all
				owned_by = ROOT
				is_core = ROOT
			}
		}
	}
	effect = {
		change_tag = eastmarch
		swap_free_idea_group = yes
		change_government = monarchy
		add_government_reform = tier_1_hold
	}
}
new decision form_winterhold = {
	name = "Form Winterhold"
	major = yes
	potential = {
		capital_scope = {
			region = winterhold
		}
		NOT = {
			has_reform = tier_1_hold
		}
		OR = {
			NOT = {
				exists = WIH
			}
			tag = winterhold
		}
	}
	provinces_to_highlight = {
		region = winterhold
		NOT = { owned_by = ROOT }
	}
	allow = {
		NOT = { has_country_flag = no_formation_allowed }
		calc_true_if = {
			amount = 50
			regions:winterhold = {
				type = all
				owned_by = ROOT
				is_core = ROOT
			}
		}
	}
	effect = {
		change_tag = winterhold
		swap_free_idea_group = yes
		change_government = monarchy
		add_government_reform = tier_1_hold
	}
}
new country pale = {
	inherit = nordic_country
	primary_culture = palean
	tag = PAL
	name = "Pale"
	adj = "Palean"
	color = {
		167 255 255
	}
	starting_reform = tier_1_hold
	capital = dawnstar
}
new decision form_pale = {
	name = "Form Pale"
	major = yes
	potential = {
		capital_scope = {
			region = pale
		}
		NOT = {
			exists = PAL
			has_reform = tier_1_hold
		}
	}
	provinces_to_highlight = {
		region = pale
		NOT = { owned_by = ROOT }
	}
	allow = {
		NOT = { has_country_flag = no_formation_allowed }
		calc_true_if = {
			amount = 40
			regions:pale = {
				type = all
				owned_by = ROOT
				is_core = ROOT
			}
		}
	}
	effect = {
		change_tag = pale
		swap_free_idea_group = yes
		change_government = monarchy
		add_government_reform = tier_1_hold
	}
}
new country whiterun = {
	inherit = nordic_country
	primary_culture = whiterunish
	tag = WHT
	name = "Whiterun"
	adj = "Whiterunish"
	color = {
		150 50 0
	}
	starting_reform = tier_1_hold
	capital = whiterun
}
new decision form_whiterun = {
	name = "Form Whiterun"
	major = yes
	potential = {
		capital_scope = {
			region = whiterun
		}
		NOT = {
			primary_culture = falkrentish
		}
		NOT = {
			exists = WHT
			has_reform = tier_1_hold
		}
	}
	provinces_to_highlight = {
		region = whiterun
		NOT = { owned_by = ROOT }
	}
	allow = {
		NOT = { has_country_flag = no_formation_allowed }
		calc_true_if = {
			amount = 50
			regions:whiterun = {
				type = all
				owned_by = ROOT
				is_core = ROOT
			}
		}
	}
	effect = {
		change_tag = whiterun
		swap_free_idea_group = yes
		change_government = monarchy
		add_government_reform = tier_1_hold
	}
}
new country hjaalmarch = {
	inherit = nordic_country
	primary_culture = hjaalmarcher
	tag = HJM
	name = "Hjaalmarch"
	adj = "Hjaalmarcher"
	color = {
		122 8 145
	}
	starting_reform = tier_1_hold
	capital = morthal
}
new decision form_hjaalmarch = {
	name = "Form Hjaalmarch"
	major = yes
	potential = {
		capital_scope = {
			region = hjaalmarch
		}
		NOT = {
			exists = HJM
			has_reform = tier_1_hold
		}
	}
	provinces_to_highlight = {
		region = hjaalmarch
		NOT = { owned_by = ROOT }
	}
	allow = {
		NOT = { has_country_flag = no_formation_allowed }
		calc_true_if = {
			amount = 40
			regions:hjaalmarch = {
				type = all
				owned_by = ROOT
				is_core = ROOT
			}
		}
	}
	effect = {
		change_tag = hjaalmarch
		swap_free_idea_group = yes
		change_government = monarchy
		add_government_reform = tier_1_hold
	}
}
new country haafingar = {
	inherit = nordic_country
	primary_culture = haafingarian
	tag = HAA
	name = "Haafingar"
	adj = "Haafingarian"
	color = {
		255 11 3
	}
	starting_reform = tier_1_hold
	capital = solitude
}
new decision form_haafingar = {
	name = "Form Haafingar"
	major = yes
	potential = {
		capital_scope = {
			region = haafingar
		}
		NOT = {
			exists = HAA
			has_reform = tier_1_hold
		}
	}
	provinces_to_highlight = {
		region = haafingar
		NOT = { owned_by = ROOT }
	}
	allow = {
		NOT = { has_country_flag = no_formation_allowed }
		calc_true_if = {
			amount = 30
			regions:haafingar = {
				type = all
				owned_by = ROOT
				is_core = ROOT
			}
		}
	}
	effect = {
		change_tag = haafingar
		swap_free_idea_group = yes
		change_government = monarchy
		add_government_reform = tier_1_hold
	}
}
new country falkreath = {
	inherit = nordic_country
	primary_culture = falkrentish
	tag = FLK
	name = "Falkreath"
	adj = "Falkrentish"
	color = {
		0 127 14
	}
	starting_reform = tier_1_hold
	capital = falkreath
}
new decision form_falkreath = {
	name = "Form Falkreath"
	major = yes
	potential = {
		primary_culture = falkrentish
		NOT = {
			exists = FLK
			has_reform = tier_1_hold
		}
	}
	allow = {
		NOT = { has_country_flag = no_formation_allowed }
		calc_true_if = {
			amount = 25
			regions:kreath = {
				type = all 
				owned_by = ROOT
				is_core = ROOT
			}
		}
	}
	provinces_to_highlight = {
		region = kreath
		NOT = { owned_by = ROOT }
	}
	effect = {
		change_tag = falkreath
		swap_free_idea_group = yes
		add_government_reform = tier_1_hold
		kreath_region = {
			add_permanent_claim = ROOT
		}
	}
}
new country orkreath = {
	inherit = kreath_orc_country
	primary_culture = kreath_orc
	tag = ORK
	name = "Orkreath"
	adj = "Orkreathian"
	color = {
		36 141 67
	}
	starting_reform = tier_1_orc_federation
	capital = falkreath
}
new decision form_orkreath = {
	name = " Form an Orc Homeland "
	major = yes
	potential = {
		primary_culture = kreath_orc
		NOT = {
			exists = ORK
			has_reform = tier_1_orc_federation
		}  
	}
	allow = {
		NOT = { has_country_flag = no_formation_allowed }
		calc_true_if = {
			amount = 25
			regions:kreath = {
				type = all 
				owned_by = ROOT
				is_core = ROOT
			}
		}
	}
	provinces_to_highlight = {
		region = kreath
		NOT = { owned_by = ROOT }
	}
	effect = {
		change_tag = orkreath
		swap_free_idea_group = yes
		add_government_reform = tier_1_orc_federation
		kreath_region = {
			add_permanent_claim = ROOT
		}
	}
}
new country rift = {
	inherit = nordic_country
	primary_culture = fallowfirean
	tag = RIF
	name = "Rift"
	adj = "Riftish"
	color = {
		54 48 54
	}
	starting_reform = tier_1_hold
	capital = riften
}
new decision form_the_rift = {
	name = " Form the Rift "
	major = yes
	potential = {
		always = no
		NOT = {
			exists = countries:rift
			has_reform = tier_1_hold
		}  
	}
	allow = {
		NOT = { has_country_flag = no_formation_allowed }
		calc_true_if = {
			amount = 60
			regions:rift = {
				type = all 
				owned_by = ROOT
				is_core = ROOT
			}
		}
	}
	provinces_to_highlight = {
		region = rift
		NOT = { owned_by = ROOT }
	}
	effect = {
		change_tag = rift
		swap_free_idea_group = yes
		add_government_reform = tier_1_hold
		rift_region = {
			add_permanent_claim = ROOT
		}
	}
}



