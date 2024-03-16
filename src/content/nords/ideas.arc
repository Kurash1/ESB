new idea_group nordic_ideas = {
	name = "Nordic"
	category = national
	priority = 10
	start = {
		infantry_cost = -20%
		leader_land_shock = 1
	}
	bonus = {
		may_perform_slave_raid = yes
	}
	trigger = {
		culture_group = nord
	}
	ideas = {
		{
			name = "Resilient Warriors"
			desc = "Nords are infamous for their stubbornness and ferocity, making them some of the fiercest warriors in all Tamriel."
			modifier = {
				land_morale = 10%
			}
		}
		{
			name = "Sword-maidens"
			desc = "'What's the matter? You can't stand the sight of a strong Nord woman?'\n—Olfina Gray-Mane, 4E 201\n"
			modifier = {
				global_manpower_modifier = 10%
			}
		}
		{
			name = "Arctic Homeland"
			desc = "Skyrim, the home of the Nords, is a harsh land with soaring peaks, icy rivers, and frozen tundra. Anyone who deigns to live there must be of a certain sturdy stock, and woe to the outsider who is unaccustomed to the brutal climate."
			modifier = {
				land_attrition = -15%
				hostile_attrition = 25%
			}
		}
		{
			name = "Kyne, Goddess of the Storm"
			desc = "Kyne is the chief deity of the Nordic Pantheon. She is associated with the wind and rain - be it a summer's breeze or a spring shower, or a terrible storm that leaves destruction in its wake."
			modifier = {
				infantry_shock = 15%
			}
		}
		{
			name = "Mead Halls"
			desc = "The mead hall is a cornerstone of Nordic culture; A place to warm up, get drunk and listen to stories of the great heroes of old."
			modifier = {
				idea_cost = -2.5%
			}
		}
		{
			name = "Ysgramor's Fleet"
			desc = "Late in the Merethic Era, the hero Ysgramor led a contingent of Atmorans - the fabled Five-Hundred Companions - to exact revenge on the elves who slaughtered his kin, and to build a new home on the Tamriel mainland. His fleet consisted of infamous ships like the Jorrvaskr, the Fallowfire, and the Ylgermet, and their equally infamous crews and captains. These heroes of yore built a kingdom on top of Elven corpses, and laid the foundations of Skyrim as it is known today."
			modifier = {
				naval_morale = 10%
			}
		}
		{
			name = "Sovngarde"
			desc = "Nords believe that after they die a glorious death in battle, their ancestors await them in Sovngarde - a mythical realm of feasting, merrymaking, and heroic feats."
			modifier = {
				global_unrest = -2
			}
		}
	}
}