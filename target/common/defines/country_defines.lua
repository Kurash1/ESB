NDefines.NGame.START_DATE = "2500.1.1"
NDefines.NGame.END_DATE = "9999.12.31"
NDefines.NGame.MAX_RANDOM_NEW_WORLD = "57.1.1"
NDefines.NGame.GREAT_POWER_FRENZY_START = "9999.12.31"	-- Latest date for the start of the Great Power Frenzy (struggle).

NDefines.NCountry.MIN_DEV_FOR_FREE_CITY = 25					-- Capital must have at least this much development to be a free city
NDefines.NCountry.MAX_PROVINCES_FOR_FREE_CITY = 1			-- A free city cannot have more provinces than this
NDefines.NCountry.HRE_RANK = 5								-- Emperor of the HRE is displayed as this rank (for ruler title only)
NDefines.NCountry.HRE_MAX_RANK = 3							-- for members
NDefines.NCountry.HRE_MAX_RANK_ELECTOR = 4					-- for electors

NDefines.NCountry.PRESTIGE_GAIN_FOR_GOV_RANK_2   = 0			-- Prestige gained on upgrading to government rank 2
NDefines.NCountry.PRESTIGE_GAIN_FOR_GOV_RANK_3   = 0			-- Prestige gained on upgrading to government rank 3
NDefines.NCountry.PRESTIGE_GAIN_FOR_GOV_RANK_4   = 0			-- Prestige gained on upgrading to government rank 4
NDefines.NCountry.PRESTIGE_GAIN_FOR_GOV_RANK_5   = 0			-- Prestige gained on upgrading to government rank 5
NDefines.NCountry.PRESTIGE_GAIN_FOR_GOV_RANK_6   = 0			-- Prestige gained on upgrading to government rank 6
NDefines.NCountry.MIN_PRESTIGE_FOR_GOV_RANK_2    = 0			-- Required prestige to to upgrade to government rank 2
NDefines.NCountry.MIN_PRESTIGE_FOR_GOV_RANK_3    = 0			-- Required prestige to to upgrade to government rank 3
NDefines.NCountry.MIN_PRESTIGE_FOR_GOV_RANK_4    = 0			-- Required prestige to to upgrade to government rank 4
NDefines.NCountry.MIN_PRESTIGE_FOR_GOV_RANK_5    = 0			-- Required prestige to to upgrade to government rank 5
NDefines.NCountry.MIN_PRESTIGE_FOR_GOV_RANK_6    = 0			-- Required prestige to to upgrade to government rank 6
NDefines.NCountry.MIN_DEVELOPMENT_FOR_GOV_RANK_2 = 75			-- Need at least this much development to upgrade to government rank 3
NDefines.NCountry.MIN_DEVELOPMENT_FOR_GOV_RANK_3 = 200			-- Need at least this much development to upgrade to government rank 4
NDefines.NCountry.MIN_DEVELOPMENT_FOR_GOV_RANK_4 = 400			-- Need at least this much development to upgrade to government rank 5
NDefines.NCountry.MIN_DEVELOPMENT_FOR_GOV_RANK_5 = 700			-- Need at least this much development to upgrade to government rank 6
NDefines.NCountry.MIN_DEVELOPMENT_FOR_GOV_RANK_6 = 1000			-- Need at least this much development to upgrade to government rank 7
NDefines.NCountry.ADDITIONAL_MIN_DEVELOPMENT_FOR_GOV_RANK_X = 0	-- ADDITIONAL development needed to upgrade to government rank above 3
NDefines.NCountry.MAX_GOV_RANK = 6									-- Max possible is 10

NDefines.NCountry.ALLOW_FEMALE_GENERALS = 1
NDefines.NCountry.FEMALE_ADVISOR_CHANCE = 2.15						-- If Women in History is enabled chance of an advisor (or general if permitted) spawning as female
NDefines.NCountry.MAX_IDEA_GROUPS_FROM_SAME_CATEGORY = 0.4

NDefines.NCountry.FREE_IDEA_GROUP_COST  = 7						-- modifier on cheapness of "free" idea group
NDefines.NCountry.IDEA_TO_TECH = -0			-- percentage on tech reduction per idea.
NDefines.NCountry.TECH_TIME_COST = 0			-- tech grow with 20% cost over time.
NDefines.NCountry.TECH_AHEAD_OF_TIME = 0.1		-- per year ahead.
NDefines.NCountry.PS_BUY_IDEA = 650

NDefines.NDiplomacy.DESIRED_NUM_OF_ELECTORS = 5
NDefines.NDiplomacy.MAX_FREE_CITIES = 15
NDefines.NDiplomacy.MIN_NUM_ELECTORS_FOR_REMOVE_ELECTORATE = 2		-- Limit is inclusive.
NDefines.NDiplomacy.HRE_PRINCE_AUTHORITY_THRESHOLD = 10			-- Threshold below which you lose IA and above which you gain it
NDefines.NDiplomacy.IMPERIAL_AUTHORITY_FROM_PRINCES = 0.075			-- Scales to threshold
NDefines.NDiplomacy.HRE_FOREIGN_CONTROL_PENALTY = -0.005			-- Each foreign-controlled province in the empire (owned or vassalised) lowers IA by this amount
NDefines.NDiplomacy.HRE_HERETIC_PENALTY = 0					-- Per heretic prince (halved by Peace of Westphalia)
NDefines.NDiplomacy.LACK_OF_ELECTORS_HIT = 0					-- Also applied to vassalized electors
NDefines.NDiplomacy.IMPERIAL_REFORM_COST = 50						-- Minium Cost of enacting a new reform.

NDefines.NDiplomacy.AE_HRE_INTERNAL = 0

NDefines.NDiplomacy.MAX_NUM_OF_ELECTORS = 5						-- Maximum number of electors in the interface

NDefines.NFrontend.CAMERA_LOOKAT_X = 1855.0
NDefines.NFrontend.CAMERA_LOOKAT_Y = 0.0
NDefines.NFrontend.CAMERA_LOOKAT_Z = 1617.0
NDefines.NFrontend.CAMERA_START_X = 1855.0
NDefines.NFrontend.CAMERA_START_Y = 1700.0
NDefines.NFrontend.CAMERA_START_Z = 1217.0
NDefines.NFrontend.FRONTEND_POS_X = 1800.0
NDefines.NFrontend.FRONTEND_POS_Y = 300.0
NDefines.NFrontend.FRONTEND_POS_Z = 1650.0
NDefines.NFrontend.FRONTEND_LOOK_X = 1800.0
NDefines.NFrontend.FRONTEND_LOOK_Y = -400.0
NDefines.NFrontend.FRONTEND_LOOK_Z = 2225.0
NDefines.NFrontend.CAMERA_MIN_HEIGHT = 75
NDefines.NFrontend.CAMERA_MAX_HEIGHT = 2211

NDefines.NCountry.MIGRATION_DEPLETION_TIME = 1825				-- How many days a province needs to recover from migrants
NDefines.NCountry.TRIBE_STARTING_DEV = 3							-- Starting dev of a tribe
NDefines.NCountry.MIGRATORY_TRIBE_DEVASTATION_BURN = 1.0			-- How much devastation is burnt per year, multiplied with development. 
NDefines.NCountry.MIGRATORY_TRIBE_DEVASTATION_ALERT_THRESHOLD = 50
NDefines.NCountry.MIGRATORY_TRIBE_DEVELOPMENT_PROGRESS = 0.05 	-- How much progress on development for each monthly tick
NDefines.NCountry.MIGRATORY_TRIBE_DEVELOPMENT_OTHER_BONUS = 0.08	-- Bonus progress gained on development from burning someone else province.
NDefines.NCountry.TRIBE_MIGRATION_ADM_COST = 10
NDefines.NCountry.TRIBE_MIGRATION_DIP_COST = 10
NDefines.NCountry.TRIBE_MIGRATION_MIL_COST = 10
NDefines.NCountry.SIBERIAN_TRIBE_MIGRATION_BONUS = 50
NDefines.NCountry.SIBERIAN_TRIBE_MIGRATION_COOLDOWN_YEARS = 5
NDefines.NCountry.TRIBE_MIGRATION_NON_TRIBAL_LAND_COOLDOWN_YEARS = 2