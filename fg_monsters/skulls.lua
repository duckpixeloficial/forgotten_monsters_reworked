-- SOUNDS LINK :
-- Bones : https://freesound.org/people/spookymodem/sounds/202091/

-- NORMAL SKULL

mobs:register_mob("forgotten_monsters:skull", {
	--nametag = "skull" ,
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 3,
	hp_min = 15,
	hp_max = 15,
	armor = 100,
	collisionbox = {-0.4, -0, -0.4, 0.4, 1.8, 0.4},
	visual = "mesh",
	visual_size = {x = 9, y = 9},
	mesh = "skull_normal.b3d",
	--rotate = 180,
	textures = {
		{"skull.png"},
	},
	blood_texture = "buried_bone.png",
	makes_footstep_sound = true,
	sounds = {
		--attack = "",
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
		{name = "forgotten_monsters:buried_bone", chance = 1, min = 1, max = 1},


	},
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 1,
		stand_end = 20,
		walk_start = 30,
		walk_end = 70,
		run_start = 80,
		run_end = 100,
		--punch_start = 80,
		--punch_end = 100,
	},

	
})






mobs:register_egg("forgotten_monsters:skull", "Skull", "eggsskull.png", 1)

