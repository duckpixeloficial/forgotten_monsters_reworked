
--- MESE LORD ( BOSS 1 ) ------------------------------------------
-- sound : https://freesound.org/people/BrainClaim/sounds/267638/

local arrow_damage = 7

---- MESE GUARDIAN: ========================================================
mobs:register_mob("forgotten_monsters:meselord", {
	--nametag = "Mese Lord Boss" ,
	type = "monster",
	passive = false,
	attack_npcs = false,
	attack_type = "dogshoot",
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
	visual_size = {x = 8, y = 8},
	mesh = "mese_guardian.b3d",
	collisionbox = {-1.0, -2.0, -1.0, 1.0, 1.5, 1.0},
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
	--fly = true ,
	--fly_in = "air",
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
	--drops = {},
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	animation = {

		speed_run = 15,
		stand_start = 1,
		stand_end = 40,
		walk_start = 45,
		walk_end = 75,
		run_start = 45,
		run_end = 75,
		shoot_start = 130,
		shoot_end = 149,
		punch_start = 80,
		punch_end = 119,
		punch_loop = true,
		die_start = 155,
		die_end = 184,
		die_speed = 20,
		die_loop = false,
	},
        
        custom_attack = function(self, to_attack)
        local pp = self.attack:get_pos()
        
	self.attack_count = (self.attack_count or 0) + 1
	if self.attack_count < 4 then return end
	self.attack_count = 0

	self:set_animation("punch", true)
        core.sound_play("lord_mese_shot", {pos = pos_sk, gain = 0.5})
        part_sking (pp) 
        
	return true 
	end,
	
})

-- MESE ARROWS : ======================================================================
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
