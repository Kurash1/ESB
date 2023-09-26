new idea_group haafingar_ideas = {
	name = "Haafingar"
	category = national
	start = {
		global_trade_power = 0.15
		land_morale = 0.10
	}
	bonus = {
		liberty_desire_from_subject_development = -0.33
	}
	trigger = {
		OR = {
			tag = solitude
			tag = haafingar
		}
	}
	ideas = {
		{
			name = "The Great Arch"
			desc = "Solitude is one of Skyrim's largest cities, as well as one of its key ports, built on a natural landmark known as the Great Arch. This arch proved vital in Solitude's growth as a kingdom. In its later years, the main city was built atop of this arch while the busier-sections of Solitude, such as the crowded harbors on the coast are built underneath, next to the Karth River."
			modifier = {
				defensiveness = 0.15
			}
		}
		{
			name = "Bards College"
			desc = "The Bards College is well-known throughout the province as a prominent institute of music and history for the aspiring bard, or the Skald as they are known in Skyrim. Students of the Bards College are known to be well-trained and successful in their business. More often than not, a former student of the Bards College are employed in various noble households and have even entertained the Elder Council of the Imperial City."
			modifier = {
				advisor_cost = -0.15
				monthly_splendor = 2
			}
		}
		{
			name = "The Wolf-Queen"
			desc = "Potema was scheming to obtain the throne for herself and her son, Uriel. Her schemes resulted in a civil war known as the War of the Red Diamond, the name coming from the symbol of the Imperial family. In early surprise attacks, Skyrim and High Rock were easily defeated by the force of Queen Potema. The war was highly contested, but was abruptly decided by the death of Potema's claimant, Uriel III, in 3E 127. While the end of the succession crisis ostensibly brought an end to the conflict, Potema held out in Solitude with an undead army for another decade."
			modifier = {
				reinforce_cost_modifier = -0.10
				land_maintenance_modifier = -0.10
			}
		}
		{
			name = "Temple of the Divines"
			desc = "The cults combine the worship of the Nine Divines: the Aedra Akatosh, Dibella, Arkay, Zenithar, Mara, Stendarr, Kynareth, and Julianos, and the Talos Cult, veneration of the divine god-hero Tiber Septim, founder and patron of the Empire."
			modifier = {
				tolerance_own = 1
				global_missionary_strength = 0.02
			}
		}
		{
			name = "Coterie of Organized Scholars"
			desc = "Coterie of Organized Scholars was an organized institution devoted to scholarly pursuits in the kingdom of Western Skyrim, and the second oldest academic institution in the region after the Bards College. Due to a charter issued by the High King, they were granted the exclusive right to pursue their research in the Western Holds."
			modifier = {
				reform_progress_growth = 0.25
			}
		}
		{
			name = "Ghost Sea Exit"
			desc = "The deep waters are able to accommodate large merchant ships, however the Sea of Ghosts is not easy to navigate. It took some time for the people of Tamriel to explore these misty waters, which are often riddled with glaciers and icebergs."
			modifier = {
				ship_durability = 0.05
				light_ship_power = 0.15
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