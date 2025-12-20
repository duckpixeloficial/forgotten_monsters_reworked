
-- sound : https://freesound.org/people/Legnalegna55/sounds/547558/
mobs:register_mob("forgotten_monsters:spectrum", {
	--nametag = "Spectrum" ,
	type = "monster",
	passive = false,
	attack_npcs = false,
	attack_type = "shoot",
	shoot_interval = 1.5,
	shoot_offset = 1.5,
	arrow = "forgotten_monsters:spectrum_arrow",
	pathfinding = true,
	reach = 3,
	damage = 6,
	hp_min = 15,
	hp_max = 15,
	armor = 80,
	collisionbox = {-0.4, -0, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	visual_size = {x = 9, y = 9},
	mesh = "spectrum.b3d",
	textures = {
		{"spectrum.png"},
	},
	glow = 3,
	--blood_texture = "blood_spectrum.png",
	sounds = {
		random = "spectrum",
		shoot_attack = "orb_spectrum",
	},

	fly = true ,
	fly_in = "air",
	pathfinding = 1,
	walk_velocity = 1,
	run_velocity = 5,
	jump_height = 1,
	stepheight = 1.1,
	floats = 0,
	view_range = 25,
	drops = {
		{name = "forgotten_monsters:spectrum_orb", chance = 5, min = 1, max =1},
	},
	water_damage = 0,
	lava_damage = 0,
	light_damage = 0,
	animation = {

		speed_run = 15,
		stand_start = 1,
		stand_end = 39,
		walk_start = 50,
		walk_end = 89,
		run_start = 50,
		run_end = 89,
		shoot_start = 100,
		shoot_end = 129,
	},

})
-- ARROW ================================================================================================
core.register_craftitem("forgotten_monsters:spectrum_magic_arrow", {
	description = "Spectrum Magic arrow",
	inventory_image = "spectrum_orb.png",
	groups = {not_in_creative_inventory = 1}
})

mobs:register_arrow("forgotten_monsters:spectrum_arrow", {
	
	visual = "wielditem",
	visual_size = {x=0.3, y=0.3},
	velocity = 35,
	textures = {"forgotten_monsters:spectrum_magic_arrow"}, 
	--rotate = 180,
	damage = 2,
	glow = 5,
	
	collisionbox = {-0.5,-0.5,-0.5, 0.5,0.5,0.5},
        selectionbox = {-0.5,-0.5,-0.5, 0.5,0.5,0.5},


	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 3},
		}, nil)
	end,

	hit_mob = function(self, player)
		player:punch(self.object,1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 3},
		}, nil)
	end,

	hit_node = function(self, pos, node)
	end
})

mobs:register_egg("forgotten_monsters:spectrum", "Spectrum", "spectrum_egg.png", 0)

-- SPECTRUM ORB
core.register_craftitem("forgotten_monsters:spectrum_orb", {
    description = "Spectrum Orb",
    inventory_image = "spectrum_orb.png",
    light_source = 3,
})

-- SPECTRUM ORB BLOCK :
core.register_node("forgotten_monsters:spectrum_orb_block", {
	description = "Spectrum Orb Block",
	groups = {cracky = 2,pickaxey=2},
	_mcl_hardness = 1,
	_mcl_blast_resistance = 2,
	drop = "forgotten_monsters:spectrum_orb_block",
	light_source = 6,
	tiles = {{
		name = "anim_orb_block.png",
		animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 2}
	},
	},

})

core.register_tool("forgotten_monsters:translocation_rod", {
    description = "Translocation Rod",
    inventory_image = "translocation_rod.png",
    range = 30,
    stack_max= 1,
	sound = {
	--punch_use=" trod",
	breaks = "default_tool_breaks",
	punch_use_air="trod",
	},

     on_use = function(itemstack, user, pointed_thing)
        local dir = user:get_look_dir()
        local pos = user:get_pos()
      
        if pointed_thing and pointed_thing.type == "node" then
	    local node = minetest.get_node(pointed_thing.under)
	    if node.name ~= "air" then
		return -- core.log("n ar")
	    end
	end
     
        itemstack:add_wear_by_uses(500)
        
        local target = {
            x = pos.x + dir.x * 15,
            y = pos.y + dir.y * 15,
            z = pos.z + dir.z * 15
        }
        local node = minetest.get_node(target)
        if node and node.name == "air" then
            user:set_pos(target)
            for i = 1, 10 do
                minetest.add_particle({
                    pos = {x = target.x + math.random(-0.5,0.5), y = target.y + 1, z = target.z + math.random(-0.5,0.5)},
                    velocity = {x = math.random(-1,1), y = math.random(1,3), z = math.random(-1,1)},
                    acceleration = {x = 0, y = -2, z = 0},
                    expirationtime = math.random(1,2),
                    size = math.random(1,2),
                    texture = "blink_part.png",
                    glow = 8,
                })
            end
        end
        return itemstack
    end,
})

