foreach kvp in ::countries = {
	kvp:value:tag = `"countries/{kvp:value:tag}.txt"`
	
	save `target/common/countries/{kvp:value:tag}.txt` = {
		graphical_culture = kvp:value:graphical_culture
		color = { kvp:value:color }
		historical_idea_groups = {
			kvp:value:historical_idea_groups
		}

		historical_units = {
			kvp:value:historical_units
		}

		monarch_names = {
			kvp:value:monarch_names
		}

		leader_names = {
			kvp:value:leader_names
		}

		ship_names = {
			kvp:value:ship_names
		}

		army_names = {
			kvp:value:army_names
		}

		fleet_names = {
			kvp:value:fleet_names
		}
		
		kvp:value:country
	}
	save `target/history/countries/{kvp:value:tag}.txt` = {
		government = kvp:value:government
		government_rank = kvp:value:government_rank
		mercantilism = kvp:value:mercantilism
		technology_group = kvp:value:technology_group
		religion = kvp:value:religion
		primary_culture = kvp:value:primary_culture
		capital = kvp:value:capital:id
		
		kvp:value:history
	}
	
}