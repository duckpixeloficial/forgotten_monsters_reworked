-- SOUNDS LINK :
-- Bones : https://freesound.org/people/spookymodem/sounds/202091/
-- Axe : https://freesound.org/people/Wdfourtee/sounds/192055/


---- SKULL SWORD  ------------------------------------------------------------------------------------------------------

mobs:register_mob("forgotten_monsters:skull_berserker", {
	--nametag = "Skull Berserker" ,
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 3,
	damage = 4,
	hp_min = 15,
	hp_max = 15,
	armor = 100,
	collisionbox = {-0.4, -0, -0.4, 0.4, 1.8, 0.4},
	visual = "mesh",
	visual_size = {x = 9, y = 9},
	mesh = "skull_sword_anim.b3d",
	--rotate = 180,
	textures = {
		{"skull_berserker.png"},
	},
	--glow = 4,
	blood_texture = "buried_bone.png",
	makes_footstep_sound = true,
	sounds = {
		attack = "axe_sound",
		death = "falling_bones",
	},
    -----------------------
	pathfinding = 1,
	fear_height = 6,
	stepheight = 1.1,
	walk_velocity = 1,
	run_velocity = 4,
	walk_chance = 50,
	stand_chance = 50,
	jump = true,
	jump_height = 1.1,
	floats = 0,
	view_range = 25,
    -------------------------
	drops = {
		{name = "forgotten_monsters:buried_bone", chance = 1, min = 1, max = 2},
	        {name = "forgotten_monsters:axe_bones", chance = 5, min = 1, max = 1},
		
	},
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 30,
		stand_start = 1,
		stand_end = 20,
		walk_start = 30,
		walk_end = 70,
		run_start = 80,
		run_end = 90,
		--punch_start = 80,
		--punch_end = 90,
	},
})





mobs:register_egg("forgotten_monsters:skull_berserker", "Skull Berserker", "skull_berserker_egg.png", 1)

