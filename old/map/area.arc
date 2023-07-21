foreach area in ::areas = {
	string area:value:id = `{area:key}_area`
	area:value:region:areas += area:value
	area:value:id = {
		foreach province in area:value:provinces = {
			province:id
		}
	}
}