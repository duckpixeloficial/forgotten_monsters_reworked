
--- MESE LORD ( BOSS 1 ) ------------------------------------------
-- sound : https://freesound.org/people/BrainClaim/sounds/267638/


mobs:register_mob("forgotten_monsters:meselord", {
	--nametag = "Mese Lord Boss" ,
	type = "monster",
	passive = false,
	attack_npcs = false,
	attack_type = "shoot",
	shoot_interval = 0.3,
	shoot_offset = 1.5,
	arrow = "forgotten_monsters:meselord_arrow",
	pathfinding = true,
	reach = 4,
	damage = 4,
	hp_min = 300,
	hp_max = 300,
	armor = 80,
	visual = "mesh",
	visual_size = {x = 18, y = 18},
	mesh = "mese_guardian.b3d",
	collisionbox = {-1.0, -0.8, -1.0, 1.0, 1.0, 1.0},
	--rotate = 180,
	textures = {
		{"mese_guardian.png"},
	},
	glow = 8,
	blood_texture = "default_mese_crystal_fragment.png",
	sounds = {
		random = "mese_lord",
		shoot_attack = "lord_mese_shot"
		--death = "",
	},

	fly = true ,
	fly_in = "air",
	-----------------------
	pathfinding = 1,
	fear_height = 6,
	stepheight = 3,

	walk_velocity = 2,
	run_velocity = 5,
	walk_chance = 50,
	stand_chance = 50,

	jump = true,
	jump_height = 3,
	floats = 0,
	view_range = 40,
	-------------------------




	drops = {
	        {name = "forgotten_monsters:heart_of_mese", chance = 1, min = 1, max = 1},
		{name = "forgotten_monsters:meselord_trophy", chance = 1, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,


	animation = {

		speed_run = 15,
		stand_start = 0,
		stand_end = 10,
		walk_start = 20,
		walk_end = 60,
		run_start = 80,
		run_end = 100,
		shoot_start = 120,
		shoot_end = 160,
	},

	on_spawn = function ()
	core.chat_send_all ("Mese Lord has been awakened..")
	end,
	

	on_die = function(self, pos) 
	
	    core.add_particlespawner({
            amount = 50, 
            time = 2, 
            minpos = {x = pos.x - 2, y = pos.y, z = pos.z - 2},
            maxpos = {x = pos.x + 2, y = pos.y + 2, z = pos.z + 2},
            minvel = {x = -3, y = -3, z = -3}, 
            maxvel = {x = 3, y = 3, z = 3}, 
            minacc = {x = 0, y = -1, z = 0},
            maxacc = {x = 0, y = -1, z = 0}, 
            minexptime = 3, 
            maxexptime = 6, 
            minsize = 4,
            maxsize = 8,
            collisiondetection = false,
            vertical = false, 
            texture = "part_spawn_lord.png", 
            glow = 14, 
        })


	end
	
})



-- ARROW -----------------------------------------------------------

mobs:register_arrow("forgotten_monsters:meselord_arrow", {
	visual = "sprite",
	visual_size = {x = 0.5, y = 0.5},
	textures = {"mese_crystal.png"},
	collisionbox = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
	velocity = 16,
	tail = 1,
	tail_texture = "mese_crystal.png",
	tail_size = 10,
	glow = 5,
	expire = 0.1,

	on_activate = function(self, staticdata, dtime_s)
		self.object:set_armor_groups({immortal = 1, fleshy = 100})
	end,

	on_punch = function(self, hitter, tflp, tool_capabilities, dir)

		if hitter and hitter:is_player() and tool_capabilities and dir then

			local damage = tool_capabilities.damage_groups and
				tool_capabilities.damage_groups.fleshy or 1

			local tmp = tflp / (tool_capabilities.full_punch_interval or 1.4)

			if damage > 6 and tmp < 4 then

				self.object:set_velocity({
					x = dir.x * self.velocity,
					y = dir.y * self.velocity,
					z = dir.z * self.velocity,
				})
			end
		end
	end,

	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 0.5,
			damage_groups = {fleshy = 7},
		}, nil)
	end,
	
	--[[
	hit_mob = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 7},
		}, nil)
	end,
	]]
	

	hit_node = function(self, pos, node)
	end,
})





mobs:register_egg("forgotten_monsters:meselord", "Mese Lord", "mese_lord_egg.png", 0)
--core.register_alias("meselord:meselord", "spawneggs:spectrum")
