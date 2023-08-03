new advisor_type philosopher = {
	name = "Philosopher"
	desc = "An advisor dedicated to the study of the fundamental nature of knowledge, reality and existence."
	
	monarch_power = ADM
	modifier = {
		prestige = 1
	}
}
new advisor_type natural_scientist = {
	name = "Natural Scientist"
	desc = "An advisor highly skilled in the study of nature and the physical world."
	
	monarch_power = ADM
	modifier = {
		production_efficiency = 0.10
	}
}
new advisor_type artist = {
	name = "Artist"
	desc = "A highly creative person exceptionally skilled in sculpturing, painting or poetry."
	
	monarch_power = ADM
	modifier = {
		stability_cost_modifier = -0.10
	}
}
new advisor_type treasurer = {
	name = "Treasurer"
	desc = "An advisor responsible for the administration of the nation's financial wealth and trade investments."
	
	monarch_power = ADM
	modifier = {
		global_tax_modifier = 0.1
	}
}
new advisor_type theologian = {
	name = "Treasurer"
	desc = "An advisor responsible for the administration of the nation's financial wealth and trade investments."
	
	monarch_power = ADM
	modifier = {
		global_unrest = -2
	}
}
new advisor_type master_of_mint = {
	name = "Master of the Mint"
	desc = "The master of the mint ensures that the coinage is minted to correct standards. When a great man is running a local mint people have more faith in the value of money."
	
	monarch_power = ADM
	modifier = {
		inflation_reduction = 0.10
	}
}
new advisor_type inquisitor = {
	name = "Inquisitor"
	desc = "Having gained experience in rooting out those who do not follow proper orthodoxy in the faith, the inquisitor can use his talents to spot those who are behaving strangely in government."
	
	monarch_power = ADM
	allow_only_owner_religion = yes
	modifier = {
		global_missionary_strength = 0.02
	}
}
new advisor_type statesman = {
	name = "Statesman"
	desc = "A skilled politician, highly efficient in governmental matters and responsibilities of the state."
	
	monarch_power = DIP
	modifier = {
		diplomatic_reputation = 1
	}
}
new advisor_type naval_reformer = {
	name = "Naval Reformer"
	desc = "A highly ranked naval veteran continuously investigating new inventions and naval tactics to improve and expand our existing navy."
	
	monarch_power = DIP
	modifier = {
		naval_morale = 0.1 
	}
}
new advisor_type trader = {
	name = "Trader"
	desc = "A trade advisor controlling all aspects of trade in the state from allocating the right number of merchants to where the most suitable trade routes exists."
	
	monarch_power = DIP
	modifier = {
		trade_efficiency = 0.10
	}
}
new advisor_type spymaster = {
	name = "Spymaster"
	desc = "Our eyes and ears in foreign countries, aids us in our efforts to collect both military and political information from our rivals without their knowledge."
	
	monarch_power = DIP
	modifier = {
		spy_offence = 0.25
	}
}
new advisor_type colonial_governor = {
	name = "Colonial Governor"
	desc = "Our government's representative overseas, responsible for the administration of our colonies."
	
	monarch_power = DIP
	modifier = {
		global_tariffs = 0.10
	}
}
new advisor_type diplomat = {
	name = "Diplomat"
	desc = "Our government's representative in foreign countries."
	
	monarch_power = DIP
	modifier = {
		improve_relation_modifier = 0.2
	}
}
new advisor_type navigator = {
	name = "Navigator"
	desc = "A sailor who had experienced many a long voyage, the navigator knows what is needed for a ship to spend long months at sea."
	
	monarch_power = DIP
	modifier = {
		range = 0.20
	}
}
new advisor_type army_reformer = {
	name = "Army Reformer"
	desc = "A highly ranked military veteran continuously investigating new inventions and tactics to improve and expand our existing army."
	
	monarch_power = MIL
	modifier = {
		land_morale = 0.10
	}
}
new advisor_type army_organiser = {
	name = "Army Organiser"
	desc = "Running a modern army is no easy business. Back in the good old days you used to just round up your nobles and their retinues and go out and fight. These days you have to organize things, a man who can do that is worth his weight in gold."
	
	monarch_power = MIL
	modifier = {
		land_forcelimit_modifier = 0.10
	}
}
new advisor_type commandant = {
	name = "Commandant"
	desc = "The master driller, the commandant set about the task of ensuring our troops are properly drilled with zeal. Looking at the number of complaints the rankers are making he is doing a good job"
	
	monarch_power = MIL
	modifier = {
		discipline = 0.05
	}
}
new advisor_type quartermaster = {
	name = "Quartermaster"
	desc = "Keeping our troops supplies with ammunition, food and most importantly fresh cannon fodder is important work. Always be glad if you have a good quartermaster in your administration."
	
	monarch_power = MIL
	modifier = {
		reinforce_speed = 0.33
	}
}
new advisor_type recruitmaster = {
	name = "Recruit Master"
	desc = "Finding bodies to fill out uniforms can sometimes be difficult work, the master recruiter knows all the tricks and will ensure that no one who should be serving can avoid it."
	
	monarch_power = MIL
	modifier = {
		global_manpower_modifier = 0.10
	}
}
new advisor_type fortification_expert = {
	name = "Fortification Expert"
	desc = "Defending fortifications is becoming a science in itself, although the experts claim it is more of an art form. To squeeze every last advantage out of fortifications the defensive procedures must be constantly updated."
	
	monarch_power = MIL
	modifier = {
		defensiveness = 0.2
	}
}
new advisor_type grand_captain = {
	name = "Grand Captain"
	desc = "Men always fight better when they felt they are being lead properly. The Grand Captain provides leadership from the very top that percolates down through the whole army."
	
	monarch_power = MIL
	modifier = {
		land_maintenance_modifier = -0.10
	}
}
