---- GOLEM   ( BOSS 2 )------------------------------------------------------------------------------------------------------
-- sound : https://freesound.org/people/Debsound/sounds/250148/
mobs:register_mob("forgotten_monsters:golem", {
	--nametag = "Golem Boss" ,
	type = "monster",
	passive = false,
	attack_npcs = false,
	attack_type = "dogshoot",
	shoot_interval = 3,
	shoot_offset = 1.9,
	arrow = "forgotten_monsters:dark_stone_arrow",
	pathfinding = true,
	reach = 6,
	damage = 11,
	hp_min = 800,
	hp_max = 800,
	armor = 80,
	visual = "mesh",
	visual_size = {x = 13, y = 13},
	mesh = "golem.b3d",
	collisionbox = {-1.0, -0, -1.0, 1.0, 2.2, 1.0},
	textures = {
		{"golem.png"},
	},
	glow = 3,
	blood_texture = "faisca.png",
	makes_footstep_sound = true,
	sounds = {
		--attack = "monster",
		damage = "damage_golem",
		death = "punch_golem",
		shoot_attack = "punch_golem",
	},	
	-----------------------
	pathfinding = 1,
	fear_height = 6,
	stepheight = 3,
	walk_velocity = 2,
	run_velocity = 4,
	walk_chance = 50,
	stand_chance = 50,
	jump = true,
	jump_height = 3,
	floats = 0,
	view_range = 35,
	knock_back = false,
	-------------------------
	drops = {
		--{name = "forgotten_monsters:golem_trophy", chance = 1, min = 1, max = 1},
		{name = "forgotten_monsters:eye_of_the_golem", chance = 1, min = 1, max = 1},
		{name = "forgotten_monsters:forgotten_sword", chance = 10, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 1,
		stand_end = 20,
		walk_start = 45,
		walk_end = 74,
		run_start = 45,
		run_end = 75,
		punch_start = 80,
		punch_end = 100,
		punch_loop = false,
		punch2_start = 105,
		punch2_end = 125, -- 100 termina a espada
		punch2_loop = false,
		shoot_start =130,
		shoot_end = 150,
		shoot_speed = 10,
		--shoot_loop = false,
		die_start = 155,
		die_end = 180,
		die_speed = 20,
		die_loop = false,
	},
        
	after_activate = function(self, staticdata, def, dtime)
	  local pos_boss = tostring(self.object:get_pos())
	  
	  if core.get_modpath("mcl_armor") then
	   self.damage = 3
         end
	end,

	custom_attack = function(self, to_attack)
        local pp = self.attack:get_pos()
        
	self.attack_count = (self.attack_count or 0) + 1
	if self.attack_count < 4 then return end
	self.attack_count = 0

	self:set_animation("punch", true)
        core.sound_play("punch_golem", {pos = pos_sk, gain = 0.5})
        part_sking (pp) 
        
	return true 
	end,	
})

-- Golem ARROWS : ======================================================================
mobs:register_arrow("forgotten_monsters:dark_stone_arrow", {
	visual = "cube",
	visual_size = {x = 0.5, y = 0.5},
	textures = {"dark_stone_arrow.png","dark_stone_arrow.png","dark_stone_arrow.png","dark_stone_arrow.png","dark_stone_arrow.png","dark_stone_arrow.png"},
	collisionbox = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	velocity = 25,
	glow = 5,
	
	on_activate = function(self, staticdata, dtime_s)
	   self.object:set_armor_groups({immortal = 1, fleshy = 100})	
	        	   
	   self.damage = 7
	    
	  if core.get_modpath("mcl_armor") then
	    self.damage = 2	  
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

mobs:register_egg("forgotten_monsters:golem", "Golem", "golem_egg.png", 0)
