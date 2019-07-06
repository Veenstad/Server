Locales['fr'] = {
  -- ********** SOLO **********
  -- Blips
  ['solo_key']            = 'Veenstad straatrace tickets SOLO',
  ['solo_listing']        = 'Veenstad straatrace circuits SOLO',
  -- collect
	['press_collect_solo']  = 'Druk op ~INPUT_CONTEXT~ om je solo-race-tickets te ontvangen~s~',
  ['inv_full_solo_key']   = 'Je hebt het maximum aan solo-race-tickets bereikt',
  -- register
	['press_solo_race_list']= 'Druk op ~INPUT_CONTEXT~ om toegang te krijgen tot deze ~y~baan~s~',
  ['register_ok']         = 'Inschrijving ~y~gelukt~s~\rGa naar het punt van ~r~beginnen~s~',
  ['already_register']    = 'Inschrijving was al ~r~gelukt~s~ \rGa naar het punt van ~r~beginnen~s~',
  ['already_multi']       = 'Er is al een straatrace ~r~bezig~s~ even geduld tot deze klaar is',
  ['no_solo_key']         = 'Je hebt geen n\'solo-race-ticket ~r~voor een straatrace~s~',
  -- race
  ['ready_to_start']      = 'Klaar voor de start ~r~AF!~s~',
  ['race_chrono']         = '~b~%s~s~\rTijd: ~y~%s~s~\rCheckpoint: ~y~%s/%s~s~',
  ['race_in_vehicle']     = 'Ga direct terug naar je ~r~VOERTUIG~s~ !!\r~r~%s~s~',
  ['race_loose']          = 'Helaas je hebt ~r~verloren~s~ !!!',
  ['nice_ride']           = 'Gefeliciteerd, je hebt een prima tijd neergezet! ~y~%s~s~',
  ['new_record']          = 'Nieuw record!! ~r~%s~s~',
	-- Menu
  ['own_stat']            = 'Persoonlijke statistieken',
  ['daily_stat']          = 'Dagelijkse klassementenlijst',
  ['monthly_stat']        = 'Maandelijkse klassementenlijst',
  ['registration']        = 'Inschrijving',
  ['own_title']           = '%s - Persoonlijk',
  ['daily_title']         = '%s - Dagelijks',
  ['monthly_title']       = '%s - Maandelijks',
  ['record_notif']        = 'Tijd: ~b~%s~s~\nDeelnemer: ~r~%s~s~\nle ~y~%s~s~ à ~y~%s~s~',
  -- ********** MULTI **********
  -- Blips
  ['multi_key']             = 'Veenstad straatrace tickets meerdere deelnemers',
  ['multi_listing']         = 'Veenstad straatrace banen meerdere deelnemers',
  -- collect
  ['press_collect_multi']   = 'Druk op ~INPUT_CONTEXT~ om je Veenstad straatrace tickets meerdere deelnemers te ~y~ontvangen~s~',
  ['inv_full_multi_key']    = 'Je hebt het maximum aan meerdere-deelnemers-race-tickets bereikt',
  -- ranking
  ['multi_record_notif']    = '~b~%s~s~ | ~b~%s~s~\nDeelnemer: ~r~%s~s~\nle ~y~%s~s~ à ~y~%s~s~',
  -- register
  ['press_multi_race_list'] = 'Druk op ~INPUT_CONTEXT~ om de race op te starten',
  ['no_race_ended']         = 'Geen straatrace voltooid',
  ['no_multi_key']          = 'Je hebt geen n\'meerdere-deelnemers-race-tickets om de ~r~Straatrace~s~ te starten',
  ['multi_register_full']   = 'Deelnemerslijst zit ~r~vol~s~',
  ['multi_register_ok']     = 'Inschrijving ~y~gelukt~s~\rwacht op ~r~start~s~',
  -- edit
  ['race_already_exist']    = 'Er is al een meerdere-deelnemers-race bezig, een ongenblik aub',
  ['create_in_prog']        = '~y~Aanmaken~s~ race geslaagd',
  ['multi_change_fail']     = 'Ongeldige invoer',
  -- race
  ['multi_ready_to_start']  = 'Bereid je voor op de ~r~start~s~',
  ['multi_wait_to_start']   = 'Wachten tot iedereen klaar staat.',
  ['multi_race_start']      = 'Klaar voor de start.. ~r~AF!!~s~',
  ['multi_race_chrono']     = '~b~%s~s~\rTijd: ~y~%s~s~\t\rRonde: ~y~%s/%s~s~\rPositie: ~y~%s/%s~s~',
  -- Menu home
  ['multi_home_title']      = 'Veenstad meerdere-deelnemers-straatrace',
  ['ended_races']           = 'Eindstand klassement',
  ['show_registration']     = 'Bekijk je inschrijving',
  ['create_race']           = 'Start een straatrace voor meerdere personen',
  ['edit_race']             = 'Pas je straatrace aan',
  -- Menu ranking
  ['multi_rank_title']      = 'Eindstand klassement',
  ['multi_rank_own']        = 'Eindstand persoonlijk klassement',
  ['multi_rank_race']       = '%s Ronde - %s Pers - %s',
  ['multi_rank_own_race']   = '%s - %sRonde %spers - %s - %s',
  ['multi_rank_multi_title']= '%s - %s Ronde, %s pers',
  ['multi_rank_multi_race'] = '%s - %s - %s',
  -- Menu register
  ['multi_register_title']     = 'Selecteer een straatrace',
  ['multi_register_list']      = '%s: %s Ronde, %s Personen',
  ['multi_my_register_title']  = 'Mon inscription',
  ['multi_register_registerC'] = 'Inscription fermée',
  ['multi_register_registerO'] = 'Inscription ouverte',
  ['multi_register_readyC']    = 'En attente du départ',
  ['multi_register_readyO']    = 'Prêt pour le départ',
  -- Menu edit
  ['multi_edit_title']      = 'Edition - %s',
  ['multi_edit_race']       = 'Circuit: %s',
  ['multi_edit_laps']       = 'Nombre de tours: %s',
  ['multi_edit_pers']       = 'Nombre de participants: %s',
  ['multi_edit_registerC']  = 'Fermer les inscriptions',
  ['multi_edit_registerO']  = 'Ouvrir les inscriptions',
  ['multi_edit_readyC']     = 'Arrêter la course',
  ['multi_edit_readyO']     = 'Démarrer la course',
  ['remove_multi']          = 'Annuler la course',
  -- Menu input
  ['multi_change_laps_title'] = 'Nombre de tours',
  ['multi_change_pers_title'] = 'Nombre de participants',
  ['multi_register_list']     = '%s: %s tours, %s pers',
  -- ********** COMMON **********
  ['pickup_in_prog']      = '~y~Ramassage~s~ en cours',
  ['pickup_retry']        = '~r~Attendre~s~ et Réessayez',
  ['out_vehicle']         = 'Vous devez sortir du ~r~véhicule~s~',
  ['act_imp_police']      = 'Action ~r~impossible~s~,\r~b~policiers~s~: ~r~%s/%s~s~',
  ['pickup_ok']           = 'Ramassage ~y~effectuée~s~',
  ['in_vehicle']          = 'Vous devez être dans un ~r~véhicule~s~',
  ['exit_marker']         = 'Appuyez sur ~INPUT_CONTEXT~ pour annuler le ~y~process~s~',
  ['no_race']             = 'Pas de ~r~circuits~s~',
  ['press_start_race']    = 'Appuyez sur ~INPUT_CONTEXT~ pour commencer la ~y~course~y~',
  ['no_record']           = 'Pas de ~r~temps~s~',
  ['remove_register']     = 'Annuler son inscription',
  ['removed_register']    = 'Inscription ~r~annulée~s~',
  ['value_between']       = 'La valeur doit être comprise\rentre ~r~%s et %s~s~',
}