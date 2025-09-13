-- SOUND GROWLER : https://freesound.org/people/usamah/sounds/464993/
mobs:register_mob("forgotten_monsters:growler", {
	--nametag = "Growler" ,
	type = "monster",
	passive = false,
	attack_npcs = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 3,
	damage = 8,
	hp_min = 80,
	hp_max = 80,
	armor = 80,
	collisionbox = {-0.7, 0.5, -0.7, 0.7, 1.4, 0.7},
	visual = "mesh",
	mesh = "glowler.b3d",
	glow = 2,
	textures = {
		{"growler.png"},
	},
	blood_texture = "growler_blood.png",
	sounds = {
		attack = "growl_growler",
		--death = "",
	},
	fly = true ,
	fly_in = "air",
	pathfinding = 1,
	walk_velocity = 1,
	run_velocity = 3,
	jump_height = 3,
	stepheight = 1.1,
	floats = 1,
	view_range = 25,
	drops = {
		{name = "forgotten_monsters:Growler_Leather", chance = 30, min = 1, max = 1},

	},
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	animation = {
		speed_normal = 40,
		speed_run = 40,
		stand_start = 1,
		stand_end = 80,
		walk_start = 1,
		walk_end = 80,
		run_start = 1,
		run_end = 80,
		punch_start = 100,
		punch_end = 139,
	},
	
	after_activate = function(self, staticdata, def, dtime)
	  if core.get_modpath("mcl_armor") then
	   self.damage = 2
         end
	end,

})

mobs:register_egg("forgotten_monsters:growler", "Growler", "egggrowler.png", 1)
