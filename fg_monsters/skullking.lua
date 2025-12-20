---- SKULL KING  ( BOSS FINAL ) ------------------------------------------------------------------------------------------------------
-- sound attack : https://freesound.org/people/TomRonaldmusic/sounds/607201/
-- sound hummer : https://freesound.org/people/TomRonaldmusic/sounds/607201/
local last_attack = 0
 
mobs:register_mob("forgotten_monsters:sking", {
	--nametag = "Skull King Boss" ,
	type = "monster",
	passive = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 4,
	damage = 12,
	hp_min = 1000,
	hp_max = 1000,
	armor = 80,
	visual = "mesh",
	visual_size = {x = 12, y = 12},
	mesh = "skull_king.b3d",
	collisionbox = {-0.4, -0, -0.4, 0.4, 1.8, 0.4},
	textures = {
		{"skull_king.png"},
	},
	blood_texture = "buried_bone.png",
	makes_footstep_sound = true,
	sounds = {
		attack = "skullking",
		death = "falling_bones",
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
		{name = "forgotten_monsters:hammer", chance = 10, min = 1, max = 1},
		--{name = "forgotten_monsters:skullking_trophy", chance = 1, min = 1, max = 1},
		{name = "forgotten_monsters:helmet_skullking", chance = 1, min = 1, max = 1},
	},
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 25,
		stand_start = 0,
		stand_end = 10,
		walk_start = 20,
		walk_end = 60,
		run_start = 70,
		run_end = 90,
		punch_start = 100,
		punch_end =120,
		punch_speed = 15,
		--[[
		die_start = 100,
		die_end = 100,
		die_speed = 20,
		die_loop = false,
		die_rotate = true,
		]]
	},
	
	after_activate = function(self, staticdata, def, dtime)
	  if core.get_modpath("mcl_armor") then
	   self.damage = 4
	   --core.log(tostring( self.damage))
         end
	end,
	
	do_custom = function(self, dtime)
	  local health = self.health / 0.5 
	  fg_hud_boss(self,dtime,"Skull_King",health,"Skull King","boss_bar1.png",1,25)  
	end,
		
	custom_attack = function(self, to_attack)	
	 local current_time = core.get_us_time()	 
	  if current_time - last_attack >= 4 * (10^6)  then 
		last_attack = current_time 
			        
	   	for _, player in ipairs(core.get_connected_players()) do
				     				     
			local attached = self.attack:get_attach()
			local pp = self.attack:get_pos()
			local pos_sk = self.object:get_pos()
			local p_impact = math.random(0,5)

			if attached then
			self.attack = attached
			end
	    
		        self.attack:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = self.damage}
			}, nil)
 
		        part_sking (pos_sk)   		
		        
		        self.object:set_animation({x=100, y=120},15, 1, false)      				
			self.attack:set_pos({x=pp.x,y=pp.y+p_impact,z=pp.z})     
			core.sound_play("air_impact", {pos = pos_sk, gain = 0.5})

			core.after(1 , function ()
				self.object:set_animation({x=20, y=60},15, 1, false)   			
			end)
				   
		 end
	    end
	
	end,
		
	on_die = function(self, pos) 
	    remover_fg_hud_boss(self,dtime)
	    part_summon (pos)
	end
})

mobs:register_egg("forgotten_monsters:sking", "Skull King", "skull_king_egg.png", 0)
