Config = {}

Config.Animations = {
	{
		name  = 'festives',
		label = 'Animaties',
		items = {
			{label = "Rook een sigaret", type = "scenario", data = {anim = "WORLD_HUMAN_SMOKING"}},
			{label = "Muzikant", type = "scenario", data = {anim = "WORLD_HUMAN_MUSICIAN"}},
			{label = "Dj", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@dj", anim = "dj"}},
			{label = "Drink een biertje", type = "scenario", data = {anim = "WORLD_HUMAN_DRINKING"}},
			{label = "Feestje!", type = "scenario", data = {anim = "WORLD_HUMAN_PARTYING"}},
			{label = "Lucht gitaar", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@air_guitar", anim = "air_guitar"}},
			{label = "Lucht wippen", type = "anim", data = {lib = "anim@mp_player_intcelebrationfemale@air_shagging", anim = "air_shagging"}},
			{label = "Rock'n'roll", type = "anim", data = {lib = "mp_player_int_upperrock", anim = "mp_player_int_rock"}},
		    {label = "Rook een joint", type = "scenario", data = {anim = "WORLD_HUMAN_SMOKING_POT"}},
			{label = "Dronken staan", type = "anim", data = {lib = "amb@world_human_bum_standing@drunk@idle_a", anim = "idle_a"}},
			{label = "Naar buiten kotsen", type = "anim", data = {lib = "oddjobs@taxi@tie", anim = "vomit_outside"}},
			{label = "Zitten op grond", type = "sit", data = {lib = "mp_ped_interaction", anim = "hugs_guy_a"}},
		}
	},

	{
		name  = 'greetings',
		label = 'Groeten',
		items = {
			{label = "Hallo", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_hello"}},
			{label = "Schud de hand", type = "anim", data = {lib = "mp_common", anim = "givetake1_a"}},
			{label = "Check", type = "anim", data = {lib = "mp_ped_interaction", anim = "handshake_guy_a"}},
			{label = "Saluteer bandiet", type = "anim", data = {lib = "mp_ped_interaction", anim = "hugs_guy_a"}},
			{label = "Saluteer militair", type = "anim", data = {lib = "mp_player_int_uppersalute", anim = "mp_player_int_salute"}},
		}
	},

	{
		name  = 'work',
		label = 'Werk',
		items = {
			{label = "Verdachte : Geef over aan politie", type = "anim", data = {lib = "random@arrests@busted", anim = "idle_c"}},
			{label = "Vissen", type = "scenario", data = {anim = "world_human_stand_fishing"}},
			{label = "Politie : Notitie", type = "scenario", data = {anim = "CODE_HUMAN_MEDIC_TIME_OF_DEATH"}},
			{label = "Politie : Staan met clipboard", type = "scenario", data = {anim = "WORLD_HUMAN_CLIPBOARD"}},
			{label = "Politie : Kalmeren", type = "scenario", data = {anim = "CODE_HUMAN_POLICE_CROWD_CONTROL"}},
			{label = "Politie : Onderzoek", type = "anim", data = {lib = "amb@code_human_police_investigate@idle_b", anim = "idle_f"}},
			{label = "Politie : Praat in radio", type = "anim", data = {lib = "random@arrests", anim = "generic_radio_chatter"}},
			{label = "Politie : Staan", type = "scenario", data = {anim = "WORLD_HUMAN_COP_IDLES"}},
			{label = "Politie : Verkeer", type = "scenario", data = {anim = "WORLD_HUMAN_CAR_PARK_ATTENDANT"}},
			{label = "Politie : Verrekijker", type = "scenario", data = {anim = "WORLD_HUMAN_BINOCULARS"}},
			{label = "Ambulance : Mond op mond beademing", type = "cpr", data = {lib = "mp_ped_interaction", anim = "hugs_guy_a"}},
			{label = "Boer : Tuinman gehurkt", type = "scenario", data = {anim = "world_human_gardener_plant"}},
			{label = "Reparateur : Repareren", type = "anim", data = {lib = "mini@repair", anim = "fixing_a_ped"}},
			{label = "Dokter : Observeren", type = "scenario", data = {anim = "CODE_HUMAN_MEDIC_KNEEL"}},
			{label = "Taxi : Leun naar client", type = "anim", data = {lib = "oddjobs@taxi@driver", anim = "leanover_idle"}},
			{label = "Taxi : Geef rekening", type = "anim", data = {lib = "oddjobs@taxi@cyi", anim = "std_hand_off_ps_passenger"}},
			{label = "Kruidenier : Koop Product", type = "anim", data = {lib = "mp_am_hold_up", anim = "purchase_beerbox_shopkeeper"}},
			{label = "Barman : Serveer een shot", type = "anim", data = {lib = "mini@drinking", anim = "shots_barman_b"}},
			{label = "Journalist : Maak een foto", type = "scenario", data = {anim = "WORLD_HUMAN_PAPARAZZI"}},
			{label = "Bouw : Repareer met hamer", type = "scenario", data = {anim = "WORLD_HUMAN_HAMMERING"}},
			{label = "Zwerver : Bedelen", type = "scenario", data = {anim = "WORLD_HUMAN_BUM_FREEWAY"}},
			{label = "Mime speler : Menselijk standbeeld", type = "scenario", data = {anim = "WORLD_HUMAN_HUMAN_STATUE"}},
		}
	},

	{
		name  = 'humors',
		label = 'Emoties',
		items = {
			{label = "Feliciteren", type = "scenario", data = {anim = "WORLD_HUMAN_CHEERING"}},
			{label = "Super", type = "anim", data = {lib = "mp_action", anim = "thanks_male_06"}},
			{label = "Wijzen", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_point"}},
			{label = "Kom hier", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_come_here_soft"}}, 
			{label = "Kom dan ?", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_bring_it_on"}},
			{label = "Wie ik", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_me"}},
			{label = "Ik wist het, klootzak", type = "anim", data = {lib = "anim@am_hold_up@male", anim = "shoplift_high"}},
			{label = "Depressief", type = "scenario", data = {lib = "amb@world_human_bum_standing@depressed@idle_a", anim = "idle_a"}},
			{label = "Facepalm", type = "anim", data = {lib = "anim@mp_player_intcelebrationmale@face_palm", anim = "face_palm"}},
			{label = "Doe even rustig ", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_easy_now"}},
			{label = "Wat doe ik ?", type = "anim", data = {lib = "oddjobs@assassinate@multi@", anim = "react_big_variations_a"}},
			{label = "Angstig", type = "anim", data = {lib = "amb@code_human_cower_stand@male@react_cowering", anim = "base_right"}},
			{label = "Vechten ?", type = "anim", data = {lib = "anim@deathmatch_intros@unarmed", anim = "intro_male_unarmed_e"}},
			{label = "Het is niet mogenlijk !", type = "anim", data = {lib = "gestures@m@standing@casual", anim = "gesture_damn"}},
			{label = "Omarmen", type = "anim", data = {lib = "mp_ped_interaction", anim = "kisses_guy_a"}},
			{label = "Begroeten", type = "anim", data = {lib = "mp_player_int_upperfinger", anim = "mp_player_int_finger_01_enter"}},
			{label = "Klootviool", type = "anim", data = {lib = "mp_player_int_upperwank", anim = "mp_player_int_wank_01"}},
			{label = "Zelfmoord", type = "anim", data = {lib = "mp_suicide", anim = "pistol"}},
		}
	},

	{
		name  = 'sports',
		label = 'Sport',
		items = {
			{label = "Spieren laten zien", type = "anim", data = {lib = "amb@world_human_muscle_flex@arms_at_side@base", anim = "base"}},
			{label = "Lift barbell", type = "anim", data = {lib = "amb@world_human_muscle_free_weights@male@barbell@base", anim = "base"}},
			{label = "Push-ups", type = "anim", data = {lib = "amb@world_human_push_ups@male@base", anim = "base"}},
			{label = "Sit-ups", type = "anim", data = {lib = "amb@world_human_sit_ups@male@base", anim = "base"}},
			{label = "Yoga", type = "anim", data = {lib = "amb@world_human_yoga@male@base", anim = "base_a"}},
			{label = "Staand joggen", type = "scenario", data = {anim = "WORLD_HUMAN_JOG_STANDING"}},
		}
	},

	{
		name  = 'misc',
		label = 'Diversen',
		items = {
			{label = "Drink koffie", type = "anim", data = {lib = "amb@world_human_aa_coffee@idle_a", anim = "idle_a"}},
			{label = "Zitten", type = "anim", data = {lib = "anim@heists@prison_heistunfinished_biztarget_idle", anim = "target_idle"}},
			--{label = "Leunen", type = "scenario", data = {anim = "world_human_leaning"}},
			{label = "Zonnebaden rug", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE_BACK"}},
			{label = "Zonnebaden", type = "scenario", data = {anim = "WORLD_HUMAN_SUNBATHE"}},
			{label = "Schoonmaken", type = "scenario", data = {anim = "world_human_maid_clean"}},
			{label = "Barbecueën", type = "scenario", data = {anim = "PROP_HUMAN_BBQ"}},
			{label = "Prostitueren", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_bj_to_prop_female"}},
			{label = "Maak een selfie", type = "scenario", data = {anim = "world_human_tourist_mobile"}},
			{label = "Kluis kraken", type = "anim", data = {lib = "mini@safe_cracking", anim = "idle_base"}}, 
		}
	},

	{
		name  = 'attitudem',
		label = 'Loopstijlen',
		items = {
			{label = "Normaal M", type = "attitude", data = {lib = "move_m@confident", anim = "move_m@confident"}},
			{label = "Normaal V", type = "attitude", data = {lib = "move_f@heels@c", anim = "move_f@heels@c"}},
			{label = "Depressief", type = "attitude", data = {lib = "move_m@depressed@a", anim = "move_m@depressed@a"}},
			{label = "Depressief F", type = "attitude", data = {lib = "move_f@depressed@a", anim = "move_f@depressed@a"}},
			{label = "Zakelijk", type = "attitude", data = {lib = "move_m@business@a", anim = "move_m@business@a"}},
			{label = "Heldhaftig", type = "attitude", data = {lib = "move_m@brave@a", anim = "move_m@brave@a"}},
			{label = "Casual", type = "attitude", data = {lib = "move_m@casual@a", anim = "move_m@casual@a"}},
			{label = "Dik", type = "attitude", data = {lib = "move_m@fat@a", anim = "move_m@fat@a"}},
			{label = "Hipster", type = "attitude", data = {lib = "move_m@hipster@a", anim = "move_m@hipster@a"}},
			{label = "Gewond", type = "attitude", data = {lib = "move_m@injured", anim = "move_m@injured"}},
			{label = "Gehaast", type = "attitude", data = {lib = "move_m@hurry@a", anim = "move_m@hurry@a"}},
			{label = "Zwerver", type = "attitude", data = {lib = "move_m@hobo@a", anim = "move_m@hobo@a"}},
			{label = "Droevig", type = "attitude", data = {lib = "move_m@sad@a", anim = "move_m@sad@a"}},
			{label = "Gespierd", type = "attitude", data = {lib = "move_m@muscle@a", anim = "move_m@muscle@a"}},
			{label = "Geshockeerd", type = "attitude", data = {lib = "move_m@shocked@a", anim = "move_m@shocked@a"}},
			{label = "Verdacht", type = "attitude", data = {lib = "move_m@shadyped@a", anim = "move_m@shadyped@a"}},
			{label = "Vermoeid", type = "attitude", data = {lib = "move_m@buzzed", anim = "move_m@buzzed"}},
			{label = "Opgefokt", type = "attitude", data = {lib = "move_m@hurry_butch@a", anim = "move_m@hurry_butch@a"}},
			{label = "Rijk", type = "attitude", data = {lib = "move_m@money", anim = "move_m@money"}},
			{label = "Energiek", type = "attitude", data = {lib = "move_m@quick", anim = "move_m@quick"}},
			{label = "Man eter", type = "attitude", data = {lib = "move_f@maneater", anim = "move_f@maneater"}},
			{label = "Brutaal", type = "attitude", data = {lib = "move_f@sassy", anim = "move_f@sassy"}},	
			{label = "Arrogant", type = "attitude", data = {lib = "move_f@arrogant@a", anim = "move_f@arrogant@a"}},
		}
	},
	{
		name  = 'porn',
		label = 'PEGI 21',
		items = {
			{label = "Fellatio", type = "anim", data = {lib = "oddjobs@towing", anim = "m_blow_job_loop"}},
			{label = "Fellatio 2", type = "anim", data = {lib = "oddjobs@towing", anim = "f_blow_job_loop"}},
			{label = "Seks in auto", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_player"}},
			{label = "Seks in auto 2", type = "anim", data = {lib = "mini@prostitutes@sexlow_veh", anim = "low_car_sex_loop_female"}},
			{label = "Grijp zak", type = "anim", data = {lib = "mp_player_int_uppergrab_crotch", anim = "mp_player_int_grab_crotch"}},
			{label = "Strippen", type = "anim", data = {lib = "mini@strip_club@idles@stripper", anim = "stripper_idle_02"}},
			{label = "Prostitueren", type = "scenario", data = {anim = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS"}},
			{label = "Strippen 2", type = "anim", data = {lib = "mini@strip_club@backroom@", anim = "stripper_b_backroom_idle_b"}},
			{label = "Strip Tease 1", type = "anim", data = {lib = "mini@strip_club@lap_dance@ld_girl_a_song_a_p1", anim = "ld_girl_a_song_a_p1_f"}},
			{label = "Strip Tease 2", type = "anim", data = {lib = "mini@strip_club@private_dance@part2", anim = "priv_dance_p2"}},
			{label = "Privé dans", type = "anim", data = {lib = "mini@strip_club@private_dance@part3", anim = "priv_dance_p3"}},
		}
	}
}