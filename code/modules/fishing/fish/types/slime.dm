/obj/item/fish/slimefish
	name = "grey aquatic slime"
	fish_id = "slimefish"
	desc = "Kids, this is what happens when a slime overcomes its hydrophobic nature. It goes glug glug."
	icon_state = "slimefish"
	icon_state_dead = "slimefish_dead"
	sprite_width = 7
	sprite_height = 7
	fish_flags = parent_type::fish_flags & ~FISH_DO_FLOP_ANIM //it already has a cute bouncy wiggle. :3
	random_case_rarity = FISH_RARITY_VERY_RARE
	required_fluid_type = AQUARIUM_FLUID_ANADROMOUS
	stable_population = 4
	health = 150
	fillet_type = /obj/item/slime_extract/grey
	fish_traits = list(/datum/fish_trait/toxin_immunity, /datum/fish_trait/crossbreeder)
	favorite_bait = list(
		list(
			FISH_BAIT_TYPE = FISH_BAIT_FOODTYPE,
			FISH_BAIT_VALUE = TOXIC,
		),
		list(
			FISH_BAIT_TYPE = FISH_BAIT_REAGENT,
			FISH_BAIT_VALUE = /datum/reagent/toxin,
			FISH_BAIT_AMOUNT = 5,
		),
	)
	required_temperature_min = MIN_AQUARIUM_TEMP+20
	beauty = FISH_BEAUTY_GREAT

/obj/item/fish/slimefish/get_food_types()
	return SEAFOOD|TOXIC

/obj/item/fish/slimefish/get_base_edible_reagents_to_add()
	return list(/datum/reagent/toxin/slimejelly = 5)

/obj/item/fish/slimefish/red
	name = "red aquatic slime"
	fish_id = "slimefish_red"
	color = "#ff0000"
	resistance_flags = parent_type::resistance_flags | FIRE_PROOF
	required_temperature_max = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	random_case_rarity = FISH_RARITY_NOPE
	fillet_type = /obj/item/slime_extract/red

/obj/item/fish/slimefish/orange
	name = "orange aquatic slime"
	fish_id = "slimefish_orange"
	color = "#ff8000"
	resistance_flags = parent_type::resistance_flags | FIRE_PROOF
	required_temperature_max = FIRE_IMMUNITY_MAX_TEMP_PROTECT
	random_case_rarity = FISH_RARITY_NOPE
	fillet_type = /obj/item/slime_extract/orange

/obj/item/fish/slimefish/bluespace
	name = "bluespace aquatic slime"
	fish_id = "slimefish_bluespace"
	color = "#0000ff"
	random_case_rarity = FISH_RARITY_NOPE
	fillet_type = /obj/item/slime_extract/bluespace
