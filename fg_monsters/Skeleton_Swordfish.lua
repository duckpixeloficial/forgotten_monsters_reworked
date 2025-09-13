local fly_sw = {"default:water_source","default:river_water_source","group:water"}

mobs:register_mob("rb_animals:skeleton_swordfish", {
	type = "monster",
	attack_type = "dogfight",
	passive = false,
	attack_animals = true , 
	attack_players = true,
	pathfinding = true,
	reach = 1,
	damage = 3,
	hp_min = 20,
	hp_max = 20,
	armor = 100,
	collisionbox = {-0.4, -0.0, -0.4, 0.4, 0.5, 0.4},
	visual = "mesh",
	mesh = "Skeleton_Swordfish.b3d",
	textures = {
		{"Skeleton_Swordfish.png"},
		
	},
	makes_footstep_sound = false,
	sounds = {
	},
	fly = true , 
	fly_in = fly_sw,
	walk_velocity = 2,
	run_velocity = 4,
	jump_height = 0,
	stepheight = 0.0,
	fall_speed = 0,
	-- floats = 0,
	view_range = 15,
	drops = {	
	     {name = "forgotten_monsters:spine_sword", chance = 20, min = 1, max = 1},		
	},
	water_damage = 0,
	lava_damage = 6,
	light_damage = 0,
	animation = {
		speed_normal = 20,
		stand_start = 1,
		stand_end = 40,
		fly_start = 1,			
		fly_end = 40,
		walk_start = 1,
		walk_end = 40,
		run_start = 1,
		run_end = 40,
		--punch_start = 1,
		--punch_end = 40,
	},
	
})

mobs:register_spawn("rb_animals:shark", {
		"default:water_flowing", 
		"default:water_source",
		}, 14, 5, 6000, 5, 10,-5, true)


mobs:register_egg("rb_animals:skeleton_swordfish","Skeleton Swordfish","buried_bone_block.png", 1)
