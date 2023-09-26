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
		OR = {
			province_id = provinces:lone_isle
			province_id = provinces:ice_isle
			province_id = provinces:rock_isle
			province_id = provinces:mundall
			province_id = provinces:edinmund
		}
		NOT = { owned_by = ROOT }
	}
	allow = {
		provinces:lone_isle, provinces:ice_isle, provinces:rock_isle, provinces:mundall, provinces:edinmund = {
			owned_by = ROOT
		}
	}
	effect = {
		provinces:gold_isle, provinces:rugged_island, provinces:castle_volkihar, provinces:big_sister, provinces:small_sister, provinces:goldvild, provinces:yngvild, provinces:erdlaith, provinces:svangljot, provinces:serpent_stone, provinces:japhets_folly, provinces:bleakrock_isle = {
			add_permanent_claim = ROOT
		}
		set_country_flag = hold_of_the_sea
	}
}