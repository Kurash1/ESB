new province_group nord_discovery = {
	name = "Nord Discovery"
	provinces = {
		dragon_river coast_of_bleakrock far_japhet_sea tale_sea ysgramoors_landing west_chill_coast east_chill_coast ghost_sea coast_of_winterhold bleak_coast viking_sea yngvild_coast glacier_sea coast_of_verglas ustlake drajkmyr_marsh coast_of_dawnstar lonely_sea broken_coast north_haafingar_sea coast_of_kynes_aegis two_isle_coast rocky_sea old_sea coast_of_northwatch forgotten_coast coast_of_solitude coast_of_morthal hjaal_river upper_hjaal_river 7002 clearpine_lake bleakwind_lake mara_eye_pond ysmir_lake lake_yorgrim coast_of_windhelm lower_darkwater grund_river lake_illinalta river_ember white_river mixwater_river lake_darkwater aevar_river ysgramoors_teeth lower_hrothgar embershard_hills cloak_mount silver_mount 3_velothi_mountains imp_ysmir imp_fellglow imp_4 imp_5 imp_6 imp_7 imp_8 imp_9 imp_10 imp_11 imp_12 imp_13 imp_14 imp_15 imp_16 imp_17 imp_18 imp_19 imp_20 imp_21 imp_22 imp_23 imp_24 imp_25 imp_26 imp_27 imp_28 imp_29 imp_30 imp_31 imp_32 imp_33 imp_36 imp_37 brittleshin skyborn_mountains winterhold_mountains mount_shearpoint 1_velothi_mountains cragwallow_hills bonestrew_mountain morvunskar_hills snapleg_hills darkwater_hills mistwatch_hills lost_knife_hills 2_velothi_mountains bleakrock_isle giants_exit brandy-mug stoneside holly-frost yngol_barrow frostbloom snowdrift chillwind dunmeth_pass crag_forest greenstep mzulft cragwallow broken_limb cherim_pond witchmist bonestrew hjoie akawatch fanella aleading steamcrag bloody_road margyf cronvangr berasta riverside_shack kynesgrove erimor anguki ansilvund stony_creek dwarf_road northwind upper_shor_way lower_shor_way darkwater_crossing atronach eldergleam mist_road ysgramoors_road darkwater_watch clay_point darkwater_pass aevar_hill rough_road east_hrothgar_pass gold_glade top_point dibellas_coast tree_hill amol gallows_rock maras_rise gallows_hall mixwater whiterock morvunskar cradlecrush amol_point darkshade hillgrunds_steading ysmir_overlook uttering_hills angas_mill evetsta windhelm freanna driena oriekke haeleke sky_forest lone_isle solitude solitude_port solitude_entrance solitude_farms solitude_military_camp solitude_fork meridias_crossroad dragon_bridge castle_volkihar big_sister small_sister rugged_island solitude_lighthouse clay_coast rock_isle northern_cliffs cascabel_hall broken_oar shadowgreen gold_isle northern_road ravenscar widows_watch northern_mine steepfall_burrow lower_steepfall_burrow northwatch horned_coast low_grove pinefrost volskygge deepwood_redoubt pinemoon_cave snowpeaks clearpine_pond lost_echo_cave wolfskull_cave hraggstad kilkreath_trail kilkreath_temple ironback_hideout kilkreath_peak snowhawk_peak isle_of_sorrow morthal morthal_mines greenspring_hollow lone_hill rannveigs_fast hjaals_tooth bumpy_road rugged_coast robbers_gorge fishermans_hangout barren_road chillwind_depths rivers_road cliff_point forebears_holdout tranquile_woods snowhawk_forest traitorous_swamps apprentice_stone bandits_rest dead_mens_respite snowhawk minedvild drajkmyr_toll central_drajkmyr folgunthur cold_swamp windstad ondidreid ustengrav fistrock snow_trail stonehills skyborn_altar skyborn_passage bromjunaar bromjunaar_approach snowy_pines abundant_mines cold_rock_pass myrwatch bjorn_ambush folks_gathering kjenstag rotten_trees morthal_colony frozen_outpost njadhilde nightcaller goldvild softta ingesi verglas ice_isle pale_camp olavnir dawnstar dawn_sanctuary mavetlogi windward ilfbbi frostmere mzinchaleft red_road_pass hall_of_the_vigilant reyhi dunstad emfrljot giants_gap freaold blizzard_rest three_point silverdrift nightgate ironbind_barrow olavdolyn yorgrim_overlook jalaeigr yorgrim_ressurection lower_raldbthar tumble_arch_pass shrouded_grove shearpoint fellglow ysmir_hill korvanjund shimmermist long_road loreius_farm elydark cranelis syllartha volunruud oladithas stonehill_bluff heljarchen isellarue lord_hill edinmund mundall rift_watchtower snapleg silverpath clearspring silver_edge dragonhill autumnshade boulderfall dwarfstone shors_stone grahill shors_watchtower ruunvald tolvald vund fort_greenwall greenhill greenmine illdund adising talking_stone jolsta brylith mackirek eismor rorikstead swindlers_den flatand petilief gjukar orifna liesekke broken_fang_cave sleeping_tree_camp granitehill bloated_mans_grotto aumso north_brittleshin lydvild greymoor silvershade dragonpoint redorans_retreat hamvirs_rest bleakwind_basin western_watchtower alviella secundas_kiss silent_moons eisilief matior gold_hill halted_stream editsine ingdreid white_watch battle_born copper_coast whiterun chillfurrow whiterun_stables pelagia_farm honningbrew honningbrew_hill green_hill_road bleak_falls_temple bandit_way iron_slope south_brittleshin anises_cabin treasure_coast riverwood embershard_mine ritual_stone hrothgar_camp west_hrothgar_pass white_river_watch valtheim prafall fellhammer wayward_pass hoddard snowpoint frostflow erdlaith svangljot serpent_stone japhets_folly aegilgeth snow_veil_sanctum sonior imsifa kastav matette gwenara driftshade yngvild fredhire hobs_fall_cave aldievi tower_stone joldli alftand fanais mabgritte nimeclo tildar njari britara frabkning mavedolyn herkevi tekltla reydis bleakcoast seraina gormeki wreck_coast journeymans_nook greiide whistling_mine anthor_peak sappika brylana winterhold danen college_of_winterhold bittegho mareet lydihild mertlogi skytemple dwarf_valley drifold ysgramoors_tomb lilva uthgke pilgrims_coast wind_break njaddir saarthal netvild helasine 
	}
}
new inheritable nordic_country = {
	technology_group = nord_tg
	religion = nordic_pantheon
	graphical_culture = greekgfx
	history = {
		1.1.1 = {
			province_groups:nord_discovery = {
				discover_country = $tag
			}
		}
	}
	starting_reform = tier_1_nord_clan
}
new country lone_band = {
	inherit = nordic_country
	government = republic
	starting_reform = tier_1_pirate_republic
	primary_culture = haafingarian
	tag = LBA
	name = "Lone Band"
	adj = "Lone"
	color = {
		0 0 100
	}
	history += {
		2568.1.1 = {
			monarch = {
				name = "Fuldir"
				dynasty = "Snake-eye"
				adm = 5
				dip = 6
				mil = 4
				birth_date = 2549.1.1
			}
		}
	}
	capital = lone_isle
}
new country valtheim = {
	inherit = nordic_country
	primary_culture = whiterunish
	tag = VLT
	name = "Valtheim"
	adj = "Valtheimen"
	color = {
		63 75 82
	}
	capital = valtheim
}
new country clearspring = {
	inherit = nordic_country
	primary_culture = fallowfirean
	tag = CLR
	starting_reform = tier_1_thanedom
	name = "Clearspring"
	adj = "Clear"
	history += {
		2568.1.1 = {
			monarch = {
				name = "Falk"
				dynasty = "Skendeinl"
				adm = 2
				dip = 2
				mil = 3
				birth_date = 2523.1.1
			}
			add_historical_rival = fallowfire
		}
	}
	color = {
		0 200 50
	}
	capital = clearspring
}
new country fallowfire = {
	inherit = nordic_country
	primary_culture = fallowfirean
	government = remnant
	starting_reform = companion_remnant
	tag = FLW
	name = "Fallowfire"
	adj = "Fallowfire"
	history += {
		2568.1.1 = {
			monarch = {
				name = "Akvid"
				dynasty = "Blood-axe"
				adm = 3
				dip = 2
				mil = 2
				birth_date = 2545.1.1
			}
			country_event = {
				id = fallowfire.5
				days = 31
			}
			add_historical_rival = clearspring
		}
	}
	color = {
		84 26 39
	}
	capital = shors_stone
}
new country forelhost = {
	inherit = nordic_country
	primary_culture = forelhostian
	tag = FOR
	name = "Forelhost"
	adj = "Forelhostian"
	color = {
		238 234 133
	}
	history += {
		2568.1.1 = {
			monarch = {
				name = "Rahgot"
				adm = 4
				dip = 3
				mil = 6
				birth_date = 2012.1.1
			}
			add_ruler_personality = immortal_personality
			add_ruler_modifier = {
				name = lich
				duration = -1
			}
		}
	}
	religion = dragon_cult
	capital = forelhost
	government = theocracy
	starting_reform = tier_1_forelhost_priestdom
}
new country solitude = {
	inherit = nordic_country
	primary_culture = haafingarian
	tag = SOL
	name = "Solitude"
	adj = "Solitudean"
	color = {
		255 11 3
	}
	capital = solitude
	history += {
		elector = yes
	}
}
new country cascabel = {
	inherit = nordic_country
	primary_culture = haafingarian
	tag = CSC
	name = "Cascabel"
	adj = "Cascabellian"
	color = {
		200 0 0
	}
	capital = cascabel_hall
}
new country pine_frost = {
	inherit = nordic_country
	primary_culture = haafingarian
	tag = PIF
	name = "Pine-Frost"
	adj = "Pine-Frost"
	color = {
		158 255 194
	}
	capital = pinefrost
}
new country holly-frost = {
	inherit = nordic_country
	primary_culture = eastmarcher
	tag = HLY
	name = "Holly-Frost"
	adj = "Holly-Frost"
	color = {
		0 255 255
	}
	capital = holly-frost
}
new country dragon_bridge = {
	inherit = nordic_country
	primary_culture = haafingarian
	tag = DRB
	starting_reform = tier_1_warrior_house
	name = "Dragon Bridge"
	adj = "Dragon Bridgean"
	color = {
		156 84 84
	}
	capital = dragon_bridge
}
new country blue-axe = {
	inherit = nordic_country
	primary_culture = winterholdian
	tag = BLU
	name = "Blue-Axe"
	adj = "Blue-Axe"
	color = {
		73 101 255
	}
	capital = ysgramoors_tomb
}
new country pine-hill = {
	inherit = nordic_country
	primary_culture = haafingarian
	tag = PIN
	name = "Pine-Hill"
	adj = "Pine-Hill"
	color = {
		158 255 102
	}
	capital = clearpine_pond
}
new country rime-rock = {
	inherit = nordic_country
	primary_culture = haafingarian
	tag = RIR
	name = "Rime-Rock"
	adj = "Rime-Rock"
	color = {
		133 175 175
	}
	capital = northwatch
}
new country raven-scar = {
	inherit = nordic_country
	primary_culture = haafingarian
	tag = RAV
	name = "Raven-Scar"
	adj = "Raven-Scar"
	color = {
		122 122 122
	}
	capital = ravenscar
}
new country iron-back = {
	inherit = nordic_country
	primary_culture = haafingarian
	tag = IRO
	name = "Iron-Back"
	adj = "Iron-Back"
	color = {
		196 121 84
	}
	capital = ironback_hideout
}
new country wolf-skull = {
	inherit = nordic_country
	primary_culture = haafingarian
	tag = WOL
	name = "Wolf-Skull"
	adj = "Wolf-Skull"
	color = {
		196 62 165
	}
	capital = hraggstad
}
new country chill-wind = {
	inherit = nordic_country
	primary_culture = hjaalmarcher
	tag = CHW
	name = "Chill-Wind"
	adj = "Chill-Wind"
	color = {
		80 192 196
	}
	capital = rivers_road
}
new country snow-hawk = {
	inherit = nordic_country
	primary_culture = hjaalmarcher
	tag = SNO
	name = "Snow-Hawk"
	adj = "Snow-Hawk"
	color = {
		200 255 200
	}
	capital = snowhawk
}
new country mort-hall = {
	inherit = nordic_country
	primary_culture = hjaalmarcher
	tag = MOH
	name = "Mort-Hall"
	adj = "Mort-Hall"
	color = {
		122 8 145
	}
	capital = morthal
}
new country high-gate = {
	inherit = nordic_country
	primary_culture = palean
	tag = HGA
	name = "High-Gate"
	adj = "High-Gate"
	color = {
		109 28 56
	}
	capital = verglas
}
new country dawn-star = {
	inherit = nordic_country
	primary_culture = palean
	tag = DAW
	name = "Dawn-Star"
	adj = "Dawn-Star"
	color = {
		167 255 255
	}
	capital = dawnstar
	history += {
		elector = yes
	}
}
new country stone-hill = {
	inherit = nordic_country
	primary_culture = hjaalmarcher
	tag = STO
	name = "Stone-Hill"
	adj = "Stone-Hill"
	color = {
		255 205 168
	}
	capital = stonehills
}
new country mire-watch = {
	inherit = nordic_country
	primary_culture = hjaalmarcher
	tag = MIR
	name = "Mire-Watch"
	adj = "Mire-Watch"
	color = {
		255 73 158
	}
	capital = myrwatch
}
new country wind-ward = {
	inherit = nordic_country
	primary_culture = palean
	tag = WIN
	name = "Wind-Ward"
	adj = "Wind-Ward"
	color = {
		117 130 142
	}
	capital = windward
}
new country frostmere = {
	inherit = nordic_country
	primary_culture = palean
	tag = FRO
	name = "Frostmere"
	adj = "Frostmere"
	color = {
		0 200 200
	}
	capital = frostmere
}
new country dunstad = {
	inherit = nordic_country
	primary_culture = palean
	tag = DNS
	starting_reform = tier_1_thanedom
	name = "Dunstad"
	adj = "Dunstandish"
	color = {
		255 204 206
	}
	capital = dunstad
}
new country wind-caller = {
	inherit = nordic_country
	primary_culture = hjaalmarcher
	tag = WNC
	name = "Wind-Caller"
	adj = "Wind-Caller"
	color = {
		255 255 255
	}
	capital = ustengrav
}
new country hjaal = {
	inherit = nordic_country
	primary_culture = hjaalmarcher
	tag = HJA
	starting_reform = tier_1_thanedom
	name = "Hjaal"
	adj = "Hjaalish"
	color = {
		50 106 188
	}
	capital = hjaals_tooth
}
new country rorikstead = {
	inherit = nordic_country
	primary_culture = whiterunish
	tag = ROR
	name = "Rorikstead"
	adj = "Roriksteadean"
	color = {
		188 133 88
	}
	capital = rorikstead
}
new country river-runner = {
	inherit = nordic_country
	primary_culture = whiterunish
	tag = RVR
	name = "River-Runner"
	adj = "River-Runner"
	color = {
		0 203 255
	}
	capital = swindlers_den
}
new country hrothgar = {
	inherit = nordic_country
	primary_culture = whiterunish
	tag = HRO
	name = "Hrothgar"
	adj = "Hrothgar"
	color = {
		127 0 0
	}
	capital = hrothgar_camp
	government = remnant
	starting_reform = tier_1_hrothgar_territories
	history += {
		2568.1.1 = {
			monarch = {
				name = "Kor"
				dynasty = "Tall-Tree"
				adm = 2
				dip = 1
				mil = 3
				birth_date = 2528.1.1
			}
		}
	}
}
new country broken-fang = {
	inherit = nordic_country
	primary_culture = whiterunish
	tag = BRK
	name = "Broken-Fang"
	adj = "Broken-Fang"
	color = {
		75 75 75
	}
	history += {
		2568.1.1 = {
			monarch = {
				name = "Wulf"
				dynasty = "Broken-Fang"
				adm = 4
				dip = 3
				mil = 3
				birth_date = 2522.1.1
			}
		}
	}
	capital = gjukar
}
new country skjoralmor = {
	inherit = nordic_country
	primary_culture = falkrentish
	tag = SKJ
	name = "Skjoralmor"
	adj = "Skjoralmorian"
	color = {
		20 63 11
	}
	capital = riverwood
	history += {
		elector = yes
		2568.1.1 = {
			monarch = {
				name = "Valdr"
				dynasty = "Skjoralmor"
				adm = 4
				dip = 4
				mil = 4
				birth_date = 2550.1.1
			}
		}
		1.1.1 = {
			set_variable = {
				which = total_casualties_caused
				which = 0
			}
		}
	}
	starting_reform = tier_1_skjoralmor_clan
}
new country jorrvaskr = {
	inherit = nordic_country
	primary_culture = whiterunish
	tag = JRR
	name = "Jorrvaskr"
	adj = "Jorrvaskr"
	color = {
		150 50 0
	}
	government = remnant
	starting_reform = companion_remnant
	capital = whiterun
	history += {
		historical_friend = WND
		elector = yes
		2568.1.1 = {
			monarch = {
				name = "Ulrick"
				adm = 5
				dip = 5
				mil = 6
				birth_date = 2550.1.1
			}
		}
	}
}
new event_modifier atmoran_holdings = {
	name = "Atmoran Holdings"
	modifier = {
		global_tax_income = 60
		land_forcelimit = 5
		global_manpower = 10
		naval_forcelimit = 10
		stability_cost_to_declare_war = 1
	}
}
new country windhelm = {
	inherit = nordic_country
	primary_culture = eastmarcher
	tag = WND
	name = "Windhelm"
	adj = "Windhelm"
	color = {
		45 53 206
	}
	starting_reform = tier_1_hold
	capital = windhelm
	history += {
		historical_friend = JRR
		elector = yes
		1987.1.1 = {
			monarch = {
				name = "Ysgramoor"
				dynasty = "the Returned"
				birth_date = 1945.1.1
			}
			add_country_modifier = {
				name = atmoran_holdings
				duration = -1
			}
		}
		2022.1.1 = {
			monarch = {
				name = "Ylgar"
				dynasty = "Ysgramoor"
				birth_date = 2000.1.1
			}
		}
		2108.1.1 = {
			monarch = {
				name = "Jurgar"
				dynasty = "Ysgramoor"
				birth_date = 2086.1.1
			}
		}
		2140.1.1 = {
			monarch = {
				name = "Oduvid"
				dynasty = "Ysgramoor"
				birth_date = 2110.1.1
			}
		}
		2209.1.1 = {
			monarch = {
				name = "Skavwulf"
				dynasty = "Ysgramoor"
				birth_date = 2209.1.1
			}
		}
		2240.1.1 = {
			monarch = {
				name = "Eistaag"
				dynasty = "Ysgramoor"
				birth_date = 2229.1.1
			}
		}
		2289.1.1 = {
			monarch = {
				name = "Rorygg"
				dynasty = "Ysgramoor"
				birth_date = 2259.1.1
			}
			add_country_modifier = {
				name = aegisbane
				duration = -1
			}
		}
		2350.1.1 = {
			monarch = {
				name = "Vigstrom"
				dynasty = "Ysgramoor"
				birth_date = 2320.1.1
			}
		}
		2409.1.1 = {
			monarch = {
				name = "Rald"
				dynasty = "Ysgramoor"
				birth_date = 2387.1.1
			}
		}
		2479.1.1 = {
			monarch = {
				name = "Volharth"
				dynasty = "Ysgramoor"
				birth_date = 2446.1.1
			}
		}
		2524.1.1 = {
			monarch = {
				name = "Jollring"
				dynasty = "Ysgramoor"
				birth_date = 2504.1.1
				adm = 4
				dip = 4
				mil = 4
			}
		}
		2500.1.1 = {
			country_event = {
				id = eastmarch.1
				days = (143*365)
			}
		}
	}
}
hre_defines:emperor := windhelm
new relation alliance = {
	first = JRR
	second = WND
	start_date = 2500.1.1
	end_date = 9999.1.1
}
new country hill-hammer = {
	inherit = nordic_country
	primary_culture = winterholdian
	tag = HIL
	name = "Hill-Hammer"
	adj = "Hill-Hammer"
	color = {
		84 51 34
	}
	capital = fellhammer
}
new country frost-flow = {
	inherit = nordic_country
	primary_culture = winterholdian
	tag = FRF
	name = "Frost-Flow"
	adj = "Frost-Flow"
	color = {
		93 176 211
	}
	capital = frostflow
}
new country silver-drift = {
	inherit = nordic_country
	primary_culture = palean
	tag = SID
	name = "Silver-Drift"
	adj = "Silver-Drift"
	color = {
		190 190 190
	}
	capital = freaold
}
new country nightgate = {
	inherit = nordic_country
	primary_culture = palean
	tag = NIG
	starting_reform = tier_1_thanedom
	name = "Nightgate"
	adj = "Nightgate"
	color = {
		136 63 112
	}
	capital = nightgate
}
new country white-watch = {
	inherit = nordic_country
	primary_culture = whiterunish
	tag = WHW
	name = "White-Watch"
	adj = "White-Watch"
	color = {
		255 255 255
	}
	capital = white_watch
}
new country heljarchen = {
	inherit = nordic_country
	primary_culture = palean
	tag = HEL
	name = "Heljarchen"
	adj = "Heljarchen"
	color = {
		255 158 48
	}
	capital = heljarchen
}
new country storm_fist = {
	inherit = nordic_country
	primary_culture = whiterunish
	tag = STF
	name = "Storm-Fist"
	adj = "Storm-Fist"
	color = {
		25 25 100
	}
	capital = silent_moons
}
new country black-moor = {
	inherit = nordic_country
	primary_culture = whiterunish
	tag = BCM
	name = "Black-Moor"
	adj = "Black-Moor"
	color = {
		10 10 10
	}
	history += {
		2568.1.1 = {
			monarch = {
				name = "Olf"
				dynasty = "Black-Moor"
				adm = 2
				dip = 2
				mil = 1
				birth_date = 2482.1.1
			}
			add_ruler_personality = infertile_personality
		}
	}
	capital = greymoor
}
new country shield-shade = {
	inherit = nordic_country
	primary_culture = whiterunish
	tag = SHS
	name = "Shield-Shade"
	adj = "Shield-Shade"
	color = {
		50 150 50
	}
	history += {
		2568.1.1 = {
			monarch = {
				name = "Olaf"
				dynasty = "Shield-Shade"
				adm = 2
				dip = 5
				mil = 2
				birth_date = 2509.1.1
			}
		}
	}
	capital = granitehill
}
new country bleak-wind = {
	inherit = nordic_country
	primary_culture = whiterunish
	tag = BLW
	name = "Bleak-Wind"
	adj = "Bleak-Wind"
	color = {
		48 63 47
	}
	capital = halted_stream
}
new country volunruud = {
	inherit = nordic_country
	primary_culture = palean
	starting_reform = tier_1_warrior_hold
	tag = VLR
	name = "Volunruud"
	adj = "Volunruud"
	color = {
		188 28 0
	}
	capital = volunruud
}
new country rannveig = {
	inherit = nordic_country
	primary_culture = hjaalmarcher
	tag = RAN
	starting_reform = tier_1_thanedom
	name = "Rannveig"
	adj = "Rannveig's"
	color = {
		0 0 50
	}
	capital = rannveigs_fast
}
new country shearpoint = {
	inherit = nordic_country
	primary_culture = palean
	tag = SHR
	starting_reform = tier_1_thanedom
	name = "Shearpoint"
	adj = "Shearpointish"
	color = {
		100 255 255
	}
	capital = shearpoint
}
new country skyborn = {
	inherit = nordic_country
	primary_culture = hjaalmarcher
	tag = SKB
	name = "Skyborn"
	adj = "Skyborn"
	color = {
		200 200 255
	}
	religion = the_old_ways
	capital = skyborn_altar
}
new country yorgrim = {
	inherit = nordic_country
	primary_culture = palean
	tag = YOR
	name = "Yorgrim"
	adj = "Yorgrim"
	color = {
		100 100 255
	}
	capital = shrouded_grove
}
new country fell-glow = {
	inherit = nordic_country
	primary_culture = palean
	tag = FEL
	name = "Fell-Glow"
	adj = "Fell-Glow"
	color = {
		0 100 0
	}
	capital = fellglow
}
new country hillgrund = {
	inherit = nordic_country
	primary_culture = eastmarcher
	tag = HID
	name = "Hillgrund"
	adj = "Hillgrund"
	color = {
		255 140 25
	}
	capital = hillgrunds_steading
}
new country cradlecrush = {
	inherit = nordic_country
	primary_culture = eastmarcher
	tag = CRA
	name = "Cradlecrush"
	adj = "Cradlecrush"
	color = {
		153 0 0
	}
	capital = cradlecrush
}
new country dark-water = {
	inherit = nordic_country
	primary_culture = eastmarcher
	tag = DAR
	name = "Dark-Water"
	adj = "Dark-Water"
	color = {
		25 25 50
	}
	capital = darkwater_crossing
}
new country mist-watch = {
	inherit = nordic_country
	primary_culture = eastmarcher
	tag = MIS
	name = "Mist-Watch"
	adj = "Mist-Watch"
	color = {
		255 251 230
	}
	capital = mistwatch
}
new country north-wind = {
	inherit = nordic_country
	primary_culture = eastmarcher
	tag = NOW
	name = "North-Wind"
	adj = "North-Wind"
	color = {
		200 220 220
	}
	capital = ansilvund
}
new country cronvangr = {
	inherit = nordic_country
	primary_culture = eastmarcher
	tag = CRV
	name = "Cronvangr"
	adj = "Cronvangr"
	color = {
		102 0 34
	}
	capital = cronvangr
}
new country kynesgrove = {
	inherit = nordic_country
	primary_culture = eastmarcher
	tag = KYN
	name = "Kynesgrove"
	adj = "Kynesgrove"
	color = {
		128 212 255
	}
	capital = kynesgrove
}
new country iron-bind = {
	inherit = nordic_country
	primary_culture = palean
	tag = IRB
	name = "Iron-Bind"
	adj = "Iron-Bind"
	color = {
		255 180 220
	}
	capital = ironbind_barrow
}
new country yngvild = {
	inherit = nordic_country
	primary_culture = winterholdian
	tag = YNG
	starting_reform = tier_1_thanedom
	name = "Yngvild"
	adj = "Yngvild"
	color = {
		100 0 50
	}
	capital = yngvild
}
new country cragwallow = {
	inherit = nordic_country
	primary_culture = eastmarcher
	starting_reform = tier_1_thanedom
	tag = CRW
	name = "Cragwallow"
	adj = "Cragwallow"
	color = {
		225 255 77
	}
	capital = cragwallow
}
new country anthor = {
	inherit = nordic_country
	primary_culture = winterholdian
	tag = ANT
	starting_reform = tier_1_thanedom
	name = "Anthor"
	adj = "Anthor"
	color = {
		183 100 75
	}
	capital = anthor_peak
}
new country saarthal = {
	inherit = nordic_country
	primary_culture = winterholdian
	tag = SAA
	starting_reform = tier_1_thanedom
	name = "Saarthal"
	adj = "Saarthal"
	color = {
		255 255 255
	}
	capital = saarthal
}
new country snow-veil = {
	inherit = nordic_country
	primary_culture = winterholdian
	tag = SNV
	name = "Snow-Veil"
	adj = "Snow-Veil"
	color = {
		0 100 150
	}
	capital = snow_veil_sanctum
}
new country bleak-coast = {
	inherit = nordic_country
	primary_culture = winterholdian
	tag = BLK
	name = "Bleak-Coast"
	adj = "Bleak-Coast"
	color = {
		0 40 51
	}
	capital = bleakcoast
}
new country sky-temple = {
	inherit = nordic_country
	primary_culture = winterholdian
	tag = SKT
	name = "Sky-Temple"
	adj = "Sky-Temple"
	color = {
		179 255 229
	}
	capital = skytemple
}
new country winterhold = {
	inherit = nordic_country
	primary_culture = winterholdian
	tag = WIH
	starting_reform = tier_1_thanedom
	name = "Winterhold"
	adj = "Winterhold"
	color = {
		0 213 255
	}
	capital = winterhold
}
new country shadow-green = {
	inherit = nordic_country
	primary_culture = haafingarian
	tag = SHD
	name = "Shadow-Green"
	adj = "Shadow-Green"
	color = {
		0 50 0
	}
	capital = shadowgreen
}
