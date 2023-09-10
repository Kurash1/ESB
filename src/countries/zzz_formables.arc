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
		primary_culture = cultures:eastmarcher
		NOT = {
			has_reform = tier_1_hold
			exists = WND
		}
	}
	allow = {
		regions:eastmarch = {
			type = all
			owned_by = ROOT
		}
	}
	effect = {
		change_tag = EAS
		change_government = monarchy
		add_government_reform = tier_1_hold
	}
}
new decision form_winterhold = {
	name = "Form Winterhold"
	major = yes
	potential = {
		primary_culture = cultures:winterholdian
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
	allow = {
		regions:winterhold = {
			type = all
			owned_by = ROOT
		}
	}
	effect = {
		change_tag = winterhold
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
		primary_culture = cultures:palean
		NOT = {
			exists = PAL
			has_reform = tier_1_hold
		}
	}
	allow = {
		regions:pale = {
			type = all
			owned_by = ROOT
		}
	}
	effect = {
		change_tag = PAL
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
		primary_culture = cultures:whiterunish
		NOT = {
			exists = WHT
			has_reform = tier_1_hold
		}
	}
	allow = {
		regions:whiterun = {
			type = all
			owned_by = ROOT
		}
	}
	effect = {
		change_tag = WHT
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
		primary_culture = cultures:hjaalmarcher
		NOT = {
			exists = HJM
			has_reform = tier_1_hold
		}
	}
	allow = {
		regions:hjaalmarch = {
			type = all
			owned_by = ROOT
		}
	}
	effect = {
		change_tag = HJM
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
		primary_culture = cultures:haafingarian
		NOT = {
			exists = HAA
			has_reform = tier_1_hold
		}
	}
	allow = {
		regions:haafingar = {
			type = all
			owned_by = ROOT
		}
	}
	effect = {
		change_tag = HAA
		change_government = monarchy
		add_government_reform = tier_1_hold
	}
}