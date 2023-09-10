foreach region in ::regions = {
	string region:value:id = `{region:key}_region`
	region:value:superregion:regions += region:value
	region:value:id = {
		areas = {
			foreach area in region:value:areas = {
				area:id
			}
		}
	}
}