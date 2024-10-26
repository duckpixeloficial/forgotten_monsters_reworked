

local last_attack = 0

mobs:register_mob("forgotten_monsters:hungry", {
	--nametag = "Hungry" ,
	type = "monster",
	passive = false,
	attack_npcs = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 5,
	--damage = 8,
	hp_min = 120,
	hp_max = 120,
	armor = 80,
	--  , chao ,  ,  , tag ,
	collisionbox = {-0.4, -0.3, -0.4, 0.4, 2.5, 0.4},
	visual = "mesh",
	--rotate = 180,
	mesh = "hungry_new.b3d",
	visual_size = {x = 6, y = 6},
	textures = {
		{"hungry_new.png"},
	},
	blood_texture = "folha.png",
	makes_footstep_sound = true,
	knock_back = false,
	sounds = {

		--attack ="mordida_hungry",
		--death = "",
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
		stand_start = 20,
		stand_end = 20,
		--walk_start = 15,
		--walk_end = 33,
		--run_start = 35,
		--run_end = 53,
		punch_start = 100,
		punch_end = 130,
	},

	custom_attack = function(self, to_attack)
	
		local current_time = core.get_us_time() -- tempo atual mas emmicro segundos
		
		 if current_time - last_attack >= 3 * (10^6)  then 
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
								   
				   
			   self.object:set_animation({x=100, y=130},65, 1, false)      				    
			   core.sound_play("hungry_attack", {pos = pos, gain = 0.5})
   
					  
			end
		   end
	   
	   end,


})





mobs:register_egg("forgotten_monsters:hungry", "Hungry", "hungryegg.png", 1)




