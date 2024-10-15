---- GOLEM   ( BOSS 2 )------------------------------------------------------------------------------------------------------
-- sound : https://freesound.org/people/Debsound/sounds/250148/


 local last_attack = 0

mobs:register_mob("forgotten_monsters:golem", {
	--nametag = "Golem Boss" ,
	type = "monster",
	passive = false,
	attack_npcs = false,
	attack_type = "dogfight",
	pathfinding = true,
	reach = 6,
	damage = 12,
	hp_min = 500,
	hp_max = 500,
	armor = 80,
	visual = "mesh",
	visual_size = {x = 17, y = 17},
	mesh = "golem.b3d",
	collisionbox = {-1.0, -0.8, -1.0, 1.0, 2.2, 1.0},
	--rotate = 180,
	textures = {
		{"golem.png"},
	},
	glow = 3,
	blood_texture = "faisca.png",
	makes_footstep_sound = true,
	sounds = {
		--attack = "monster",
		damage = "damage_golem",
		--death = "",
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
	-------------------------
	drops = {
		--{name = " ", chance = 2, min = 1, max = 1},
		{name = "forgotten_monsters:golem_trophy", chance = 1, min = 1, max = 1},
		{name = "forgotten_monsters:letter_queen", chance = 1, min = 1, max = 1},

	},
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 1,
		stand_end = 10,
		walk_start = 20,
		walk_end = 60,
		run_start = 80,
		run_end = 120,
		punch_start = 140,
		punch_end = 180,
	},

	on_spawn = function ()
	minetest.chat_send_all ("Golem Summoned ...")
	end,
	
	
	
	custom_attack = function(self, to_attack)
	
	 local current_time = minetest.get_us_time() -- tempo atual mas emmicro segundos
	 
	  if current_time - last_attack >= 2 * (10^6)  then 
		last_attack = current_time 
		
	        
	   	for _, player in ipairs(minetest.get_connected_players()) do
				     
				     
			local attached = self.attack:get_attach()
			local pp = player:get_pos()

			if attached then
			self.attack = attached
			end
			

			self.attack:punch(self.object, 5.0, {
		        full_punch_interval=5.0,
		        damage_groups={fleshy=12}, 
		        })
		                		
		        
		    self.object:set_animation({x=140, y=180},15, 1, false)      				
			self.attack:set_pos({x=pp.x+5,y=pp.y+3,z=pp.z})     			
			minetest.sound_play("impact_golem", {pos = pos, gain = 0.5})
				   
		 end
	    end
	
	end,
	
	

	on_die = function(self, pos) 
	--[[
	for _,players in pairs(minetest.get_objects_inside_radius(pos,55)) do 
			if players:is_player() then 
				
			end
		end
		]]

            minetest.add_particlespawner({
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
            texture = "part_spawn_golem.png", 
            glow = 14, 
        })

	end


})




mobs:register_egg("forgotten_monsters:golem", "Golem", "egggoelm.png", 1)
