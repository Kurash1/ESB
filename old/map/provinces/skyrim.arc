::superregion s@skyrim = {
	name = "Skyrim"
}

::region r@rift = {
	name = "Rift"
	superregion = s@skyrim
}

::area a@fallowstone = {
	name = "Fallowstone"
	region = r@rift
}
::province p@fallowstone_cave = { #1266
	name = "Fallowstone Cave"
	color = { 112 150 234 }
	area = a@fallowstone
	history = {
		religion = dragon_cult
		culture = nord
		hre = no
		base_tax = 1
		base_production = 1
		trade_goods = unknown
		base_manpower = 1
		capital = ""
		is_city = yes
		owner = FOR
		controller = FOR
		add_core = FOR
	}
}
::province p@lost_prospect_mine = { #7081
	name = "Lost Prospect Mine"
	color = { 224 112 137 }
	area = a@fallowstone
	history = {
		religion = dragon_cult
		culture = nord
		hre = no
		base_tax = 1
		base_production = 1
		trade_goods = unknown
		base_manpower = 1
		capital = ""
		is_city = yes
		owner = FOR
		controller = FOR
		add_core = FOR
		keep = yes
	}
}
::area a@rift_pass = {
	name = "Rift Pass"
	region = r@rift
}
::province p@black_briar = { #1264
	name = "Black-Briar"
	color = { 159 123 161 }
	area = a@rift_pass
	history = {
		religion = dragon_cult
		culture = nord
		hre = no
		base_tax = 1
		base_production = 1
		trade_goods = unknown
		base_manpower = 1
		capital = ""
		is_city = yes
		owner = FOR
		controller = FOR
		add_core = FOR
	}
}
::province p@rift_gate = { #5892
	name = "Rift Gate"
	color = { 136 113 155 }
	area = a@rift_pass
	history = {
		owner = FOR
		controller = FOR
		add_core = FOR
		religion = dragon_cult
		culture = nord
		hre = no
		base_tax = 2
		base_production = 2
		trade_goods = unknown
		base_manpower = 2
		capital = ""
		is_city = yes
		keep = yes
	}   
}
::province p@dayspring = { #3121
	name = "Dayspring"
	color = { 102 127 114 }
	area = a@rift_pass
	history = {
		religion = dragon_cult
		culture = nord
		hre = no
		base_tax = 2
		base_production = 2
		trade_goods = unknown
		base_manpower = 1
		capital = ""
		is_city = yes
		owner = FOR
		controller = FOR
		add_core = FOR
	}
} 
::province p@forelhost_shade = { #3119
	name = "Forelhost Shade"
	color = { 217 131 169 }
	area = a@rift_pass
	history = {
		religion = dragon_cult
		culture = nord
		hre = no
		base_tax = 1
		base_production = 3
		trade_goods = unknown
		base_manpower = 2
		capital = ""
		is_city = yes
		owner = FOR
		controller = FOR
		add_core = FOR
	}
}
::area a@snow_shod = {
	name = "Snow Shod"
	region = r@rift
}
::province p@snow_shod = { #1282
	name = "Snow-Shod"
	color = { 253 249 224 }
	area = a@snow_shod
	history = {
		religion = snow_elves_pantheon
		culture = snow_elven
		hre = no
		base_tax = 3
		base_production = 3
		trade_goods = unknown
		base_manpower = 3
		capital = ""
		is_city = yes
		owner = HON
		controller = HON
		add_core = HON
	}
}
::province p@crystal_drift = { #3125
	name = "Crystal Drift"
	color = { 167 229 215 }
	area = a@snow_shod
	history = {
		religion = snow_elves_pantheon
		culture = snow_elven
		hre = no
		base_tax = 1
		base_production = 1
		trade_goods = unknown
		base_manpower = 1
		capital = ""
		is_city = yes
		owner = HON
		controller = HON
		add_core = HON
	}
}
::province p@south_honrich_coast = { #3122
	name = "South Honrich Coast"
	color = { 221 206 170 }
	area = a@snow_shod
	history = {
		religion = snow_elves_pantheon
		culture = snow_elven
		hre = no
		base_tax = 1
		base_production = 1
		trade_goods = unknown
		base_manpower = 1
		capital = ""
		is_city = yes
		owner = HON
		controller = HON
		add_core = HON
	}
} 
::province p@darklight_tower = { #7093
	name = "Darklight Tower"
	color = { 242 222 223 }
	area = a@snow_shod
	history = {
		religion = snow_elves_pantheon
		culture = snow_elven
		hre = no
		base_tax = 2
		base_production = 2
		trade_goods = unknown
		base_manpower = 2
		capital = ""
		is_city = yes
		owner = HON
		controller = HON
		add_core = HON
	}
}
::area a@forelhost = {
	name = "Forelhost"
	region = r@rift
}
::province p@mount_forelhost = { #1531
	name = "Mount Forelhost"
	color = { 28 19 13 }
	history = {
		
	}
    impassible = yes
}
::province p@forelhost = { #3112
	name = "Forelhost"
	color = { 139 234 219 }
	terrain = mountain
	area = a@forelhost
	history = {
		owner = FOR
		controller = FOR
		add_core = FOR
		religion = dragon_cult
		culture = nord
		hre = no
		base_tax = 6
		base_production = 5
		trade_goods = unknown
		base_manpower = 10
		capital = ""
		is_city = yes
		castle = yes
	}
}
defineloc skyrim_shadow_stone = "Da Shadow Stone"
definemod skyrim_shadow_stone = {
	local_hostile_movement_speed = -0.5
	local_friendly_movement_speed = -0.5
	spy_offence = 0.1
}
::province p@shadow_stone = { #7091
	name = "Shadow Stone"
	color = { 117 131 222 }
	area = a@forelhost
	history = {
		religion = dragon_cult
		culture = nord
		hre = no
		base_tax = 3
		base_production = 3
		trade_goods = unknown
		base_manpower = 3
		capital = ""
		is_city = yes
		owner = FOR
		controller = FOR
		add_core = FOR
		add_permanent_province_modifier = { 
			name = skyrim_shadow_stone
			duration = -1
		} 
		keep = yes
	}
}
::province p@lost_tongue_shade = { #3123
	name = "Lost Tongue Shade"
	color = { 220 158 206 }
	area = a@forelhost
	history = {
		religion = dragon_cult
		culture = nord
		hre = no
		base_tax = 3
		base_production = 3
		trade_goods = unknown
		base_manpower = 3
		capital = ""
		is_city = yes
		owner = FOR
		controller = FOR
		add_core = FOR
	}
}
::province p@broken_helm_hollow = { #3124
	name = "Broken Helm Hollow"
	color = { 240 186 245 }
	area = a@forelhost
	history = {
		religion = dragon_cult
		culture = nord
		hre = no
		base_tax = 2
		base_production = 2
		trade_goods = unknown
		base_manpower = 2
		capital = ""
		is_city = yes
		owner = FOR
		controller = FOR
		add_core = FOR
	}
}
::area a@riften = {
	name = "Riften"
	region = r@rift
}
::province p@riften = { #3127
	name = "Riften"
	color = { 201 189 114 }
	area = a@riften
	history = {
		religion = snow_elves_pantheon
		culture = snow_elven
		hre = no
		base_tax = 5
		base_production = 7
		base_manpower = 6
		trade_goods = unknown
		capital = "Riften lies on the shore of Lake Honrich, and is surrounded by the expansive Rift Forest. The Rift, enjoys a relatively temperate climate compared to the other Old Holds, thus much of the land surrounding Riften is farmland."
		is_city = yes
		owner = HON
		controller = HON
		add_core = HON
	}
}
::province p@nightingale_hall = { #1269
	name = "Nightingale Hall"
	color = { 223 120 170 }
	area = a@riften
	history = {
		religion = snow_elves_pantheon
		culture = snow_elven
		hre = no
		base_tax = 3
		base_production = 3
		trade_goods = unknown
		base_manpower = 3
		capital = ""
		is_city = yes
		owner = HON
		controller = HON
		add_core = HON
	}
}
::province p@east_honrich_pass = { #3138
	name = "East Honrich Pass"
	color = { 109 252 208 }
	area = a@riften
	history = {
		religion = dragon_cult
		culture = nord
		hre = no
		base_tax = 1
		base_production = 1
		trade_goods = unknown
		base_manpower = 1
		capital = ""
		is_city = yes
		owner = FOR
		controller = FOR
		add_core = FOR
	}
}