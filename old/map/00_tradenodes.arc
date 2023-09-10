trade_node_null = {
	location = 1
	end = yes
	members = {
		foreach kvp in ::provinces = {
			where = {	
				OR = {
					NOT = {
						var_exists = kvp:value:sea
					}
					kvp:value:sea = no
				}
				OR = {
					NOT = {
						var_exists = kvp:value:lake
					}
					kvp:value:lake = no
				}
				OR = {
					NOT = {
						var_exists = kvp:value:impassible
					}
					kvp:value:impassible = no
				}
			}
			kvp:value:id
		}
	}
}