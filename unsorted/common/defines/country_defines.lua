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
NDefines.NCountry.MAX_IDEA_GROUPS_FROM_SAME_CATEGORY = 0.34

NDefines.NCountry.FREE_IDEA_GROUP_COST  = 7						-- modifier on cheapness of "free" idea group
NDefines.NCountry.IDEA_TO_TECH = -0			-- percentage on tech reduction per idea.
NDefines.NCountry.TECH_TIME_COST = 0			-- tech grow with 20% cost over time.
NDefines.NCountry.TECH_AHEAD_OF_TIME = 0.1		-- per year ahead.
NDefines.NCountry.PS_BUY_IDEA = 600

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

NDefines.NCountry.CULTURAL_UNION_MIN_RANK = 4

NDefines.NGraphics.LAND_UNIT_MOVEMENT_SPEED = 12
NDefines.NGraphics.NAVAL_UNIT_MOVEMENT_SPEED = 12

NDefines.NGovernment.GOVERNMENT_REFORM_BASE_COST = 100
NDefines.NGovernment.GOVERNMENT_REFORM_COST_INCREASE = 0
NDefines.NCountry.INNOVATIVENESS_FIRST_PICKED_IDEA = 0.0
NDefines.NCountry.INNOVATIVENESS_AHEAD_OF_TIME_BONUS = 0.0

NDefines.NCountry.TIME_TO_REPAIR_GREAT_PROJECT_ONE_PERCENT_IN_DAYS = 30
NDefines.NCountry.GREAT_PROJECT_FULL_STATE_OF_REPAIR = 100
NDefines.NCountry.GREAT_PROJECT_DEGRADATION_PERCENT_PER_MONTH = 0.01
NDefines.NCountry.GREAT_PROJECT_DEGRADATION_PERCENT_THRESHOLD_FOR_ALERT = 5
NDefines.NCountry.GREAT_PROJECT_DEGRADATION_PERCENT_THRESHOLD_FOR_TIER_1 = 25
NDefines.NCountry.GREAT_PROJECT_DEGRADATION_PERCENT_THRESHOLD_FOR_TIER_2 = 50
NDefines.NCountry.GREAT_PROJECT_DEGRADATION_PERCENT_THRESHOLD_FOR_TIER_3 = 75
NDefines.NCountry.GREAT_PROJECT_MANPOWER_REQUIRED_FOR_CONSTRUCTION_BOOST = 10000
NDefines.NCountry.GREAT_PROJECT_MANPOWER_CONSTRUCTION_BOOST_AMOUNT_IN_DAYS = 730
NDefines.NCountry.GREAT_PROJECT_MONEY_REQUIRED_FOR_CONSTRUCTION_BOOST = 250
NDefines.NCountry.GREAT_PROJECT_MONEY_CONSTRUCTION_BOOST_AMOUNT_IN_DAYS = 730
NDefines.NCountry.GREAT_PROJECT_MOVE_COST_PER_DAY = 100

NDefines.NAI.GREAT_PROJECT_DESIRE_MOVE_FROM_SUBJECT_MODIFIER = 2
NDefines.NAI.GREAT_PROJECT_DESIRE_LEAVE_IN_SUBJECT_MODIFIER = 0.5
NDefines.NAI.GREAT_PROJECT_DESIRE_UPGRADE_IN_SUBJECT_MODIFIER = 0.5
NDefines.NAI.GREAT_PROJECT_DESIRE_UPGRADE_MODIFIER = 1
NDefines.NAI.GREAT_PROJECT_DESIRE_BUILD_NEW_MODIFIER = 2
NDefines.NAI.GREAT_PROJECT_DESIRE_CAPITAL_MODIFIER = 3
NDefines.NAI.GREAT_PROJECT_DESIRE_CAPITAL_BASE = 10
NDefines.NAI.GREAT_PROJECT_DESIRE_CAPITAL_AREA_MODIFIER = 3

NDefines.NAI.AI_CONVERT_CULTURES = 1
NDefines.NCountry.CULTURE_MIN_DEVELOPMENT_TO_PROMOTE = 50

NDefines.NCountry.FEMALE_ADVISOR_CHANCE = 50
NDefines.NMilitary.NAVAL_BASE_ENGAGEMENT_WIDTH = 40