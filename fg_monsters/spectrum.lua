
-- sound : https://freesound.org/people/Legnalegna55/sounds/547558/


mobs:register_mob("forgotten_monsters:spectrum", {
	--nametag = "Spectrum" ,
	type = "monster",
	passive = false,
	attack_npcs = false,
	attack_type = "shoot",
	shoot_interval = 2.0,
	shoot_offset = 1.5,
	arrow = "forgotten_monsters:spectrum_arrow",
	pathfinding = true,
	reach = 3,
	damage = 6,
	hp_min = 120,
	hp_max = 120,
	armor = 80,
	collisionbox = {-0.4, -0, -0.4, 0.4, 1.9, 0.4},
	visual = "mesh",
	visual_size = {x = 9, y = 9},
	mesh = "spectrum.b3d",
	--rotate = 180,
	textures = {
		{"spectrum.png"},
	},
	glow = 3,
	blood_texture = "blood_spectrum.png",
	sounds = {
		random = "spectrum",
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
		{name = "forgotten_monsters:spectrum_orb", chance = 2, min = 1, max =1},

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
minetest.register_craftitem("forgotten_monsters:spectrum_magic_arrow", {
	description = "Spectrum Magic arrow",
	inventory_image = "pectrum_arrow.png",
	groups = {not_in_creative_inventory = 1}
})


mobs:register_arrow("forgotten_monsters:spectrum_arrow", {
	
	visual = "wielditem",
	visual_size = {x=0.3, y=0.3},
	velocity = 12,
	textures = {"forgotten_monsters:spectrum_magic_arrow"}, 
	--rotate = 180,
	damage = 2,
	glow = 5,
	
	collisionbox = {-0.5,-0.5,-0.5, 0.5,0.5,0.5},
        selectionbox = {-0.5,-0.5,-0.5, 0.5,0.5,0.5},


	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 8},
		}, nil)
	end,

	hit_mob = function(self, player)
		player:punch(self.object,1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 8},
		}, nil)
	end,

	hit_node = function(self, pos, node)
	end
})





mobs:register_egg("forgotten_monsters:spectrum", "Spectrum", "eggspec.png", 1)
--core.register_alias("spectrum:spectrum", "spawneggs:spectrum")




-- SPECTRUM ORB

minetest.register_craftitem("forgotten_monsters:spectrum_orb", {
    description = "Spectrum Orb",
    inventory_image = "spectrum_orb.png",
    light_source = 3,
})


-- SPECTRUM ORB BLOCK :

minetest.register_node("forgotten_monsters:spectrum_orb_block", {
	description = "Spectrum Orb Block",
	groups = {cracky = 2},
	drop = "spectrum:spectrum_orb_block",
	light_source = 6,
        --sounds = default.node_sound_stone_defaults(),
	tiles = {{
		name = "anim_orb_block.png",
		animation = {type = "vertical_frames", aspect_w = 16, aspect_h = 16, length = 2}
	},
	},

})


minetest.register_tool("forgotten_monsters:translocation_rod", {
    description = "Translocation Rod",
    inventory_image = "translocation_rod.png",
    range = 30,
    stack_max= 1,
	sound = {
	punch_use="trod",
	breaks = "default_tool_breaks",
	--punch_use_air="trod",

	},

    on_use = function(itemstack, user, pointed_thing)

    		itemstack:add_wear(2000) -- uso 33 vezes eu acho
			

    		-- Node apontado
	        if pointed_thing.type == "node" then
	            local pos = pointed_thing.under
	            local player_pos = user:get_pos()
	            local node_name = minetest.get_node(pos).name

	          
	            user:set_pos({x = pos.x, y = pos.y + 1, z = pos.z})

	            -- Paticulas no local , efeito hehe !!!
	            -----------------------------------------------------------------------------------------------
	            for i = 1,5 do
           		minetest.add_particle({
                pos = {x = pos.x + math.random(-0.5, 0.5), y = pos.y + 1, z = pos.z + math.random(-0.5, 0.5)},
                velocity = {x = math.random(-1, 1), y = math.random(1, 3), z = math.random(-1, 1)},
                acceleration = {x = 0, y = -2, z = 0},
                expirationtime = math.random(1, 2),
                size = math.random(1, 2),
                texture = "blink_part.png",
                glow =8,
           		 })
        	
       			 end 
	        	-------------------------------------------------------------------------------------------------

	       	end      
            
	     return itemstack -- retorna item atualizado
    end,
})





-- COMPATIBILIDADE COM : Mirror of Returning (BY : Wuzzy )
if minetest.get_modpath("returnmirror") then

minetest.register_craft({
    output = "returnmirror:mirror_inactive ",
    recipe = {
		{"default:gold_ingot", "spectrum:spectrum_orb", "default:gold_ingot"},
		{"spectrum:spectrum_orb", "default:glass", "spectrum:spectrum_orb"},
		{"", "spectrum:spectrum_orb", ""},
	},
})

end
