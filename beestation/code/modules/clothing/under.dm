/obj/item/clothing/under/bee/cluwne
    name = "clown suit"
    desc = "<i>'HONK!'</i>"
    icon_state = "cluwne"
    item_state = "cluwne"
    item_color = "cluwne"
    resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
    item_flags = DROPDEL
    can_adjust = 0

/obj/item/clothing/under/bee/cluwne/Initialize()
    .=..()
    add_trait(TRAIT_NODROP, CURSED_ITEM_TRAIT)

/obj/item/clothing/under/bee/cluwne/equipped(mob/living/carbon/user, slot)
    if(!ishuman(user))
        return
    if(slot == SLOT_W_UNIFORM)
        var/mob/living/carbon/human/H = user
        H.dna.add_mutation(CLUWNEMUT)
    return ..()