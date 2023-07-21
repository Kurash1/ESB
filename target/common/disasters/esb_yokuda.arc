quick_event = {
	alias = crisis_start
	type = country
	defineloc crisis_start.title = "Assassination of Ahmur At-Taleskan"
	defineloc crisis_start.desc = "Taleskan is in turmoil after the assassination of King Ahmur At-Taleskan. Four factions are vying for control of the kingdom, each with their own vision for the future of Taleskan.\n\nKhud At-Taleskan is a skilled leader and warrior who claims to be the rightful heir to the throne. His supporters believe that he is the best choice to lead Taleskan into a bright future, but critics argue that his legitimacy is in question due to King Ahmur's refusal to acknowledge him as his successor.\n\nDerik Af-Taleskan is a powerful warrior who will stop at nothing to conquer Taleskan. He has brought peace and stability to his own region, but his methods have been criticized as oppressive and tyrannical. Derik's supporters believe that he is the strong leader that Taleskan needs to protect its citizens from attack.\n\nSia Al-Hodana is a well-known merchant and leader of a large mercenary army. He is known for his economic and military savvy, but his critics claim that he is corrupt and only interested in power. Sia's supporters argue that he is a great leader who can handle any situation that arises.\n\nFarsh Aj-Kayam is a charismatic leader and mystic who has rallied the lower class citizens of the city to his cause. He has promised them a better future and has built a cult of followers who believe in his vision for a new Taleskan. Farsh hopes to overthrow the current regime and bring about a religious revolution."
	title = crisis_start.title
	desc = crisis_start.desc
	picture = ES_DEATH_OF_MONARCH_eventPicture	
	is_triggered_only = yes
	
	immediate = {
		hidden_effect = {
			remove_heir = { allow_new_heir = no }
			define_ruler = {
				name = "Taleskani Council"
				adm = 3
				dip = 3
				mil = 3
				fixed = yes
				regency = yes
			}
			set_ruler_flag = forced_regency
			defineloc taleskan_khud = "Khud's Influence"
			set_variable = {
				which = taleskan_khud
				value = 50
			}
			defineloc taleskan_derik = "Derik's Influence"
			set_variable = {
				which = taleskan_derik
				value = 60
			}
			defineloc taleskan_sia = "Sia's Influence"
			set_variable = {
				which = taleskan_sia
				value = 40
			}
			defineloc taleskan_farsh = "Farsh's Influence"
			set_variable = {
				which = taleskan_farsh
				value = 20
			}
		}
	}
	
	option = {
		defineloc crisis_start.a = "What will happen now"
		name = crisis_start.a
	}
}

taleskan_succession_crisis = {
	defineloc taleskan_succession_crisis      = "Taleskani Succession Crisis"
	defineloc desc_taleskan_succession_crisis = ""
	definegfx = {
		name = "GFX_disaster_taleskan_succession_crisis"
		texturefile = "gfx//interface//disasters//disaster_icon_taleskani_succsession_crisis.dds"
		noOfFrames = 3
		loadType = "INGAME"
	}
	potential = {
		tag = TAL
		NOT = {
			has_country_flag = taleskan_succession_crisis_end
		}
	}
	can_start = {
		always = yes
	}
	can_stop = {
		always = no
	}

	progress = {
		modifier = {
			factor = 100
			always = yes
		}
	}
	
	can_end = {
		calc_true_if = {
			NOT = {
				check_variable = {
					which = taleskan_khud
					value = 1
				}
			}
			NOT = {
				check_variable = {
					which = taleskan_derik
					value = 1
				}
			}
			NOT = {
				check_variable = {
					which = taleskan_sia
					value = 1
				}
			}
			NOT = {
				check_variable = {
					which = taleskan_farsh
					value = 1
				}
			}
			amount = 3
		}
	}
	
	on_monthly = {
		random_events = {
			5 = 0
			1 = taleskan_disaster.1
		}
	}
	
	on_start = crisis_start
	
	modifier = {
		
	}
}
