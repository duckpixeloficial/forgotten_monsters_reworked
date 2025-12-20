

local last_attack = 0

mobs:register_mob("forgotten_monsters:hungry", {
	--nametag = "Hungry" ,
	type = "monster",
	passive = false,
	attack_npcs = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 5,
	damage = 8,
	hp_min = 50,
	hp_max = 50,
	armor = 100,
	collisionbox = {-0.4, -0, -0.4, 0.4, 1.0, 0.4},
	visual = "mesh",
	mesh = "hungry.b3d",
	visual_size = {x = 9, y = 9},
	textures = {
		{"hungry.png"},
	},
	blood_texture = "folha.png",
	makes_footstep_sound = true,
	knock_back = false,
	sounds = {

		attack ="hungry_attack",
		random = "hungry_sheet",
		death = "hungry_sheet",
	},
	walk_velocity =0,
	run_velocity = 0,
	jump_height = 0,
	stepheight = 1.1,
	floats = 0,
	view_range = 20,
	drops = {
		{name = "forgotten_monsters:hungry_sheet", chance = 1, min = 4, max = 4},
	},
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	animation = {
	speed_normal = 15,
		speed_run = 0,
		stand_start = 1,
		stand_end = 19,
		punch_start = 30,
		punch_end = 50,
	},
               
	custom_attack = function(self, to_attack)
	
		   local current_time = core.get_us_time() 		
		   if current_time - last_attack >= 2 * (10^6)  then 
		   last_attack = current_time 
		   		           			   
			  for _, player in ipairs(core.get_connected_players()) do												
			   local attached = self.attack:get_attach()
			   local pp = player:get_pos()			 
   
			   if attached then
			    self.attack = attached
			   end
			     
			   self.attack:punch(self.object, 5.0, {
				   full_punch_interval=5.0,
				   damage_groups={fleshy=8}, 
				   })
								   				   
			   self.object:set_animation({x=30, y=50},15, 1, false)      				    
			   core.sound_play("hungry_attack", {pos = pp, gain = 0.5})
 					  
			end
		   end	   
	   end,
	  

})

mobs:register_egg("forgotten_monsters:hungry", "Hungry", "hungryegg.png", 1)
