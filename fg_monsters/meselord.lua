
--- MESE LORD ( BOSS 1 ) ------------------------------------------
-- sound : https://freesound.org/people/BrainClaim/sounds/267638/

local arrow_damage = 7

mobs:register_mob("forgotten_monsters:meselord", {
	--nametag = "Mese Lord Boss" ,
	type = "monster",
	passive = false,
	attack_npcs = false,
	attack_type = "shoot",
	shoot_interval = 1.3,
	shoot_offset = 1.5,
	arrow = "forgotten_monsters:meselord_arrow",
	pathfinding = true,
	reach = 4,
	damage = 7,
	hp_min = 450,
	hp_max = 450,
	armor = 80,
	visual = "mesh",
	visual_size = {x = 18, y = 18},
	mesh = "mese_guardian.b3d",
	collisionbox = {-1.0, -0.8, -1.0, 1.0, 1.0, 1.0},
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
	knock_back = false,
	die_rotate = true,
	-------------------------
	drops = {
	        {name = "forgotten_monsters:heart_of_mese", chance = 1, min = 1, max = 1},
		--{name = "forgotten_monsters:meselord_trophy", chance = 1, min = 1, max = 1},
		{name = "forgotten_monsters:forgotten_staff", chance = 10, min = 1, max = 1},
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

	do_custom = function(self, dtime)
	  local health = self.health / 0.25 
	  fg_hud_boss(self,dtime,"Mese_Lord",health,"Mese Lord","boss_bar2.png",1,25)  
	end,
	
	on_die = function(self, pos) 
	    remover_fg_hud_boss(self,dtime)	
	    part_summon (pos)
	end
	
})

-- ARROW -----------------------------------------------------------
mobs:register_arrow("forgotten_monsters:meselord_arrow", {
	visual = "sprite",
	visual_size = {x = 0.7, y = 0.7},
	textures = {"energy_mese.png"},
	collisionbox = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
	velocity = 35,
	--tail = 1,
	--tail_texture = "energy_mese.png",
	--tail_size = 3,
	--expire = 0.3,
	glow = 5,
	
	on_activate = function(self, staticdata, dtime_s)
	   self.object:set_armor_groups({immortal = 1, fleshy = 100})	
	        	   
	   self.damage = 7
	    
	  if core.get_modpath("mcl_armor") then
	    self.damage = 2
	   -- core.log(tostring( self.damage))	  
          end
          
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
			damage_groups = {fleshy = self.damage},
		}, nil)
	end,
	
	
	hit_node = function(self, pos, node)
	end,
})

mobs:register_egg("forgotten_monsters:meselord", "Mese Lord", "mese_lord_egg.png", 0)
