new idea_group whiterun_ideas = {
	name = "Whiterun"
	category = national
	start = {
		global_own_trade_power = 0.15
		infantry_power = 0.10
	}
	bonus = {
		governing_capacity_modifier = 0.15
	}
	trigger = {
		tag = whiterun
	}
	ideas = {
		{
			name = "Jorrvaskr Landing"
			desc = "The first to disembark Ysgramor's grand fleet was Jeek of the River and his companions of the Jorrvaskr. They moved south into the modern-day tundra in central Skyrim where the crew member, Jonder the Tiny discovered a mysterious monument with a bird figurehead lit by fire. With no elven settlement in sight, the Jorrvaskr descended from the mountains, coming to the conclusion that this monument was older than the elves, driving magic older than Nirn. The crew of Jorrvaskr settled next to the Skyforge and turned their old ship into a mead hall."
			modifier = {
				mercenary_cost = -0.15
				merc_maintenance_modifier = -0.15
			}
		}
		{
			name = "Skyforge"
			desc = "The forge is known for producing Skyforge Steel. It is said that the souls of ancient Nordic heroes are what give Skyforge Steel its strength. The Companions traditionally hold funeral pyres on the forge; following the funeral of a great hero, the Skyforge has been known to 'awaken' and allow high quality metal to be forged, equivalent to that produced by the ancient Nords."
			modifier = {
				shock_damage = 0.10
				shock_damage_received = -0.05
			}
		}
		{
			name = "Gildergreen"
			desc = "The Gildergreen, planted during the early days of the settlement, was grown from a cutting or seeding (accounts vary) taken from the ancient Eldergleam, one of the oldest living things in Tamriel, located in a cave in Eastmarch. Even its name is an echo of the mother tree. Worshippers of Kynareth could sense something holy in it, and since then many pilgrims have traveled to Whiterun to hear the goddess's wind blow through its branches."
			modifier = {
				global_unrest = -1
				tolerance_own = 2
			}
		}
		{
			name = "Dragonsreach"
			desc = "King Olaf One-Eye was a First Era Nord Jarl of Whiterun famous for imprisoning the Dragon Numinex within his palace, which was dubbed Dragonsreach in honor of this feat. Olaf purportedly confronted the dragon with some of his troops on top of Mount Anthor, where he used the Thu'um to aid him in a duel which ended in Numinex's defeat. Olaf then conveyed the dragon back to Whiterun where he imprisoned it in his castle. Numinex was purportedly imprisoned there until his death."
			modifier = {
				diplomatic_reputation = 2
			}
		}
		{
			name = "Grey-Mane or Battleborn"
			desc = "We were two of the city's oldest an' most-respected clans, an' we could trace our histories all the way back to Ysgramor's companions. There's no more bitter enemy than an old friend."
			modifier = {
				all_estate_loyalty_equilibrium = 0.10
				production_efficiency = 0.10
			}
		}
		{
			name = "Heart of Skyrim"
			desc = "Whiterun is one of the nine major cities in the province of Skyrim, serving as the capital of Whiterun Hold and its vast open tundra. It is found in the heart of Skyrim, and because of this, it is the center of trade across the province. It has been described as the Imperial City of Skyrim."
			modifier = {
				trade_steering = 0.25
			}
		}
		{
			name = "High Kings of Skyrim"
			desc = "In practice, the city where the High King resided also served as the capital of Skyrim. This has changed over the course of centuries, and at times of division there was more than one capital city."
			modifier = {
				imperial_authority = 0.10
				army_tradition_from_battle = 0.25
			}
		}
	}
}