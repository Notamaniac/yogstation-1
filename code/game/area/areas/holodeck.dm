<<<<<<< HEAD:code/game/area/areas/holodeck.dm
/area/holodeck
	name = "Holodeck"
	icon_state = "Holodeck"
	dynamic_lighting = DYNAMIC_LIGHTING_DISABLED
	flags = 0

	var/obj/machinery/computer/holodeck/linked
	var/restricted = 0 // if true, program goes on emag list

/*
	Power tracking: Use the holodeck computer's power grid
	Asserts are to avoid the inevitable infinite loops
*/

/area/holodeck/powered(var/chan)
	if(!requires_power)
		return 1
	if(always_unpowered)
		return 0
	if(!linked)
		return 0
	var/area/A = get_area(linked)
	ASSERT(!istype(A,/area/holodeck))
	return A.powered(chan)

/area/holodeck/usage(var/chan)
	if(!linked)
		return 0
	var/area/A = get_area(linked)
	ASSERT(!istype(A,/area/holodeck))
	return A.usage(chan)

/area/holodeck/addStaticPower(value, powerchannel)
	if(!linked)
		return
	var/area/A = get_area(linked)
	ASSERT(!istype(A,/area/holodeck))
	return A.addStaticPower(value,powerchannel)

/area/holodeck/use_power(var/amount, var/chan)
	if(!linked)
		return 0
	var/area/A = get_area(linked)
	ASSERT(!istype(A,/area/holodeck))
	return A.use_power(amount,chan)


/*
	This is the standard holodeck.  It is intended to allow you to
	blow off steam by doing stupid things like laying down, throwing
	spheres at holes, or bludgeoning people.
*/
/area/holodeck/rec_center
	name = "\improper Recreational Holodeck"

/area/holodeck/rec_center/offline
	name = "Holodeck - Offline"

/area/holodeck/rec_center/court
	name = "Holodeck - Empty Court"

/area/holodeck/rec_center/dodgeball
	name = "Holodeck - Dodgeball Court"

/area/holodeck/rec_center/basketball
	name = "Holodeck - Basketball Court"

/area/holodeck/rec_center/thunderdome
	name = "Holodeck - Thunderdome Arena"

/area/holodeck/rec_center/beach
	name = "Holodeck - Beach"

/area/holodeck/rec_center/lounge
	name = "Holodeck - Lounge"

/area/holodeck/rec_center/medical
	name = "Holodeck - Emergency Medical"

/area/holodeck/rec_center/pet_lounge
	name = "Holodeck - Pet Park"

/area/holodeck/rec_center/firingrange
	name = "Holodeck - Firing Range"

/area/holodeck/rec_center/rollercoaster
	name = "Holodeck - Roller Coaster"

/area/holodeck/rec_center/chapelcourt
	name = "Holodeck - Chapel Courtroom"

/area/holodeck/rec_center/spacechess
	name = "Holodeck - Space Chess"

/area/holodeck/rec_center/kobayashi
	name = "Holodeck - Kobayashi Maru"

// Bad programs

/area/holodeck/rec_center/burn
	name = "Holodeck - Atmospheric Burn Test"
	restricted = 1

/area/holodeck/rec_center/winterwonderland
	name = "Holodeck - Winter Wonderland"
	restricted = 1

/area/holodeck/rec_center/wildlife
	name = "Holodeck - Wildlife Simulation"
	restricted = 1

/area/holodeck/rec_center/bunker
	name = "Holodeck - Holdout Bunker"
	restricted = 1

/area/holodeck/rec_center/anthophila
	name = "Holodeck - Anthophila"
	restricted = 1

/area/holodeck/rec_center/refuel
	name = "Holodeck - Refueling Station"
	restricted = 1

/area/holodeck/rec_center/thunderdome1218
	name = "Holodeck - 1218 AD"
	restricted = 1
=======
/area/holodeck
	name = "Holodeck"
	icon_state = "Holodeck"
	luminosity = 1
	lighting_use_dynamic = 0
	sound_env = LARGE_SOFTFLOOR

	var/obj/machinery/computer/holodeck/linked
	var/restricted = 0 // if true, program goes on emag list

/*
	Power tracking: Use the holodeck computer's power grid
	Asserts are to avoid the inevitable infinite loops
*/

/area/holodeck/powered(var/chan)
	if(!master.requires_power)
		return 1
	if(master.always_unpowered)
		return 0
	if(!linked)
		return 0
	var/area/A = get_area(linked)
	ASSERT(!istype(A,/area/holodeck))
	return A.powered(chan)

/area/holodeck/usage(var/chan)
	if(!linked)
		return 0
	var/area/A = get_area(linked)
	ASSERT(!istype(A,/area/holodeck))
	return A.usage(chan)

/area/holodeck/addStaticPower(value, powerchannel)
	if(!linked)
		return
	var/area/A = get_area(linked)
	ASSERT(!istype(A,/area/holodeck))
	return A.addStaticPower(value,powerchannel)

/area/holodeck/use_power(var/amount, var/chan)
	if(!linked)
		return 0
	var/area/A = get_area(linked)
	ASSERT(!istype(A,/area/holodeck))
	return A.use_power(amount,chan)


/*
	This is the standard holodeck.  It is intended to allow you to
	blow off steam by doing stupid things like laying down, throwing
	spheres at holes, or bludgeoning people.
*/
/area/holodeck/rec_center
	name = "\improper Recreational Holodeck"
	sound_env = ARENA

/area/holodeck/rec_center/offline
	name = "Holodeck - Offline"

/area/holodeck/rec_center/court
	name = "Holodeck - Empty Court"
	sound_env = ARENA

/area/holodeck/rec_center/dodgeball
	name = "Holodeck - Dodgeball Court"
	sound_env = ARENA

/area/holodeck/rec_center/basketball
	name = "Holodeck - Basketball Court"
	sound_env = ARENA

/area/holodeck/rec_center/thunderdome
	name = "Holodeck - Thunderdome Court"
	sound_env = ARENA

/area/holodeck/rec_center/beach
	name = "Holodeck - Beach"

/area/holodeck/rec_center/lounge
	name = "Holodeck - Lounge"
	sound_env = LIVINGROOM

/area/holodeck/rec_center/medical
	name = "Holodeck - Emergency Medical"
	sound_env = ROOM

/area/holodeck/rec_center/pet_lounge
	name = "Holodeck - Pet Playground"
	sound_env = ROOM

/area/holodeck/rec_center/winterwonderland
	name = "Holodeck - Winter Wonderland"
	sound_env = CAVE

// Bad programs

/area/holodeck/rec_center/burn
	name = "Holodeck - Atmospheric Burn Test"
	restricted = 1

/area/holodeck/rec_center/wildlife
	name = "Holodeck - Wildlife Simulation"
	restricted = 1

/area/holodeck/rec_center/bunker
	name = "Holodeck - Holdout Bunker"
	restricted = 1

/area/holodeck/rec_center/anthophila
	name = "Holodeck - Anthophila"
	restricted = 1
>>>>>>> 28ddabeef062fb57d651603d8047812b7521a8ee:code/modules/holodeck/areas.dm
