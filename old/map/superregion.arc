foreach superregion in ::superregions = {
	string superregion:value:id = `{superregion:key}_superregion`
	superregion:value:id = {
		foreach region in superregion:value:regions = {
			region:id
		}
	}
}