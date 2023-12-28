new inheritable reach_orc_country = {
	government = tribal
	technology_group = orc_tg
	religion = code_of_malacath
	primary_culture = stronghold_orc
	graphical_culture = easterngfx
	starting_reform = tier_1_orc_stronghold
	history = {
		1.1.1 = {
			province_groups:reachmen_discovery = {
				discover_country = $tag
			}
		}
	}
}
new country dushnikh_yal = {
	inherit = reach_orc_country
	tag = DUS
	name = "Dushnikh Yal"
	adj = "Dushnikh Yal"
	color = { 0 63 2 }
	capital = dushnikh_yal
}
new country mor_khazgur = {
	inherit = reach_orc_country
	tag = KHA
	name = "Mor Khazgur"
	adj = "Mor Khazgur"
	color = { 63 39 36 }
	capital = mor_khazgur
}