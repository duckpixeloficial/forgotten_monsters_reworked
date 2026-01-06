mobs:register_mob("forgotten_monsters:bug", {	
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 2,
	damage = 2,
	hp_min = 15,
	hp_max = 15,
	armor = 100,
	collisionbox = {-0.4, -0.1, -0.4, 0.4, 0.7, 0.4},
	visual = "mesh",
	mesh = "bug.b3d",	
	textures = {
		{"bug.png"},
	},
	makes_footstep_sound = true,
	sounds = {
		random = "mobs_bee",
		attack = "mobs_bee",
	},	
	fly = true , 
	fly_in = "air",
	walk_velocity = 1,
	run_velocity = 4,
	jump_height = 1,
	stepheight = 1.1,
	floats = 0,
	view_range = 15,
	drops = {
		
		{name = "forgotten_monsters:bug_meat", chance = 2, min = 1, max = 1},
		
	},
	water_damage = 0,
	lava_damage = 0,	
	animation = {	
		speed_run = 25,
		stand_start = 1,
		stand_end = 10,
		walk_start = 1,
		walk_end = 10,
		run_start = 1,
		run_end = 10,
	},
			
})

mobs:spawn({
	name = "forgotten_monsters:bug",
	nodes = {"air"},
	max_light = 7,
	chance = 12000,
	active_object_count = 1,
	max_height = -40,
})

mobs:register_egg("forgotten_monsters:bug", "Bug", "bug.png",1)

core.register_craftitem("forgotten_monsters:bug_meat", {
	description = "Bug Meat",
	groups = {},
	inventory_image = "Bug_Meat.png",
	_rp_hunger_food = 10,
        _rp_hunger_sat = 10, 
	on_use = minetest.item_eat(10),
})

if core.get_modpath("hunger_ng") ~= nil then
 local add = hunger_ng.add_hunger_data
 add('forgotten_monsters:bug_meat',{ satiates = 10})
end
