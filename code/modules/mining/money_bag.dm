/*****************************Money bag********************************/

/obj/item/weapon/storage/bag/money
	name = "money bag"
	icon_state = "moneybag"
	force = 10
	throwforce = 0
<<<<<<< HEAD
	resistance_flags = FLAMMABLE
	obj_integrity = 100
	max_integrity = 100
	w_class = WEIGHT_CLASS_BULKY
	max_w_class = WEIGHT_CLASS_NORMAL
	storage_slots = 80
	max_combined_w_class = 40
=======
	burn_state = FLAMMABLE
	burntime = 20
	w_class = 4
	max_w_class = 3
	storage_slots = INFINITY
	max_combined_w_class = INFINITY
>>>>>>> 28ddabeef062fb57d651603d8047812b7521a8ee
	can_hold = list(/obj/item/weapon/coin, /obj/item/stack/spacecash)


/obj/item/weapon/storage/bag/money/vault/New()
	..()
	new /obj/item/weapon/coin/silver(src)
	new /obj/item/weapon/coin/silver(src)
	new /obj/item/weapon/coin/silver(src)
	new /obj/item/weapon/coin/silver(src)
	new /obj/item/weapon/coin/gold(src)
	new /obj/item/weapon/coin/gold(src)
	new /obj/item/weapon/coin/adamantine(src)