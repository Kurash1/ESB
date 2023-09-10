run = {
	target = src/arc/global.arc
}

run = {
	target = src/map/area.arc
	as = target/map/area.txt
	save = yes
}
run = {
	target = src/map/region.arc
	as = target/map/region.txt
	save = yes
}
run = {
	target = src/map/superregion.arc
	as = target/map/superregion.txt
	save = yes
}


run = {
	target = src/map/00_tradenodes.arc
	as = target/common/tradenodes/00_tradenodes.txt
	save = yes
}

run = {
	target = src/map/continent.arc
	as = target/map/continent.txt
	save = yes
}

run = {
	target = src/countries/
}

run = {
	target = src/on_actions/default.arc
}

run = {
	target = src/transpilation/on_actions.arc
	as = target/common/on_actions/00_on_actions.txt
	save = yes
}
run = {
	target = src/transpilation/countries.arc
	as = target/common/country_tags/arc.txt
	save = yes
}

run = {
	target = src/map/terrain.arc
	as = target/map/terrain.txt
	save = yes
}
save_as_provinces = ::provinces
