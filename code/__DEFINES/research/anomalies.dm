// Max amounts of cores you can make
#define MAX_CORES_BLUESPACE 3
#define MAX_CORES_GRAVITATIONAL 6
#define MAX_CORES_FLUX 5
#define MAX_CORES_VORTEX 3
#define MAX_CORES_PYRO 8
#define MAX_CORES_HALLUCINATION 8
#define MAX_CORES_BIOSCRAMBLER 8
#define MAX_CORES_DIMENSIONAL 8
#define MAX_CORES_ECTOPLASMIC 8

///Defines for the different types of explosion a flux anomaly can have
#define FLUX_NO_EXPLOSION 0
#define FLUX_EXPLOSIVE 1
#define FLUX_LOW_EXPLOSIVE 2

/// Chance of anomalies moving every process tick
#define ANOMALY_MOVECHANCE 45

/// Blacklist of parts which should not appear when bioscrambled, largely because they will make you look totally fucked up
GLOBAL_LIST_INIT(bioscrambler_parts_blacklist, typecacheof(list(
	/obj/item/bodypart/chest/larva,
	/obj/item/bodypart/head/larva,
)))

/// Blacklist of organs which should not appear when bioscrambled.
/// Either will look terrible outside of intended host, give you magical powers, are irreversible, or kill you
GLOBAL_LIST_INIT(bioscrambler_organs_blacklist, typecacheof(list (
	/obj/item/organ/pod_hair,
	/obj/item/organ/spines,
	/obj/item/organ/wings,
	/obj/item/organ/wings/functional,
	/obj/item/organ/alien,
	/obj/item/organ/brain,
	/obj/item/organ/body_egg,
	/obj/item/organ/cyberimp,
	/obj/item/organ/ears/dullahan,
	/obj/item/organ/eyes/dullahan,
	/obj/item/organ/heart/cursed,
	/obj/item/organ/heart/demon,
	/obj/item/organ/lungs,
	/obj/item/organ/monster_core,
	/obj/item/organ/tongue/dullahan,
	/obj/item/organ/vocal_cords/colossus,
	/obj/item/organ/zombie_infection,
)))

/// List of body parts we can apply to people
GLOBAL_LIST_EMPTY(bioscrambler_valid_parts)
/// List of organs we can apply to people
GLOBAL_LIST_EMPTY(bioscrambler_valid_organs)

/// Blacklist of organs and parts which should not be fishable out of bioscramblers
/// Mostly just things that look terrible outside of the intended host, introduce antags into the round (because maintainers said so), or just don't work (looking at you, dullahans)
GLOBAL_LIST_INIT(bioscrambler_fishing_blacklist, typecacheof(list(
	/obj/item/bodypart/chest/larva,
	/obj/item/bodypart/head/larva,
	/obj/item/organ/pod_hair,
	/obj/item/organ/alien/eggsac,
	/obj/item/organ/body_egg/alien_embryo,
	/obj/item/organ/ears/dullahan,
	/obj/item/organ/eyes/dullahan,
	/obj/item/organ/tongue/dullahan,
	/obj/item/organ/zombie_infection,
)))

/// List of organs and parts with reduced weights compared to the default
/// These give you magical powers or are dangerous to have in you
GLOBAL_LIST_INIT(bioscrambler_fishing_unique_weights, list(
	/obj/item/organ/wings/functional = FISH_RARITY_VERY_RARE,
	/obj/item/organ/wings = FISH_RARITY_UNCOMMON,
	/obj/item/organ/alien = FISH_RARITY_RARE,
	/obj/item/organ/body_egg/changeling_egg = FISH_RARITY_RARE,
	/obj/item/organ/heart/cursed = FISH_RARITY_RARE,
	/obj/item/organ/heart/demon = FISH_RARITY_GOOD_LUCK_FINDING_THIS,
	/obj/item/organ/monster_core = FISH_RARITY_RARE,
	/obj/item/organ/vocal_cords/colossus = FISH_RARITY_VERY_RARE,
))

/// Weighted list of body parts and organs we can fish out of bioscramblers
GLOBAL_LIST_EMPTY(bioscrambler_fish_table)

/// Typecache of items we're allowed to teleport when fishing out of a bluespace anomaly
GLOBAL_LIST_INIT(bluespace_fishing_teleport_whitelist, typecacheof(list(/obj/item, /mob/living)))
