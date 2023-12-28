new province_group reachmen_discovery = {
	name = "Reachmen Discovery"
	provinces = {
		lake_karthspire hroldan_river blind_river dragon_river karth_lake imp_34 imp_35 imp_36 imp_37 imp_38 imp_39 imp_40 imp_41 imp_42 imp_43 imp_44 imp_45 imp_46 imp_47 imp_48 imp_49 imp_50 south_druadach_mountains central_druadach_mountains north_druadach_mountains bannermist twilight_sepulcher evergreen_grove cracked_tusk illinaltas_deep half_moon sunderstone_gorge bilegulch knifepoint hunters_rest volskygge deepwood_redoubt hjaals_tooth bumpy_road rugged_coast chillwind_depths rivers_road cliff_point lost_valley_redoubt cradle_stone gloomreach gretmor valthume valthume_pass arkngthamz bleeding_hill dushnikh_yal reachwind_eyrie editia hillia reachcliff purewater_ruin hag_rock_redoubt dread_crone_rock lislgeth reachwater_hill reachwater_rock thaeba markarth left_hand_mine salvius_farm groilief kolskeggr blind_cliff karerica aldiid ragnvald elselod aelagela olavete thalif riknhild malie karthwasten reydlgeth dragontooth riglaith bthardamz sirgarte druadach_redoubt bthar_zel rocky_coast harmugstahl silver_hill east_karthspire west_karthspire soljunds_sinkhole old_hroldan igrra lower_moldering algerd orieund horsorg sungard reyba moonstone_hill vigde serpents_bluff_redoubt moldering sigli bleakwind_bluff rebels_cairn ysolnhvir ranarte reach_road_turn vorigja broken_tower_redoubt karthwatch eydljot beigi cliffside_retreat dragon_bridge_overlook freyke adelreene betri bixisys itary brucas_leap_redoubt rock_dragon_coast khazgur_coast darkfall_cave agnese mor_khazgur illdund adising talking_stone jolsta brylith mackirek eismor rorikstead flatand petilief gjukar orifna broken_fang_cave granitehill
	}
}
new inheritable reachman_country = {
	government = tribal
	technology_group = reachman_tg
	starting_reform = tier_1_reachmen_clan
	religion = reachman_faith
	primary_culture = reachmen
	graphical_culture = easterngfx
	history = {
		1.1.1 = {
			province_groups:reachmen_discovery = {
				discover_country = $tag
			}
		}
	}
}
new country ghostsong_clan = {
	inherit = reachman_country
	tag = GHO
	name = "Ghostsong Clan"
	adj = "Ghostsong"
	color = {
		84 72 65
	}
	capital = sungard
}
new country dreadhorn_clan = {
	inherit = reachman_country
	tag = DRH
	name = "Dreadhorn Clan"
	adj = "Dreadhorn"
	color = {
		118 91 52
	}
	capital = horsorg
}
new country blackdrake_clan = {
	inherit = reachman_country
	tag = BLD
	name = "Blackdrake Clan"
	adj = "Blackdrake"
	color = {
		100 54 54
	}
	capital = reachcliff
}
new country shadowbloom_clan = {
	inherit = reachman_country
	tag = SHB
	name = "Shadowbloom Clan"
	adj = "Shadowbloom"
	color = {
		80 0 120
	}
	capital = lislgeth
}
new country cinder-heart_clan = {
	inherit = reachman_country
	tag = CIN
	name = "Cinder-Heart Clan"
	adj = "Cinder-Heart"
	color = {
		39 69 24
	}
	capital = ragnvald
}
new country thornroot_clan = {
	inherit = reachman_country
	tag = THO
	name = "Thornroot Clan"
	adj = "Thornroot"
	color = {
		134 89 26
	}
	capital = dread_crone_rock
}
new country wildspear_clan = {
	inherit = reachman_country
	tag = WIL
	name = "Wildspear Clan"
	adj = "Wildspear"
	color = {
		125 125 25
	}
	capital = karerica
}
new country black-moon_clan = {
	inherit = reachman_country
	tag = BLM
	name = "Black-Moon Clan"
	adj = "Black-Moon"
	color = {
		25 25 25
	}
	capital = valthume
}
new country shadefeather_clan = {
	inherit = reachman_country
	tag = SHF
	name = "Shadefeather Clan"
	adj = "Shadefeather"
	color = {
		75 125 50
	}
	capital = dragon_bridge_overlook
}
new country crow-eye_clan = {
	inherit = reachman_country
	tag = CRO
	name = "Crow-Eye Clan"
	adj = "Crow-Eye"
	color = {
		0 100 100
	}
	capital = karthwasten
}
new country wildblood_clan = {
	inherit = reachman_country
	tag = WLD
	name = "Wildblood Clan"
	adj = "Wildblood"
	color = { 115 0 0 }
	capital = kolskeggr
}
new country twisted_briar_clan = {
	inherit = reachman_country
	tag = TWI
	name = "Twisted Briar Clan"
	adj = "Twisted Briar"
	color = { 61 0 17 }
	capital = west_karthspire
}
new country treeshade_clan = {
	inherit = reachman_country
	tag = TRH
	name = "Treeshade Clan"
	adj = "Treeshade"
	color = { 34 61 18 }
	capital = reach_road_turn
}
new country timbercrow_clan = {
	inherit = reachman_country
	tag = TMB
	name = "Timbercrow Clan"
	adj = "Timbercrow"
	color = { 155 104 68 }
	capital = blind_cliff
}
new country timberclaw_clan = {
	inherit = reachman_country
	tag = TMC
	name = "Timberclaw Clan"
	adj = "Timberclaw"
	color = { 112 68 32 }
	capital = markarth
}
new country stonetalon_clan = {
	inherit = reachman_country
	tag = STT
	name = "Stonetalon Clan"
	adj = "Stonetalon"
	color = { 86 102 158 }
	capital = algerd
}
new country starsinger_clan = {
	inherit = reachman_country
	tag = STA
	name = "Starsinger Clan"
	adj = "Starsinger"
	color = { 178 255 239 }
	capital = sirgarte
}
new country stag-heart_clan = {
	inherit = reachman_country
	tag = STG
	name = "Stag-Heart Clan"
	adj = "Stag-Heart"
	color = { 255 94 30 }
	capital = druadach_redoubt
}
new country spirit-tale_clan = {
	inherit = reachman_country
	tag = SPI
	name = "Spirit-Tale Clan"
	adj = "Spirit-Tale"
	color = { 255 112 212 }
	capital = rock_dragon_coast
}
new country spiritdancer_clan = {
	inherit = reachman_country
	tag = SPD
	name = "Spiritdancer Clan"
	adj = "Spiritdancer"
	color = { 174 76 255 }
	capital = east_karthspire
}
new country spiritblood_clan = {
	inherit = reachman_country
	tag = SPB
	name = "Spiritblood Clan"
	adj = "Spiritblood"
	color = { 255 40 112 }
	capital = soljunds_sinkhole
}
new country skyweaver_clan = {
	inherit = reachman_country
	tag = SKW
	name = "Skyweaver Clan"
	adj = "Skyweaver"
	color = { 188 227 255 }
	capital = lost_valley_redoubt
}
new country six-ford_clan = {
	inherit = reachman_country
	tag = SIX
	name = "Six-Ford Clan"
	adj = "Six-Ford"
	color = { 0 110 255 }
	capital = rocky_coast
}
new country shunned_ones = {
	inherit = reachman_country
	tag = SHO
	name = "Shunned Ones"
	adj = "Shunned"
	color = { 50 0 100 }
	capital = riglaith
}
new country river-elk_clan = {
	inherit = reachman_country
	tag = RVE
	name = "River-Elk Clan"
	adj = "River-Elk"
	color = { 183 75 78 }
	capital = igrra
}
new country rageclaw_clan = {
	inherit = reachman_country
	tag = RGC
	name = "Rageclaw Clan"
	adj = "Rageclaw"
	color = { 183 33 33 }
	capital = moldering
}
new country quicktalon_caln = {
	inherit = reachman_country
	tag = QUI
	name = "Quicktalon Clan"
	adj = "Quicktalon"
	color = { 71 183 122 }
	capital = rebels_cairn
}
new country mistrunner_clan = {
	inherit = reachman_country
	tag = MSR
	name = "Mistrunner Clan"
	adj = "Mistrunner"
	color = { 167 176 183 }
	capital = reachwater_rock
}
new country hillhunter_clan = {
	inherit = reachman_country
	tag = HLL
	name = "Hillhunter Clan"
	adj = "Hillhunter"
	color = { 99 44 31 }
	capital = left_hand_mine
}
new country hearteater_clan = {
	inherit = reachman_country
	tag = HRT
	name = "Hearteater Clan"
	adj = "Hearteater"
	color = { 99 16 37 }
	capital = gloomreach
}
new country grimfang_clan = {
	inherit = reachman_country
	tag = GRI
	name = "Grimfang Clan"
	adj = "Grimfang"
	color = { 0 0 0 }
	capital = bleeding_hill
}
new country eagleseer_clan = {
	inherit = reachman_country
	tag = EAG
	name = "Eagleseer Clan"
	adj = "Eagleseer"
	color = { 6 99 80 }
	capital = riknhild
}
new country doomfang_clan = {
	inherit = reachman_country
	tag = DOO
	name = "Doomfang Clan"
	adj = "Doomfang"
	color = { 99 24 0 }
	capital = thalif
}
new country deathwing_clan = {
	inherit = reachman_country
	tag = DEA
	name = "Deathwing Clan"
	adj = "Deathwing"
	color = { 99 91 0 }
	capital = bleakwind_bluff
}
new country dark_witness_clan = {
	inherit = reachman_country
	tag = DWI
	name = "Dark Witness Clan"
	adj = "Dark"
	color = { 99 8 87 }
	capital = purewater_ruin
}
new country boneshaper_clan = {
	inherit = reachman_country
	tag = BSH
	name = "Boneshaper Clan"
	adj = "Boneshaper"
	color = { 94 99 96 }
	capital = karthwatch
}
new country boldclaw_clan = {
	inherit = reachman_country
	tag = BDC
	name = "Boldclaw Clan"
	adj = "Boldclaw"
	color = { 75 99 20 }
	capital = brucas_leap_redoubt
}
new country blackoath_clan = {
	inherit = reachman_country
	tag = BKO
	name = "Blackoath Clan"
	adj = "Blackoath"
	color = { 0 40 73 }
	capital = khazgur_coast
}
new country bear-heart_clan = {
	inherit = reachman_country
	tag = BHE
	name = "Bear-Heart Clan"
	adj = "Bear-Heart"
	color = { 73 17 29 }
	capital = betri
}
new country stranglehollow_clan = {
	inherit = reachman_country
	tag = STR
	name = "Stranglehollow Clan"
	adj = "Stranglehollow"
	color = { 73 61 19 }
	capital = elselod
}
new country horn-stride_clan = {
	inherit = reachman_country
	tag = HST
	name = "Horn-Stride Clan"
	adj = "Horn-Stride"
	color = { 35 63 40 }
	capital = harmugstahl
}
new relation dependency = {
	subject_type = markarth_clan
	first = TMC
	second = HLL
	start_date = 2500.1.1
	end_date = 9999.1.1
}
new relation dependency = {
	subject_type = markarth_clan
	first = TMC
	second = WIL
	start_date = 2500.1.1
	end_date = 9999.1.1
}
new relation dependency = {
	subject_type = markarth_clan
	first = TMC
	second = WLD
	start_date = 2500.1.1
	end_date = 9999.1.1
}
new relation dependency = {
	subject_type = markarth_clan
	first = TMC
	second = SHB
	start_date = 2500.1.1
	end_date = 9999.1.1
}
new relation dependency = {
	subject_type = markarth_clan
	first = TMC
	second = MSR
	start_date = 2500.1.1
	end_date = 9999.1.1
}
new relation dependency = {
	subject_type = markarth_clan
	first = TMC
	second = CIN
	start_date = 2500.1.1
	end_date = 9999.1.1
}