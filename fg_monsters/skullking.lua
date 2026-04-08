---- SKULL KING  ( BOSS FINAL ) ------------------------------------------------------------------------------------------------------
-- sound attack : https://freesound.org/people/TomRonaldmusic/sounds/607201/
-- sound hummer : https://freesound.org/people/TomRonaldmusic/sounds/607201/
 mobs:register_mob("forgotten_monsters:sking", {
	--nametag = "Skull King Boss" ,
	type = "monster",
	passive = false,
	attack_type = "dogshoot",
	shoot_interval = 3,
	shoot_offset = 1.3,
	arrow = "forgotten_monsters:skullking_arrow",
	pathfinding = true,
	reach = 4,
	damage = 12,
	hp_min = 1000,
	hp_max = 1000,
	armor = 80,
	visual = "mesh",
	visual_size = {x = 15, y = 15},
	mesh = "skull_king.b3d",
	collisionbox = {-0.5, -0, -0.5, 0.5, 3, 0.5},
	textures = {
		{"Skull_King_hammer.png"},
	},
	blood_texture = "buried_bone.png",
	makes_footstep_sound = true,
	sounds = {
		attack = "skullking",
		death = "falling_bones",
		shoot_attack = "summon_boss",
	},
	-----------------------
	pathfinding = 1,
	fear_height = 6,
	stepheight = 3,

	walk_velocity = 2,
	run_velocity = 6,
	walk_chance = 50,
	stand_chance = 50,

	jump = true,
	jump_height = 3,
	floats = 0,
	view_range = 35,
	knock_back = false,
	die_rotate = true,
	-------------------------
	drops = {
		{name = "forgotten_monsters:hammer", chance = 5, min = 1, max = 1},
		--{name = "forgotten_monsters:skullking_trophy", chance = 1, min = 1, max = 1},
		{name = "forgotten_monsters:helmet_skullking", chance = 1, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 25,
		stand_start = 1,
		stand_end = 20,
		walk_start = 45,
		walk_end = 75,
		run_start = 45,
		run_end = 75,
		punch_start = 105,
		punch_end = 125,
		punch_loop = false,
		punch2_start = 80,
		punch2_end = 100, -- 100 termina a espada
		punch2_loop = false,
		shoot_start = 1,
		shoot_end = 20,
		--shoot_start =130,
		--shoot_end = 150,
		--shoot_speed = 10,
		--shoot_loop = false,
		die_start = 155,
		die_end = 200,
		die_speed = 20,
		die_loop = false,
	},
	
	after_activate = function(self, staticdata, def, dtime)
	  local pos_boss = tostring(self.object:get_pos())
	  
	  if core.get_modpath("mcl_armor") then
	   self.damage = 4
          end

	end,
	
	custom_attack = function(self, to_attack)
        local pp = self.attack:get_pos()
        
	self.attack_count = (self.attack_count or 0) + 1
	if self.attack_count < 3 then return end
	self.attack_count = 0

	self:set_animation("punch", true)
        core.sound_play("air_impact", {pos = pos_sk, gain = 0.5})
        part_sking (pp) 
        
	return true 
	end,	
	
	--[[	
	on_die = function(self, pos) 
	    self:death_anim()
	    part_summon (pos)
	    return true
	end
	]]
})

-- SkullKing ARROWS : ======================================================================
mobs:register_arrow("forgotten_monsters:skullking_arrow", {
	visual = "cube",
	--visual = "sprite",
	visual_size = {x = 0.8, y = 0.8},
	textures = {"skull_arrow_top.png","skullking_arrosw.png","skull_arrow_side.png","skull_arrow_side.png","skull_arrow_side.png","skull_arrow.png"},
	--textures = {"smoke_fg.png"},
	collisionbox = {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
	velocity = 35,
	--
	tail = 1,
	tail_texture = "smoke_fg.png",
	tail_size = 12,
	--
	glow = 5,
	rotate = 90,

	on_activate = function(self, staticdata, dtime_s)
	   self.object:set_armor_groups({immortal = 1, fleshy = 100})	
	        	   
	   self.damage = 10
	    
	  if core.get_modpath("mcl_armor") then
	    self.damage = 3	  
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

mobs:register_egg("forgotten_monsters:sking", "Skull King", "skull_king_egg.png", 0)
