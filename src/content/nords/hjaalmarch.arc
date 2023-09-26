new idea_group hjaalmarch_ideas = {
	name = "Hjaalmarch"
	category = national
	start = {
		caravan_power = 0.20
		galley_cost = -0.15
	}
	bonus = {
		defensiveness = 0.15
	}
	trigger = {
		tag = hjaalmarch
	}
	ideas = {
		{
			name = "Minotaur Nord Lord"
			desc = "Morthal is said to be named after the great minotaur Morihaus, though none are sure of the connection."
			modifier = {
				general_cost = -0.25
			}
		}
		{
			name = "Drajkmyr"
			desc = "The Drajkmyr is an immense saltwater marsh, formed by the estuaries of the River Karth and the River Hjaal. Largely uninhabited, it is cloaked in an eerie mist."
			modifier = {
				attack_bonus_in_capital_terrain = 1
				development_cost = 0.10
			}
		}
		{
			name = "The Pale Lady"
			desc = "There is a legend told in Morthal about the Pale Lady, a ghostly lady that wanders northern Drajkmyr to find her lost daughter and some say that she takes children that stray too far from home."
			modifier = {
				global_autonomy = -0.075
			}
		}
		{
			name = "Ustengrav"
			desc = "Ustengrav is an ancient Nordic barrow located on the northeast edge of the Drajkmyr marshlands, it is the site of a Word Wall and the burial place of Jurgen Windcaller, the founder of the Greybeards."
			modifier = {
				army_tradition_decay = -0.02
			}
		}
		{
			name = "Low Taxes"
			desc = "Hjaalmarch has the lowest taxes of the nine holds, but it is also the poorest hold."
			modifier = {
				global_tax_modifier = -0.15
				production_efficiency = 0.25
			}
		}
		{
			name = "Wispmothers"
			desc = "Some say they are ghosts, waiting to be laid to rest. Others, that they are all that remains of the Snow Elves who once ruled Skyrim. Some say they are native to Hjaalmarch, but other tales mention them in forgotten places, on mountaintops as far away as the Jeralls."
			modifier = {
				governing_cost = -0.15
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