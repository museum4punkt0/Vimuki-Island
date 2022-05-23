//Disclaimer
global.isLandscapeMode = false; 
global.isPopUpActive = false;

//Menue
global.menueTexts = undefined; 
global.placeText = "";

//Inventar
global.isInventoryOpen = true; 
global.descriptionText = ""; 

//Codeeingabe 
global.tempcode = ""; 
global.codeCounter = 0; 
global.allCombos= undefined; 
global.hasCode = false; 
global.codeScholle = 25764; 
global.codeRush = 14765; 
global.codeCrowd = 34672; 
global.codeRich = 75431; 

//Sprache
global.language = undefined; 
global.multilangual = undefined; 
global.currentLang = undefined; 

//Intros
global.basisIntroPlayed = 0; 
global.tempelIntroPlayed = 0; 
global.dschungelIntroPlayed = 0; 
global.strandIntroPlayed = 0; 
global.hoehleIntroPlayed = 0; 

//Sponsoren
global.scholle = false; 
global.rush = false; 
global.rich = false; 
global.crowd = false; 
global.hasSponsor = false; 
global.investor = 0; 
global.investorName =""; 

// Werte
global.ownValue = 5; 
global.suzanValue = 0; 
global.chadValue = 0; 


// GameLogik 
global.day = 1; 

//Stories 
global.isDschungelStoryActive = false; 
global.isFroschtempelStoryActive = false; 
global.isStrandStoryActive = false; 
global.isTropfsteinhoehleStoryActive = false; 

//Items
global.erdnussbutter = false; 
global.musikbox = false; 
global.fliegenklatsche = false; 
global.regenjacke = false; 
global.mueckenspray = false; 
global.seil = false; 
global.kompass = false; 
global.sonnenbrille = false; 
global.fischernetz = false; 
global.outdoorjacke = false; 
global.multitool = false; 
global.anurasbuch = false; 

global.item1 = "";
global.item2 = "";
global.item3 = "";
global.item4 = "";
global.item5 = "";
global.item6 = "";
global.item7 = "";
global.item8 = "";


global.inventar = ds_list_create(); 

//DecisionIDs
//Lists___________________________________
global.used_event_list_Tropfsteinhoehle = ds_list_create();	
global.used_event_list_Basis = ds_list_create();
global.used_event_list_Strand = ds_list_create();	 
global.used_event_list_Froschtempel = ds_list_create();	
global.used_event_list_Dschungel = ds_list_create();	
//Basis___________________________________

//Basis - Einzelevent 1
global.b_ee_1_d1 = 0; 
global.b_ee_1_d2 = 0; 
global.b_ee_1_d3 = 0;  

//Basis - Einzelevent 2
global.b_ee_2_d1 = 0; 
global.b_ee_2_d2 = 0; 

//Basis - Einzelevent 3
global.b_ee_3_d1 = 0; 
global.b_ee_3_d2 = 0; 

//Basis - Einzelevent 4
global.b_ee_4_d1 = 0; 
global.b_ee_4_d2 = 0; 
global.b_ee_5_d1 = 0; 
global.b_ee_5_d1_b = 0; 
global.b_ee_5_d1_c = 0; 
global.b_ee_5_d2 = 0; 
global.b_ee_5_d3 = 0; 
global.b_ee_5_d4 = 0; 


//Dschungel_______________________________

//Dschungel - Einzelevent 1
global.d_ee_1_d1 = 0; 
global.d_ee_1_d2 = 0; 
global.d_ee_1_d3 = 0; 
global.d_ee_1_d4 = 0; 

//Dschungel - Einzelevent 2
global.d_ee_2_d1 = 0; 
global.d_ee_2_d2 = 0; 
global.d_ee_2_d3 = 0; 
global.d_ee_2_d4 = 0; 

//Dschungel - Einzelevent 3
global.d_ee_3_d1 = 0; 
global.d_ee_3_d2 = 0; 

//Dschungel - Einzelevent 4
global.d_ee_4_d1 = 0; 
global.d_ee_4_d2 = 0; 

//Dschungel - Storyevent 1
global.d_se_1_d1 = 0;
global.d_se_1_d2 = 0;
global.d_se_1_d3 = 0;
global.d_se_1_d3b = 0;
global.d_se_1_d3c = 0;
global.d_se_1_ersatz = 0;
global.d_se_1_d4 = 0;
global.d_se_1_d5 = 0;
global.d_se_1_d6 = 0;
global.d_se_1_d7 = 0;

//Dschungel - Storyevent 2
global.d_se_2_d1a = 0;
global.d_se_2_d1b = 0;
global.d_se_2_d1c = 0;
global.d_se_2_d2 = 0;
global.d_se_2_d3 = 0;
global.d_se_2_d4 = 0;
global.d_se_2_d5 = 0;
global.d_se_2_d6 = 0;
global.d_se_2_d7 = 0;
global.d_se_2_d8 = 0;
global.d_se_2_d9 = 0;
global.d_se_2_d10 = 0;
global.d_se_2_d11 = 0;
global.multitoolUsed = false; 
//Froschtempel ___________________________

//Froschtempel - Einzelevent 1
global.f_ee_1_d1 = 0; 
global.f_ee_1_d2 = 0; 

//Froschtempel - Einzelevent 2
global.f_ee_2_d1 = 0; 
global.f_ee_2_d2 = 0; 
global.f_ee_2_d3 = 0; 
global.f_ee_2_d4 = 0; 
 
//Froschtempel - Einzelevent 3
global.f_ee_3_d1 = 0; 
global.f_ee_3_d2 = 0; 
global.f_ee_3_d3 = 0; 
global.f_ee_3_d4 = 0; 

//Froschtempel - Einzelevent 4
global.f_ee_4_d1 = 0; 
global.f_ee_4_d2 = 0; 

//Froschtempel - Storyevent 1
global.f_se_1_d1a = 0; 
global.f_se_1_d1b = 0; 
global.f_se_1_d1c = 0; 
global.f_se_1_d2 = 0; 
global.f_se_1_d3 = 0; 
global.f_se_1_freund = false; 
global.f_se_1_a_d1 = 0;
global.f_se_1_a_d2 = 0;
global.f_se_1_a_d3 = 0;
global.f_se_1_a_d4 = 0;
global.f_se_1_a_erfolg = false;

global.f_se_1_b_d1 = 0;
global.f_se_1_b_d2 = 0;
global.f_se_1_b_d3 = 0;
global.f_se_1_b_d4 = 0;
global.f_se_1_b_erfolg = false;

//Froschtempel - Storyevent 2
global.f_se_party = 0; 
global.f_se_2_d1 = 0;
global.f_se_2_kochen_d1 = 0;
global.f_se_2_kochen_d2a = 0;
global.f_se_2_kochen_d2b = 0; 
global.f_se_2_kochen_d2c = 0;
global.f_se_2_kochen_d3 = 0;
global.f_se_2_kochen_wert = 0; 
global.anurasbuchUsed = false; 
global.f_se_2_deko_d1 = 0;
global.f_se_2_deko_d2 = 0;
global.f_se_2_deko_gut = false; 

global.f_se_2_musik_d1 = 0;
global.f_se_2_musik_d2 = 0;
global.f_se_2_musik_good = false; 
global.froschtask = 0; 
global.musiktask = false; 
global.dekotask = false; 
global.kochtask = false; 

//Strand ___________________________

//Strand - Einzelevent 1
global.s_ee_1_d1 = 0; 
global.s_ee_1_d2 = 0; 

//Strand - Einzelevent 2
global.s_ee_2_d1 = 0; 
global.s_ee_2_d2 = 0; 

//Strand - Einzelevent 3
global.s_ee_3_d1 = 0; 
global.s_ee_3_d2 = 0; 

//Strand - Einzelevent 4
global.s_ee_4_d1 = 0; 
global.s_ee_4_d2 = 0; 
global.s_ee_4_d3 = 0; 
global.s_ee_4_d4 = 0;

//Strand - Storyevent 1 
global.s_se_1_d1 = 0; 
global.s_se_1_d2 = 0; 
global.s_se_1_d3 = 0; 
global.s_se_1_d4 = 0; 
global.s_se_1_d5 = 0; 
global.s_se_1_ns_d1 = 0; 
global.s_se_1_ns_d2 = 0; 
global.s_se_1_ns_gut = false; 

global.s_se_1_teil3_d1 = 0;
global.s_se_1_teil3_d2 = 0;
global.s_se_1_teil3_d3 = 0;
global.s_se_1_teil3_d4 = 0;
global.s_se_1_teil3_d5 = 0;
global.s_se_1_teil3_gut = false;

//Strand - Storyevent 2
global.hochzeit = false; 
global.strandtask = 0; 
global.strandbandtask = false;
global.s_se_2_band_d1a = 0;
global.s_se_2_band_d1b = 0;
global.s_se_2_band_d1c = 0;
global.s_se_2_band_d2 = 0;
global.s_se_2_band_value = 0;
global.s_se_2_hochzeit_value = 0;

global.s_se_2_blume_d1 = 0;
global.s_se_2_blume_d2 = 0;
global.s_se_2_blume_d3 = 0;
global.s_se_2_blume_d4 = 0;
global.s_se_2_blume_d5 = 0;
global.s_se_2_blume_d6 = 0;
global.s_se_2_blume_d7 = 0;
global.s_se_2_blume_gut = false;
global.strandblumentask = false;
global.s_se_2_kleid_d1 = 0;
global.s_se_2_kleid_d2 = 0;
global.s_se_2_kleid_d3 = 0;
global.s_se_2_kleid_d4 = 0;
global.s_se_2_kleid_gut = false;
global.strandkleidtask = false;
global.netzused = false; 

global.s_se_3_chad_d1 = 0; 
global.s_se_3_chad_d2 = 0; 
global.s_se_3_chad_d3 = 0; 
global.s_se_3_chad_d4 = 0; 
global.s_se_3_chad_d5 = 0; 

global.s_se_3_suzan_d1 = 0; 
global.s_se_3_suzan_d2 = 0; 
global.s_se_3_suzan_d3 = 0; 
global.s_se_3_suzan_d4 = 0; 
global.s_se_3_suzan_d5 = 0; 

//Tropfsteinhoehle___________________

//Tropfsteinhoehle - Einzelevent 1
global.t_ee_1_d1 = 0; 
global.t_ee_1_d2 = 0; 
global.t_ee_1_d3 = 0; 

//Tropfsteinhoehle - Einzelevent 2
global.t_ee_2_d1 = 0; 
global.t_ee_2_d2 = 0; 
global.t_ee_2_d3 = 0; 

//Tropfsteinhoehle - Einzelevent 3
global.t_ee_3_d1 = 0; 
global.t_ee_3_d2 = 0; 

//Tropfsteinhoehle - Einzelevent 4
global.t_ee_4_d1 = 0; 
global.t_ee_4_d2 = 0; 
global.t_ee_4_d3 = 0; 

//Tropfsteinhoehle - Storyevent 1
global.t_se_1_d1 = 0; 
global.t_se_1_d2 = 0; 
global.t_se_1_d4 = 0; 
global.t_se_1_d3 = 0; 
global.t_se_1_d5 = 0; 
global.t_se_1_d6 = 0; 
global.t_se_1_d7 = 0; 
global.t_se_1_d8 = 0; 
global.t_se_1_d9 = 0; 

//Tropfsteinhoehle - Storyevent 2
global.t_se_2_d1 = 0; 
global.t_se_2_d2 = 0; 
global.t_se_2_d3 = 0; 
global.t_se_2_d4 = 0; 
global.t_se_2_d5 = 0; 
global.t_se_2_d6 = 0; 
global.t_se_2_d7 = 0; 
global.aggro = false; 
global.bear = ""; 
global.jackeused = false; 

//Endings
global.artefakt_strand = false; 
global.artefakt_love = false; 
global.artefakt_dschungel = false; 
global.artefakt_hoehle = false; 
global.artefakt_tempel = false; 
global.dias = ds_list_create(); 
global.artefakts = ds_list_create();

global.abspannText = "Vimuki Island\n\n\nProgrammer\n\nRyan David Beck\n\n\nGraphics\n\nSofiya Snovedska\nKatharina Erbe \n Zoe Schwarz \n Kurt Bethscheider \n\n\nSound & Music\n\n Sebastian Wagmann \n\n\n\n Im Auftrag des \n Historischen Museum Saar \n\n\n\n Gefördert durch \n museum4punkt0 \n\n\n\n\n\n 2022 Konsonautic Solutions GmbH"; 