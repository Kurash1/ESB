new idea_group orc_ideas = {
	name = "Orcish"
	trigger = {
		culture_group = orc
	}
	category = national
	start = {
		monarch_military_power = 2
		infantry_cost = -0.2
	}
	bonus = {
		vassal_forcelimit_bonus = 0.25
	}
	ideas = {
		{
			name = "Gift of Strength"
			desc = "'No one bests an Orc!'
Compared to the other races of Tamriel, Orcs are blessed with a towering physique and fearsome strength."
			modifier = {
				infantry_power = 0.10
			}
		}
		{
			name = "Orcish Smithing"
			desc = "Orichalcum (also called Orichalc) is a greyish-green metal used primarily to make weapons and armour. Orcs are famed for their use of this metal, with some comparing its qualities to the Orcs themselves - green, exceptionally rigid, stronger than steel, and extremely temperamental"
			modifier = {
				shock_damage_received = -0.10
				fire_damage_received = -0.10
			}
		}
		{
			name = "Mauloch, the Orc-Father"
			desc = "God of curses, hear my prayer!
Lord of the betrayed, give me strength!
Keeper of the grudge, harden my heart!
Holder of the broken promises, ignite my anguish!
Master of the sworn oath, grant me the ferocity to overcome my enemies!
Malacath, hear my prayer!
— Prayer to the Furious One"
			modifier = {
				prestige_from_land = 1
			}
		}
		{
			name = "A Diamond in the Rough"
			desc = "It is true that Orcs highly value 'brutish' qualities like strength and prowess in combat, but what is often forgotten is their capacity for gentleness and an appreciation of what little beauty their lives of hardship allow for."
			modifier = {
				reform_progress_growth = 0.10
			}
		}
		{
			name = "Orcish Industry"
			desc = "Partially owning to their innate skill as smiths and metalworkers, and partially to their propensity for settling in mineral-rich mountainous areas, Orcs are unrivalled in their ability to produce quality manufactured goods."
			modifier = {
				production_efficiency = 0.2
			}
		}
		{
			name = "Warrior Society"
			desc = "All Orcs - both male and female - are expected to know how to fight in order to defend their homeland from the outsiders who would dare try to take away their sovereignty."
			modifier = {
				global_manpower_modifier = 0.10
				army_tradition = 0.25
			}
		}
		{
			name = "The Tilted Square"
			desc = "The Tilted Square was a philosophical amalgamation of the teachings of Malacath with their representations as sacred geometric shapes. Embedded in the concept of the Titled Square are notions of stability and trust, juxtaposed with their counterparts - instability and betrayal."
			modifier = {
				stability_cost_modifier = -0.2
				build_cost = -0.1
			}
		}
	}
}