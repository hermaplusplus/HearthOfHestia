/datum/appearance_descriptor/age/tajaran
	standalone_value_descriptors = list(
		"an infant" =       1,
		"a toddler" =       3,
		"a child" =         7,
		"an adolescent" =  13,
		"a young adult" =  18,
		"an adult" =       30,
		"middle-aged" =    55,
		"aging" =          80,
		"elderly" =       140
	)

/decl/species/tajaran
	name = SPECIES_TAJARA
	name_plural = "Tajaran"

	description = "A mammalian carnivore. If you are reading this, you are probably a Tajara."
	hidden_from_codex = FALSE

	age_descriptor = /datum/appearance_descriptor/age/tajaran

	available_bodytypes = list(/decl/bodytype/feline, /decl/bodytype/feline/masculine)

	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	blood_types = list(
		/decl/blood_type/feline/mplus,
		/decl/blood_type/feline/mminus,
		/decl/blood_type/feline/rplus,
		/decl/blood_type/feline/rminus,
		/decl/blood_type/feline/mrplus,
		/decl/blood_type/feline/mrminus,
		/decl/blood_type/feline/oplus,
		/decl/blood_type/feline/ominus
	)

	flesh_color = "#afa59e"
	base_hair_color = "#515151"
	base_color = "#787878"
	base_eye_color = "#00aa00"
	default_h_style = /decl/sprite_accessory/hair/taj

	organs_icon = 'mods/species/tajaran/icons/organs.dmi'

	darksight_range = 7
	slowdown = -0.5
	flash_mod = 2

	hunger_factor = DEFAULT_HUNGER_FACTOR * 1.2
	gluttonous = GLUT_TINY

	unarmed_attacks = list(
		/decl/natural_attack/stomp,
		/decl/natural_attack/kick,
		/decl/natural_attack/punch,
		/decl/natural_attack/bite/sharp
	)

	move_trail = /obj/effect/decal/cleanable/blood/tracks/paw

	cold_level_1 = 200
	cold_level_2 = 140
	cold_level_3 = 80

	heat_level_1 = 330
	heat_level_2 = 380
	heat_level_3 = 800

	heat_discomfort_level = 294
	cold_discomfort_level = 230

	heat_discomfort_strings = list(
		"Your fur prickles in the heat.",
		"You feel uncomfortably warm.",
		"Your overheated skin itches."
	)

	available_cultural_info = list(
		TAG_CULTURE = list(
			/decl/cultural_info/culture/tajaran,
			/decl/cultural_info/culture/tajaran/newsociety,
			/decl/cultural_info/culture/tajaran/nihilist,
			/decl/cultural_info/culture/other
		),
		TAG_HOMEWORLD = list(
			/decl/cultural_info/location/adhomai,
			/decl/cultural_info/location/lonewanderer,
			/decl/cultural_info/location/oldsocietycolony,
			/decl/cultural_info/location/newsocietycolony
		),
		TAG_FACTION = list(
			/decl/cultural_info/faction/tajara,
			/decl/cultural_info/faction/tajara/colonial,
			/decl/cultural_info/faction/tajara/highclass,
			/decl/cultural_info/faction/tajara/lowclass
		),
		TAG_RELIGION = list(
			/decl/cultural_info/religion/tajara/hadiaian,
			/decl/cultural_info/religion/tajara/oldadhomaian,
			/decl/cultural_info/religion/tajara/vastarrian
		)
	)


	default_emotes = list(
		/decl/emote/human/swish,
		/decl/emote/human/wag,
		/decl/emote/human/sway,
		/decl/emote/human/qwag,
		/decl/emote/human/fastsway,
		/decl/emote/human/swag,
		/decl/emote/human/stopsway,
		/decl/emote/audible/purr,
		/decl/emote/audible/purrlong
	)

	//Autohiss
	autohiss_basic_map = list(
		"r" = list("rr", "rrr", "rrrr"),
		"р" = list("рр", "ррр", "рррр")//thats not "pi"
	)

	autohiss_exempt = list(LANGUAGE_TAJARA)

	has_organ = list(
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		BP_LUNGS =    /obj/item/organ/internal/lungs,
		BP_LIVER =    /obj/item/organ/internal/liver,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys,
		BP_BRAIN =    /obj/item/organ/internal/brain,
		BP_APPENDIX = /obj/item/organ/internal/appendix,
		BP_EYES =     /obj/item/organ/internal/eyes/taj
	)

	override_limb_types = list(BP_TAIL = /obj/item/organ/external/tail/cat)

/obj/item/organ/internal/eyes/taj
	name = "tajaran eyes"

/decl/species/tajaran/handle_additional_hair_loss(var/mob/living/carbon/human/H, var/defer_body_update = TRUE)
	. = H && H.change_skin_color(189, 171, 143)
