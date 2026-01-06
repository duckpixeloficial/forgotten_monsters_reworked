
local S = core.get_translator("forgotten_monsters")

core.register_alias("forgotten_monsters:growler_meat_raw","forgotten_monsters:bug_meat")
core.register_alias("forgotten_monsters:growler_meat","forgotten_monsters:bug_meat")

core.register_craft({
	output = "forgotten_monsters:growler_meat",
	type = "cooking",
	recipe = "forgotten_monsters:growler_meat_raw",
	cooktime = 4
})

-- Growler Leather
core.register_craftitem("forgotten_monsters:growler_leather", {
    description = "Growler Leather",
    inventory_image = "Growler_Leather.png",
})

-- FOLHA  HUNGRY : ===============================================================================================
core.register_craftitem("forgotten_monsters:hungry_sheet", {
    description = S("Hungry Sheet"),
    inventory_image = "folha.png",
})
--========================================== BONES TOOLS : ======================================================
core.register_tool("forgotten_monsters:pick_bones", {
	description = S("Bones Pickaxe"),
	inventory_image = "bones_pick.png",
	wield_image = "bones_pick.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			cracky = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=15, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1",
	punch_use_air ="swoosh1",
	},
	
	groups = {pickaxe = 1,weapon = 1,enchantability = -1},
})

core.register_tool("forgotten_monsters:shovel_bones", {
	description = S("Bones Shovel"),
	inventory_image = "bones_shovel.png",
	wield_image = "bones_shovel.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 1.1,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=1.50, [2]=0.90, [3]=0.40}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=4},
	},
	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1",
	punch_use_air ="swoosh1",
	},
	
	groups = {shovel = 1,weapon = 1,enchantability = -1},
})

core.register_tool("forgotten_monsters:axe_bones", {
	description = S("Bones Axe"),
	inventory_image = "bones_axe.png",
	wield_image = "bones_axe.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=2.50, [2]=1.40, [3]=1.00}, uses=15, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	},
	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1",
	punch_use_air ="swoosh1",
	},
	
	groups = {axe = 1,weapon = 1,enchantability = -1},
})

core.register_tool("forgotten_monsters:sword_bones", {
	description = S("Bones Sword"),
	inventory_image = "bones_sword.png",
	wield_image = "bones_sword.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=2.5, [2]=1.20, [3]=0.35}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1",
	punch_use_air ="swoosh1",
	},
	
	groups = {sword = 1,weapon = 1,enchantability = -1},
})

-- HUMMER :
core.register_node("forgotten_monsters:hammer", {
	description = S("Skull Kings Hammer"),
	drawtype = "mesh",
	mesh = "hummer_sk.obj",
	tiles = {"skull_king.png"} ,
	use_texture_alpha = "clip",
	inventory_image = "skullking_hammer_inv.png",
	_mcl_toollike_wield = true,
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.50, [2]=0.60, [3]=0.30}, uses=100, maxlevel=3},
			cracky = {times={[1]=1.90, [2]=0.90, [3]=0.40}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=11},
	},
	
	
	sound = {
	punch_use = "swoosh1",
	punch_use_air ="swoosh1",	
	},
		
	groups = {sword = 1,pickaxe = 1,dig_immediate=3},
	_mcl_hardness = 1,
	_mcl_blast_resistance = 5,
	paramtype = "light",
	paramtype2 = "facedir",selection_box = {
			type = "fixed", 
			fixed = {
			{-0.32, -0.5, -0.3, 0.95, 1.05, 0.3},
				
			},
       },
									
})
 --========================================== TROFEU : =========================================================
 -- == MESE LORD :
 core.register_node("forgotten_monsters:meselord_trophy", {
	description = S("Mese Lord Trophy"),
	drawtype = "mesh",
	mesh = "trofeus_fm.obj",
	tiles = {"trufeus_meselord.png"},
	use_texture_alpha = "clip",
	wield_scale = {x=1, y=1, z=1},
	groups = {dig_immediate=3,axey=1},
	_mcl_hardness = 1,
	_mcl_blast_resistance = 3,
	paramtype = "light",
	paramtype2 = "facedir",
		selection_box = {
			type = "fixed", -- fica no formato da caixa se ajustado
			fixed = {
				{-0.5, -0.5, 0.45, 0.5, 0.5, 0.5},
				
			},
		},
})
-- === GOLEM :
core.register_node("forgotten_monsters:golem_trophy", {
	description = S("Golem Trophy"),
	drawtype = "mesh",
	mesh = "trofeus_fm.obj",
	tiles = {"trufeus_golem.png"},
	use_texture_alpha = "clip",
	wield_scale = {x=1, y=1, z=1},
	groups = {dig_immediate=3,axey=1},
	_mcl_hardness = 1,
	_mcl_blast_resistance = 3,
	paramtype = "light",
	paramtype2 = "facedir",
		selection_box = {
			type = "fixed", -- fica no formato da caixa se ajustado
			fixed = {
				{-0.5, -0.5, 0.45, 0.5, 0.5, 0.5},
				
			},
		},	
})

-- === SKULL KING :
core.register_node("forgotten_monsters:skullking_trophy", {
	description = S("Skull King Trophy"),
	drawtype = "mesh",
	mesh = "trofeus_fm.obj",
	tiles = {"trufeus_skull_king.png"},
	use_texture_alpha = "clip",
	wield_scale = {x=1, y=1, z=1},
	groups = {dig_immediate=3,axey=1},
	_mcl_hardness = 1,
	_mcl_blast_resistance = 3,
	paramtype = "light",
	paramtype2 = "facedir",
		selection_box = {
			type = "fixed", -- fica no formato da caixa se ajustado
			fixed = {
				{-0.5, -0.5, 0.45, 0.5, 0.5, 0.5},
				
			},
		},
})
--- ======================================== ITENS : ===========================================================
core.register_craftitem("forgotten_monsters:buried_bone", {
    description = S("Buried Bone"),
    inventory_image = "buried_bone.png",	
})
--===================================== COMPATIBILIDADE COM BONEMEAL : ===========================================
if core.get_modpath("bonemeal") then
core.register_craft({
    type = "shapeless",
    output = "bonemeal:bonemeal",
    recipe = {
        "forgotten_monsters:buried_bone",
        
    },
})

end

if core.get_modpath("mcl_bone_meal") then
core.register_craft({
    type = "shapeless",
    output = "mcl_bone_meal:bone_meal",
    recipe = {
        "forgotten_monsters:buried_bone",
        
    },
})

end
-- ================================================ CURA : ======================================================
-- Sound : https://freesound.org/people/craigglenday/sounds/517173/

core.register_craftitem("forgotten_monsters:old_bottle", {
    description = S("Old Bottle"),
    inventory_image = "old_bottle.png",	
})

core.register_craftitem("forgotten_monsters:healing", {
    description = S("Healing"),
    inventory_image = "elixi.png",
    --stack_max = 1,
    groups = {vessel = 1},
    
    on_use = function(itemstack, user, pointed_thing,pos) 
		local hp = user:get_hp() 
		local pos = user:getpos()
		
		if hp >= 20 then return end
		
		if hp ~= 20 then 
		   user:set_hp(hp + 5)  
		   --itemstack:take_item( )
		end		
		core.sound_play("bebendo", {pos = pos,gain = 1.0,max_hear_distance = 5})
	        core.add_particlespawner({      
		    amount = 10,
		    time = 1.5,
		    minpos = {x = pos.x, y = pos.y + 1.5, z = pos.z },
		    maxpos = {x = pos.x , y = pos.y + 0.7, z = pos.z},
		    
		    minvel = {x=0, y= 0, z=0},
		    maxvel = {x=math.random(-0.5,0.5), y= 1, z=math.random(-0.5,0.5)},
		    
		    minacc = {x=0, y= 0, z=0},
		    maxacc = {x=0, y= 0, z=0},
		    
		    minexptime = 0.5,
		    maxexptime = 1,
		    minsize = 2,
		    maxsize = 1,
		    texture = "cura.png",
		    
	        })	        
		
		if not minetest.setting_getbool("creative_mode") then
		  itemstack:take_item() 
		  user:get_inventory():add_item("main", "forgotten_monsters:old_bottle 1") 
		end   		
		return itemstack
	end	
})
-- crumpled paper ===============================================================================================
core.register_craftitem("forgotten_monsters:crumpled_paper", {
    description = S("Crumpled Paper"),
    inventory_image = "old_bottle.png",
})

-- BOOK : ======================================================================================================= Livro
local book_txt = S("Welcome to your new journey,")
local book_txt2 = S("of adventures, explorations and battles.")
local book_txt3 = S("Become as strong as possible, create summoning books,")
local book_txt4 = S("and defeat the bosses.")
local book_txt5 = S("The bosses, Golem and Mese Lord, drop useful items,")
local book_txt6 = S("for the recipes of the books.")
local book_txt7 = S("Have fun!")

core.register_craftitem("forgotten_monsters:fgbook", {
    description = S("Forgotten Book"),
    inventory_image = "forgotten_book.png",
    stack_max = 1,
    groups = {book = 1},
    
    on_use = function(itemstack, user, pointed_thing, pos)
        local player_name = user:get_player_name()
        
        local formspec_book = "size[7,8]"..
	    "style_type[label;textcolor=#0d1523]".. 
            "label[0.2,2;"..book_txt.."\n"..book_txt2.."\n"..book_txt3.."\n"..book_txt4.."\n"..book_txt5.."\n"..book_txt6.."\n\n"..book_txt7.."]"..
            "background[1,2;2.5,4;fm_boock_page_bg.png;true]"..
	    "style_type[button;bgcolor=#0d1523]"..
            "button_url[2.5,6;2,2;wiki;Wiki;https://codeberg.org/pixelzone/forgotten_monsters_reworked/src/branch/main/README.md]"
      
        
        core.show_formspec(player_name, "forgotten_monsters:fgbook", formspec_book)
        return itemstack
    end
})
-- letter from the queen : ======================================================================================= Carta
local letter_label = S("My dear,")
local letter_label2 = S("I write to you from Ethreal, where the cold chills to the bone.")
local letter_label3 = S("The wind howls through the endless nights, and the ice blankets the fields like a white,silent shroud.")
local letter_label4 = S("I feel a deep longing for your arms, for your presence beside me.")
local letter_label5 = S("I hope, with all my heart, that we will see each other again soon.") 
local letter_label6 = S("Until then, I hold on to my memories of you as a treasure that warms me on the coldest nights.")
local letter_label7 = S("love and longing,")
local letter_label8 = S("Your Queen...")

core.register_craftitem("forgotten_monsters:letter_queen", { -- ENCONTRATDO NO FUTURO EM BAUS DE LOOT
    description = S("Letter from the Queen"),
    inventory_image = "letter_queen.png",
    stack_max = 1,
    groups = {vessel = 1},
    
    on_use = function(itemstack, user, pointed_thing, pos)
        local player_name = user:get_player_name()
        
        local formspec_letter = "size[10,6]"..  
            "style_type[label;textcolor=#0d1523]"..       
            "label[0.2,0.5;"..letter_label.."\n"..letter_label2.."\n"..letter_label3.."\n"..letter_label4.."\n"..letter_label5.."\n"..letter_label6.."\n"..letter_label7.."\n\n"..letter_label8.."]"..
            "background[-2,-0.5;13,7;letter_bg.png;false]"
        
       
        core.show_formspec(player_name, "forgotten_monsters:letter", formspec_letter)
        --return itemstack
    end
})

--- CORAÇÃO DE MESE e Eye of the golem : =============================================================================================
core.register_craftitem("forgotten_monsters:heart_of_mese", {
    description = S("Heart of Mese"),
    inventory_image = "heart_of_mese.png",
 	
})

core.register_craftitem("forgotten_monsters:eye_of_the_golem", {
    description = "Eye of the Golem", -- falta tradução
    inventory_image = "Eye_of_the_golem.png",
 	
})
--- LIVRO DE INVOCÃO : ===========================================================================================
core.register_craftitem("forgotten_monsters:summon_mese_lord", {
    description = S("Mese Lord's Summoning Book"),
    inventory_image = "summon_boock_meselord.png", 

    on_place = function(itemstack, placer, pointed_thing)
        
        if pointed_thing.type == "node" then
            local pos = pointed_thing.above 
    	    
    	     local summon_pos = {x = pos.x, y = pos.y + 1, z = pos.z}   	     
             core.add_entity(summon_pos, "forgotten_monsters:meselord")     
	     part_summon (pos) 
       
             itemstack:take_item()
            return itemstack
        end
    end,
})

core.register_craftitem("forgotten_monsters:summon_golem", {
    description = S("Golem Summoning Book"),
    inventory_image = "summon_boock_golem.png", 

    on_place = function(itemstack, placer, pointed_thing)
        
        if pointed_thing.type == "node" then
            local pos = pointed_thing.above 
    
             local summon_pos = {x = pos.x, y = pos.y + 1, z = pos.z}
        
             core.add_entity(summon_pos, "forgotten_monsters:golem")
             
             part_summon (pos) 
                   
             itemstack:take_item()
            return itemstack
        end
    end,
})

core.register_craftitem("forgotten_monsters:summon_sking", {
    description = S("Skull King Summoning Book"),
    inventory_image = "summon_boock_skullking.png", 

    on_place = function(itemstack, placer, pointed_thing)
        
        if pointed_thing.type == "node" then
            local pos = pointed_thing.above 
    
             local summon_pos = {x = pos.x, y = pos.y + 1, z = pos.z}
        
             core.add_entity(summon_pos, "forgotten_monsters:sking")
             
             part_summon (pos)
            
             itemstack:take_item()
            return itemstack
        end
    end,
})
-- =========================================== BLOCOS :  ==========================================================
core.register_node("forgotten_monsters:buried_bone_block", {
	description = S("Buried Bone Block"),
	tiles = {"buried_bone_block.png"}, 
	groups = {cracky = 2,pickaxey=1},
	_mcl_hardness = 2,
	_mcl_blast_resistance = 2,
    drop = "forgotten_monsters:buried_bone_block",
       
})
--========================================== NEW TOOLS 2025: ======================================================
minetest.register_tool("forgotten_monsters:forgotten_sword", {
	description = "Forgotten Sword",
	inventory_image = "forgotten_sword.png",
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.40, [2]=0.60, [3]=0.15}, uses=3031, maxlevel=6},
		},
		damage_groups = {fleshy=11},
	},
	sound = {breaks = "default_tool_breaks"},
	--sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1,enchantability = 10, fire_immune = 1}
})

minetest.register_tool("forgotten_monsters:spine_sword", {
	description = "Spine Sword",
	inventory_image = "Spine_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.40, [2]=0.60, [3]=0.15}, uses=90, maxlevel=6},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
	--sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1,enchantability = 10, fire_immune = 1}
})

-- STAFF : =================================================================================
mobs:register_arrow("forgotten_monsters:staff_arrow", {
	visual = "sprite",
	visual_size = {x = 0.7, y = 0.7},
	textures = {"energy_mese.png"},
	collisionbox = {-0.1, -0.1, -0.1, 0.1, 0.1, 0.1},
	velocity = 35,
	glow = 5,

	on_activate = function(self, staticdata, dtime_s)
	   self.object:set_armor_groups({immortal = 1, fleshy = 100})		        	   	   	    	          
	end,

	on_punch = function(self, hitter, tflp, tool_capabilities, dir)

		if hitter and hitter:is_player() and tool_capabilities and dir then

			local damage = tool_capabilities.damage_groups and
			tool_capabilities.damage_groups.fleshy or 1

			local tmp = tflp / (tool_capabilities.full_punch_interval or 1.4)

			if damage > 6 and tmp < 4 then

				self.object:set_velocity({
					x = dir.x * self.velocity,
					y = dir.y * self.velocity,
					z = dir.z * self.velocity,
				})
			end
		end
	end,

	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 0.5,
			damage_groups = {fleshy = 4},
		}, nil)
	end,
	
	hit_mob = function(self, player)
		player:punch(self.object,1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 3},	
		}, nil)
	end,
	
	hit_node = function(self, pos, node)
	end,
})

core.register_tool("forgotten_monsters:forgotten_staff", {
    description = "Forgotten Staff [Experimental]",
    inventory_image = "forgotten_staff.png",
    range = 3,
    stack_max= 1,
    _mcl_toollike_wield = true,
    sound = {
	--punch_use=" trod",
	breaks = "default_tool_breaks",
	--punch_use_air="trod",
	},

     on_use = function(itemstack, user, pointed_thing)
        local dir = user:get_look_dir()
        local player_pos = user:get_pos()     
     
        itemstack:add_wear_by_uses(300)
        
        local eye_height = user:get_properties().eye_height or 1.625
			local shoot_pos = {
			    x = player_pos.x,
			    y = player_pos.y + eye_height,
			    z = player_pos.z
			}

			local proj = core.add_entity(
			    vector.add(shoot_pos, vector.multiply(dir, 0.5)), 
			   "forgotten_monsters:staff_arrow"
			)

			proj:set_velocity(
			       {
			          x = dir.x * 15,
			          y = dir.y * 15, 
			          z = dir.z * 15
			       }
			    )

			proj:set_acceleration(
			       {
			          x = dir.x * 0.1,
			          y = dir.y * 0.1,
			          z = dir.z * 0.1
			       }
			    )
            
        return itemstack
    end,
})

