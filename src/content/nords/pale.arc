new idea_group pale_ideas = {
	name = "Pale"
	category = national
	start = {
		caravan_power = 0.20
		galley_cost = -0.15
	}
	bonus = {
		dip_advisor_cost = -0.25
	}
	trigger = {
		OR = {
			tag = dawn_star
			tag = pale
		}
	}
	ideas = {
		{
			name = "Pieces of the Past"
			desc = "The Pale has a complicated history in regards to daedric worship around Mehrunes Dagon as it pertains to one of Dawnstar's oldest families, the Vesuius Imperials. In their time, they were influential traders but underneath that visage, they were faithful servants of the Daedric Prince. One member was even chosen to assassinate Emperor Uriel Septim VII. The Oblivion Crisis broke out soon after and although it ended within the year, the destruction resonated within everyone and the Vesuius family hid their true involvement in the conflict. That was until their secret came out well after the crisis and they became outcasts ever since."
			modifier = {
				land_morale = -0.10
				shock_damage = 0.15
			}
		}
		{
			name = "Dawnstar Sanctuary"
			desc = "It was one of the first Dark Brotherhood sanctuaries in Skyrim, but it has been abandoned for nearly a hundred years. So they say."
			modifier = {
				spy_offence = 0.25
				claim_duration = 0.25
			}
		}
		{
			name = "Shearpoint"
			desc = "Modir the Far raised this stone in his brother's memory, Oskar the Fool, whose voice was weak and not the mighty Shout of his clan."
			modifier = {
				fire_damage = 0.10
				recover_army_morale_speed = -0.05
			}
		}
		{
			name = "Ice Tribes"
			desc = "Circa 3E 427, the Ice Tribes inhabiting the areas outside of Dawnstar had raided the settlement. One of Vinticae's four champions had secretly set the Ice Tribes upon the town. With the help of the oracle/healer Eustacia, the Hero interrogated the champions. Once the Hero exposed the true traitor, the Ice Tribes and their allies began their final assault upon Dawnstar. With the aid of the three loyal champions and the power of Starfrost, the Hero slayed the Ice Tribes, concluding the battle with the defeat of the Gehenoth Thriceborn."
			modifier = {
				harsh_treatment_cost = -0.33
			}
		}
		{
			name = "Vigil of Stendarr"
			desc = "Stendarr's Mercy be upon you, for the Vigil has none to spare."
			modifier = {
				global_unrest = -2
			}
		}
		{
			name = "Nightcaller Temple"
			desc = "Originally a military fort that was later abandoned, it was subsequently occupied by worshippers of Vaermina. At some point after these Daedric devotees occupied the tower, an Orc war party attacked, intending to destroy the Skull of Corruption which had inflicted them with terrible nightmares. Unable to fend off the Orcs, and in a last-ditch effort to protect the artifact, the worshippers released the Miasma, a gas that put everyone inside to sleep, and the temple fell into ruin once more."
			modifier = {
				yearly_corruption = 0.05
				global_missionary_strength = 0.025
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