new decision hold_of_the_sea = {
	name = "Hold of the Sea"
	major = yes
	potential = {
		tag = lone_band
		NOT = {
			has_country_flag = hold_of_the_sea
		}
	}
	provinces_to_highlight = {
		province_is_on_an_island = yes
		OR = {
			region = haafingar
			region = pale
			region = winterhold
		}
		NOT = { owned_by = ROOT }
	}
	allow = {
		num_of_owned_provinces_with = {
			value = 5
			province_is_on_an_island = yes
			OR = {
				region = haafingar
				region = pale
				region = winterhold
			}
		}
	}
	effect = {
		regions:haafingar; pale; winterhold [province_is_on_an_island = yes] {
			add_permanent_claim = ROOT
		}
		set_country_flag = hold_of_the_sea
	}
}