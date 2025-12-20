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
	damage = 11,
	hp_min = 800,
	hp_max = 800,
	armor = 80,
	visual = "mesh",
	visual_size = {x = 17, y = 17},
	mesh = "golem.b3d",
	collisionbox = {-1.0, -0.8, -1.0, 1.0, 2.2, 1.0},
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
	die_rotate = true,
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
		stand_end = 10,
		walk_start = 20,
		walk_end = 60,
		run_start = 80,
		run_end = 120,
		punch_start = 140,
		punch_end = 180,
	},
        
        after_activate = function(self, staticdata, def, dtime)
	  if core.get_modpath("mcl_armor") then
	   self.damage = 3	  
          end
	end,
	
        do_custom = function(self, dtime)
	  local health = self.health / 0.4 
	  fg_hud_boss(self,dtime,"Skull_King",health,"Dark Golem","boss_bar3.png",1,25)  
	end,
	
	custom_attack = function(self, to_attack)	
	 local current_time = core.get_us_time()
	 
	  if current_time - last_attack >= 4 * (10^6)  then 
		last_attack = current_time 			        
	   	for _, player in ipairs(core.get_connected_players()) do
				     				     
			local attached = self.attack:get_attach()
			local pp = self.attack:get_pos()
			local pos_gl = self.object:get_pos()
			local p_impact = math.random(0,3)

			if attached then
			self.attack = attached
			end
			
			self.attack:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = self.damage}
			}, nil)
			      		
		     -- https://freesound.org/people/julianmateo_/sounds/522696/    
		        self.object:set_animation({x=140, y=180},15, 1, false)      				
			self.attack:set_pos({x=pp.x,y=pp.y+p_impact,z=pp.z})     			
			core.sound_play("punch_golem", {pos = pos, gain = 1})				   
		 end
	     end	
	end,

	on_die = function(self, pos) 
	    remover_fg_hud_boss(self,dtime)	
            part_summon (pos)
	end
})

mobs:register_egg("forgotten_monsters:golem", "Golem", "golem_egg.png", 0)
