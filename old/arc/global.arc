object ::provinces = { }
interface ::province = {
	type name = string
	block color = { }
	block history = { }
	bool impassible = no
	bool sea = no
	bool lake = no
	string terrain = null #soft
}

object ::areas = { }
interface ::area = {
	type name = string
	list provinces = ::province[] { }
}

object ::regions = { }
interface ::region = {
	type name = string
	list areas = ::area[] { }
}

object ::superregions = { }
interface ::superregion = {
	type name = string
	list regions = ::region[] { }
}

::superregion s@null = {
	name = "Null Superregion"
}

::region += {
	key = superregion
	::superregion value = s@null
}

::region r@null = {
	name = "Null Region"
}

::area += {
	key = region
	::region value = r@null
}

::area a@null = {
	name = "Null Area"
}

::province += {
	key = area
	::area value = a@null
}

run = {
	target = src/map/provinces/
}
int provid = 1
foreach province in ::provinces = {
	province:value:area:provinces += province:value
	int province:value:id ~ provid
	provid += 1
} 

object ::countries = { }
object ::country = {
	block historical_idea_groups = { }
	block historical_units = { }
	block monarch_names = { }
	block leader_names = { }
	block ship_names = { }

	block army_names = {
		"Army of $PROVINCE$" 
	}

	block fleet_names = {
		"Fleet of $PROVINCE$"
	}

	string tag = ERR
	string name = ""
	string adj = ""
	block color = { 0 0 0 }
	string government = monarchy
	int government_rank = 1
	int mercantilism = 1
	string technology_group = elven_tg
	string religion = daedraphile_merid_nunda
	string primary_culture = ayleid
	string graphical_culture = northamericagfx
	
	block country = { }
	block history = { }
	
	::province capital = p@black_mountain
}



object ::on_actions = { }