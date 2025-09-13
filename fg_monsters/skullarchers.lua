-- SOUNDS LINK :
-- Bones : https://freesound.org/people/spookymodem/sounds/202091/

mobs:register_mob("forgotten_monsters:sarchers", {
	--nametag = "skull archers" ,
	type = "monster",
	passive = false,
	attack_type = "shoot",
        arrow = "forgotten_monsters:sarchers_arrow",
	shoot_interval = 2.1,
	shoot_offset = 1.5,
	pathfinding = true,
	reach = 20,
	damage = math.random(3,5),
	hp_min = 24,
	hp_max = 24,
	armor = 100,
	collisionbox = {-0.4, -0, -0.4, 0.4, 1.8, 0.4},
	visual = "mesh",
	visual_size = {x = 9, y = 9},
	mesh = "skull_archers.b3d",
	--rotate = 180,
	textures = {
		{"skull_arch.png"},
	},
	--glow = 4,
	blood_texture = "buried_bone.png",
	makes_footstep_sound = true,
	sounds = {
		--attack = "",
		death = "falling_bones",
		random = "skeleton_random.2",
	},
    -----------------------
	pathfinding = 1,
	fear_height = 6,
	stepheight = 1.1,
	walk_velocity = 1,
	run_velocity = 4,
	walk_chance = 50,
	stand_chance = 50,
	jump = true,
	jump_height = 1.1,
	floats = 0,
	view_range = 25,
    -------------------------	
	drops = {
		{name = "forgotten_monsters:buried_bone", chance = 5, min = 1, max = 2,},
		
	},
	water_damage = 0,
	lava_damage = 1,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 1,
		stand_end = 20,
		walk_start = 30,
		walk_end = 70,
		run_start = 30,
		run_end = 70,
		shoot_start = 80,
		shoot_end = 110,
	},
})

-- ARROW ================================================================================================
core.register_craftitem("forgotten_monsters:skull_arrow", {
	description = "Skull Archers Arrow",
	inventory_image = "arrow_stone.png",
	groups = {not_in_creative_inventory = 1}
})

mobs:register_arrow("forgotten_monsters:sarchers_arrow", { 

   visual = "wielditem",
   visual_size = {x=0.3, y=0.3},
   velocity = 35,
   textures = {"forgotten_monsters:skull_arrow"}, 
   --tail = 1,
   --tail_texture = "particules_arrow.png",
   --tail_size = 2.0,
   rotate = 180,
   damage = 2,

	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 4},

			core.sound_play("arrow_hit_1", {
			pos = pos,
			gain = 1.0,
			max_hear_distance = 5,
		})


		}, nil)
	end,

	hit_mob = function(self, player)
		player:punch(self.object,1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 3},
			core.sound_play("arrow_hit_1", {
			pos = pos,
			gain = 1.0,
			max_hear_distance = 5,
		})


		}, nil)
	end,

	hit_node = function(self, pos, node)
	end
})

mobs:register_egg("forgotten_monsters:sarchers", "skull Archers", "eggsarc.png", 1)
