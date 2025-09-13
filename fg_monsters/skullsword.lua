-- SOUNDS LINK :
-- Bones : https://freesound.org/people/spookymodem/sounds/202091/
-- sword : https://freesound.org/people/Wdfourtee/sounds/192055/

mobs:register_mob("forgotten_monsters:ssword", {
	--nametag = "Skull Sword" ,
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 3,
	damage = 2,
	hp_min = 15,
	hp_max = 15,
	armor = 100,
	collisionbox = {-0.4, -0, -0.4, 0.4, 1.8, 0.4},
	visual = "mesh",
	visual_size = {x = 9, y = 9},
	mesh = "skull_sword_anim.b3d",
	textures = {
		{"skull_sword.png"},
	},
	blood_texture = "buried_bone.png",
	makes_footstep_sound = true,
	sounds = {
		attack = "sword_skull",
		death = "falling_bones",
		random = "skeleton_random.2",
	},
	-----------------------
	pathfinding = 1,
	fear_height = 6,
	stepheight = 1.1,
	walk_velocity = 1,
	run_velocity = 5,
	walk_chance = 50,
	stand_chance = 50,
	jump = true,
	jump_height = 1.1,
	floats = 0,
	view_range = 25,
	-------------------------
	drops = {
		{name = "forgotten_monsters:buried_bone", chance = 5, min = 1, max = 2},
		{name = "forgotten_monsters:sword_bones", chance = 20, min = 1, max = 1},
		
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
	},
})

mobs:register_egg("forgotten_monsters:ssword", "Skull Sword", "eggsskullsword.png", 1)
