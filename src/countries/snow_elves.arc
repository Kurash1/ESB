new inheritable snow_elven_country = {
	technology_group = elven_tg
	religion = snow_elves_pantheon
	primary_culture = snow_elven
	graphical_culture = greekgfx
	
	history = {
		Tamriel = {
			discover_country = ROOT
		}
	}
}

new country geir = {
	inherit = snow_elven_country

	tag = GEI
	name = "Geir"
	adj = "Geirian"
	color = { 255 205 112 }
	
	capital = ivarstead
}
new country arcwind = {
	inherit = snow_elven_country
	
	tag = ARC
	name = "Arcwind"
	adj = "Arcwind"
	color = { 200 200 255 }
	
	capital = arcwind
}
new country treva = {
	inherit = snow_elven_country
	
	tag = TRE
	name = "Treva"
	adj = "Treva's"
	color = { 50 0 0 }
	
	capital = trevas_watch
}
new country faldar = {
	inherit = snow_elven_country

	tag = FLD
	name = "Faldar"
	adj = "Faldar's"
	color = { 150 0 50 }
	
	capital = faldar
}
new country honrich = {
	inherit = snow_elven_country

	tag = HON
	name = "Honrich"
	adj = "Honrichian"
	color = { 0 50 200 }
	
	capital = riften
}