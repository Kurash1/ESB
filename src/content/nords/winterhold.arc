new idea_group winterhold_ideas = {
	name = "Winterhold"
	category = national
	start = {
		hostile_attrition = 1
		leader_land_shock = 2
	}
	bonus = {
		naval_morale = 0.15
	}
	trigger = {
		tag = winterhold
	}
	ideas = {
		{
			name = "Saarthal"
			desc = "Saarthal was the first city built in Skyrim after the arrival of Nords from Atmora sometime in the middle of the Merethic Era. Saarthal was also the first capital of Nord civilization in Tamriel, as well as the largest of the ancient Nordic cities. The city was destroyed late in the Merethic Era by the Snow Elves, and then rebuilt by Ysgramor after he retook the city."
			modifier = {
				development_cost = -0.1
			}
		}
		{
			name = "Atmoran Tradition"
			desc = "The people of the Old Holds stay true to ancient Atmoran tradition and outsiders can be a rarity. At the dead of winter, Nordic youth will travel to places such as Serpentstone Isle to kill an ice wraith and earn their citizenship."
			modifier = {
				shock_damage = 0.15
			}
		}
		{
			name = "Fisher People"
			desc = "The Nords of Winterhold are simple fisherfolk and mostly work on the Sea of Ghosts since there is little pasture for grazing and the cold winds prove brutal for livestock."
			modifier = {
				production_efficiency = 0.1
				sailors_recovery_speed = 0.25
			}
		}
		{
			name = "Night of Tears"
			desc = "The Night of Tears is the night an Elven force attacked and burned the first human city of Skyrim, Saarthal, built by the first Nordic inhabitants. In retaliation, Ysgramor, the leader of the human colonization effort and the founder of the Companions, drove the elves out of Solstheim and Skyrim."
			modifier = {
				morale_damage = 0.1
			}
		}
		{
			name = "Ysgramor's Tomb"
			desc = "Ysgramor's death was met with great sorrow and mourning among his kin, and the news quickly spread across Tamriel. Although a grand tomb was built for him beneath Windhelm in preparation for his passing, Ysgramor instead chose to be buried with his most trusted generals in a barrow on the northern shores of Skyrim, facing towards Atmora."
			modifier = {
				prestige = 1
			}
		}
		{
			name = "Arch-mage Shalidor"
			desc = "Arch-Mage Shalidor was an immensely powerful wizard in the First Era who had an understanding of magic few have ever matched, and his numerous but scattered writings are highly sought after. There are many legends surrounding Shalidor's life, such as how he built the city of Winterhold with a whispered spell, built the great Ice Fortress of Winterhold, how he stole the secret of life from Akatosh, and how he single-handedly fought against the Dwemer legions of clan Rourken at the Battle of Rourken-Shalidor (in which he bore his Spellmirror into battle) circa 1E 420. Many of these stories are believed to be hyperbole or outright fabrications. Shalidor stood at the forefront of a movement to enact higher standards among mages, and to discourage spell use among the common castes. This effort is dubiously credited with the original organization and formation of the schools of magic (Vanus Galerion is more often credited with doing this) and the foundation of the College of Winterhold."
			modifier = {
				monthly_magicka = 0.5
			}
		}
		{
			name = "College of Winterhold"
			desc = "One of the region's most noteworthy landmarks is the College of Winterhold, the province's premier school of magic and center of both academia and arcana."
			modifier = {
				idea_cost = -0.05
			}
		}
	}
}