
if minetest.get_modpath("3d_armor") then


	-- COROA DO SKULL KINGS :
	armor:register_armor("forgotten_monsters:helmet_skullking", {
		description = ("Skull King crown "),
		inventory_image = "forgotten_monsters_inv_helmet_skullking.png",
		groups = {
		armor_head=1, 
		armor_heal=14, 
		armor_use=200,
		physics_speed=1, 
		--armor_fire=1,
		
		},
		
		armor_groups = {fleshy=17},
		damage_groups = {cracky=2, snappy=1, level=4},
    })


    -- BONES AMOR :

    armor:register_armor("forgotten_monsters:helmet_bones", {
		description ="Bones Helmet",
		inventory_image = "forgotten_monsters_inv_helmet_bones.png",
		groups = {armor_head=1, armor_heal=0, armor_use=700,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})


    armor:register_armor("forgotten_monsters:chestplate_bones", {
		description = "Bones Chestplate",
		inventory_image = "forgotten_monsters_inv_chestplate_bones.png",
		groups = {armor_torso=1, armor_heal=0, armor_use=700,
			physics_speed=-0.04, physics_gravity=0.04},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})


	armor:register_armor("forgotten_monsters:leggings_bones", {
		description = "Bones Leggings",
		inventory_image = "forgotten_monsters_inv_leggings_bones.png",
		groups = {armor_legs=1, armor_heal=0, armor_use=700,
			physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})


	armor:register_armor("forgotten_monsters:boots_bones", {
		description = "Bones Boots",
		inventory_image = "forgotten_monsters_inv_boots_bones.png",
		groups = {armor_feet=1, armor_heal=0, armor_use=700,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})



	armor:register_armor("forgotten_monsters:shield_bones", {
		description = "Bones Shield",
		inventory_image = "forgotten_monsters_inv_shield_bones.png",
		groups = {armor_shield=1, armor_heal=0, armor_use=600,
			physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
		reciprocate_damage = true,
		
	})


	




minetest.register_craft({
  output = "forgotten_monsters:helmet_bones",
  recipe = {
    {"forgotten_monsters:bone", "forgotten_monsters:bone","forgotten_monsters:bone"},
    {"forgotten_monsters:bone", "","forgotten_monsters:bone"},
    {"", "",""}
  }
})



minetest.register_craft({
  output = "forgotten_monsters:chestplate_bones",
  recipe = {
    {"forgotten_monsters:bone","","forgotten_monsters:bone"},
    {"forgotten_monsters:bone","forgotten_monsters:bone","forgotten_monsters:bone"},
    {"forgotten_monsters:bone","forgotten_monsters:bone","forgotten_monsters:bone"}
  }
})

minetest.register_craft({
  output = "forgotten_monsters:leggings_bones",
  recipe = {
    {"forgotten_monsters:bone","forgotten_monsters:bone","forgotten_monsters:bone"},
    {"forgotten_monsters:bone","","forgotten_monsters:bone"},
    {"forgotten_monsters:bone","","forgotten_monsters:bone"}
  }
})


minetest.register_craft({
  output = "forgotten_monsters:boots_bones",
  recipe = {
    {"forgotten_monsters:bone","","forgotten_monsters:bone"},
    {"forgotten_monsters:bone","","forgotten_monsters:bone"},
    {"","",""}
  }
})


minetest.register_craft({
  output = "forgotten_monsters:shield_bones",
  recipe = {
    {"forgotten_monsters:bone","forgotten_monsters:bone","forgotten_monsters:bone"},
    {"forgotten_monsters:bone","forgotten_monsters:bone","forgotten_monsters:bone"},
    {"","forgotten_monsters:bone",""}
  }
})


end




-- CARNE DE GROWLER ===========================================================================================

minetest.register_craftitem("forgotten_monsters:growler_meat_raw", {
    description = "Growler Meat Raw",
    inventory_image = "growler_meat_raw.png",
    on_use = minetest.item_eat(-5),
})

minetest.register_craftitem("forgotten_monsters:growler_meat", {
    description = "Growler Meat",
    inventory_image = "growler_meat.png",
    on_use = minetest.item_eat(5),
})


minetest.register_craft({
	output = "forgotten_monsters:growler_meat",
	type = "cooking",
	recipe = "forgotten_monsters:growler_meat_raw",
	cooktime = 4
})


-- FOLHA  HUNGRY : ===============================================================================================

minetest.register_craftitem("forgotten_monsters:hungry_sheet", {
    description = "Hungry Sheet",
    inventory_image = "folha.png",


})


--========================================== BONES TOOLS : ======================================================

minetest.register_tool("forgotten_monsters:pick_bones", {
	description = "Bones Pickaxe",
	inventory_image = "bones_pick.png",
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
	
	groups = {pickaxe = 1}
})


minetest.register_tool("forgotten_monsters:shovel_bones", {
	description = "Bones Shovel",
	inventory_image = "bones_shovel.png",
	wield_image = "bones_shovel.png",
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
	
	groups = {shovel = 1}
})


minetest.register_tool("forgotten_monsters:axe_bones", {
	description = "Bones Axe",
	inventory_image = "bones_axe.png",
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
	
	groups = {axe = 1}
})


minetest.register_tool("forgotten_monsters:sword_bones", {
	description = "Bones Sword",
	inventory_image = "bones_sword.png",
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
	
	groups = {sword = 1}
})




-- HUMMER :

minetest.register_node("forgotten_monsters:hammer", {
	description = "Skull Kings Hammer",
	drawtype = "mesh",
	mesh = "hummer_sk.obj",
	tiles = {"skull_king.png"} ,
	use_texture_alpha = "clip",
	--wield_scale = {x=2, y=2, z=2},
	--inventory_image = "skull_king_deep.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.50, [2]=0.60, [3]=0.30}, uses=100, maxlevel=3},
			cracky = {times={[1]=1.90, [2]=0.90, [3]=0.40}, uses=100, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	},
	
	
	sound = {
	--breaks = "default_tool_breaks",
	punch_use = "swoosh1",
	punch_use_air ="swoosh1",
	
	},
	
	
	groups = {sword = 1,pickaxe = 1,dig_immediate=3},
	paramtype = "light",


	paramtype2 = "facedir",
		selection_box = {
			type = "fixed", -- fica no formato da caixa se ajustado
			fixed = {
				{-0.32, -0.5, -0.3, 0.95, 1.05, 0.3},
				
			},
		},
		
		
		
		
	
})



 --========================================== TROFEU : =========================================================
 
 -- == MESE LORD :
 
 minetest.register_node("forgotten_monsters:meselord_trophy", {
	description = "Mese Lord Trophy",
	drawtype = "mesh",
	mesh = "trofeus_fm.obj",
	tiles = {"trufeus_meselord.png"},
	use_texture_alpha = "clip",
	wield_scale = {x=1, y=1, z=1},
	groups = {dig_immediate=3},
	paramtype = "light",

-- CAIXA DE COLISÃO :
	paramtype2 = "facedir",
		selection_box = {
			type = "fixed", -- fica no formato da caixa se ajustado
			fixed = {
				{-0.5, -0.5, 0.45, 0.5, 0.5, 0.5},
				
			},
		},
		
		
	
})
 


-- === GOLEM :

minetest.register_node("forgotten_monsters:golem_trophy", {
	description = "Golem Trophy",
	drawtype = "mesh",
	mesh = "trofeus_fm.obj",
	tiles = {"trufeus_golem.png"},
	use_texture_alpha = "clip",
	wield_scale = {x=1, y=1, z=1},
	groups = {dig_immediate=3},
	paramtype = "light",

-- CAIXA DE COLISÃO :
	paramtype2 = "facedir",
		selection_box = {
			type = "fixed", -- fica no formato da caixa se ajustado
			fixed = {
				{-0.5, -0.5, 0.45, 0.5, 0.5, 0.5},
				
			},
		},
		
		
	
})


-- === SKULL KING :

minetest.register_node("forgotten_monsters:skullking_trophy", {
	description = "Skull King Trophy",
	drawtype = "mesh",
	mesh = "trofeus_fm.obj",
	tiles = {"trufeus_skull_king.png"},
	use_texture_alpha = "clip",
	wield_scale = {x=1, y=1, z=1},
	groups = {dig_immediate=3},
	paramtype = "light",

-- CAIXA DE COLISÃO :
	paramtype2 = "facedir",
		selection_box = {
			type = "fixed", -- fica no formato da caixa se ajustado
			fixed = {
				{-0.5, -0.5, 0.45, 0.5, 0.5, 0.5},
				
			},
		},
		
		
	
})




--- ======================================== ITENS : ===========================================================

minetest.register_craftitem("forgotten_monsters:buried_bone", {
    description = "Buried Bone",
    inventory_image = "buried_bone.png",
 
	
})


--===================================== COMPATIBILIDADE COM BONEMEAL : ===========================================

if minetest.get_modpath("bonemeal") then

minetest.register_craft({
    type = "shapeless",
    output = "bonemeal:bonemeal",
    recipe = {
        "forgotten_monsters:bone",
        
    },
})

end


if minetest.get_modpath("mcl_bone_meal") then

minetest.register_craft({
    type = "shapeless",
    output = "mcl_bone_meal:bone_meal",
    recipe = {
        "forgotten_monsters:bone",
        
    },
})

end


-- ================================================ CURA : ======================================================
-- Sound : https://freesound.org/people/craigglenday/sounds/517173/

minetest.register_craftitem("forgotten_monsters:old_bottle", {
    description = "Old Bottle",
    inventory_image = "old_bottle.png",
 
	
})



minetest.register_craftitem("forgotten_monsters:healing", {
    description = "Healing ",
    inventory_image = "elixi.png",
    stack_max = 1,
    groups = {vessel = 1},
    
    
    on_use = function(itemstack, user, pointed_thing,pos) -- função para recuperar vida simples
		local hp = user:get_hp() -- usuario consegue o valor atual de sua vida
		if hp ~= 20 then -- comparando vida
			user:set_hp(hp + 5)  -- atribuindo mais 5 de vida
			--itemstack:take_item( )
		end
		
		minetest.sound_play("bebendo", {
			pos = pos,
			gain = 1.0,
			max_hear_distance = 5,
		})
		
		local pos = user:getpos()
		
		for i=1,30 do
		
	        minetest.add_particle({
		pos = pos,
		acceleration = 0,
        velocity = {x =math.random(-3,3),y=math.random(-3,3),z=math.random(-3,3)},
          	-- x ou y ,ou z  = random (-3 right , 3 left )
		size = 2, 
		expirationtime = 2.0,
		collisiondetection = false,
		vertical = false,
		texture = "cura.png",
		glow = 8,
	        })
	        
	        end
	        
	        
		
		return  --"vessels:glass_bottle"  
	end
	

})


-- BOOK : =======================================================================================================
minetest.register_craftitem("forgotten_monsters:aged_bottle", {
    description = "Aged Bottle",
    inventory_image = "old_bottle.png",
 
	
})


-- crumpled paper ===============================================================================================

minetest.register_craftitem("forgotten_monsters:crumpled_paper", {
    description = "Crumpled Paper",
    inventory_image = "old_bottle.png",
 
	
})


-- BOOK : ======================================================================================================= Livro

local book_txt = core.colorize("#000000", [[

Welcome to your new journey,
of adventures, explorations and battles.
Become as strong as possible, create summoning books
and defeat the bosses.
The bosses, Golem and Mese Lord, drop useful items
for the recipes of the books.

Have fun!!!
]])

minetest.register_craftitem("forgotten_monsters:fgbook", {
    description = "Forgotten Book",
    inventory_image = "forgotten_book.png",
    stack_max = 1,
    groups = {vessel = 1},
    
    on_use = function(itemstack, user, pointed_thing, pos)
        local player_name = user:get_player_name()
        
        local formspec_book = "size[8,9]"..
            "label[0.5,2;"..book_txt.."!]"..
            "background[1,2;6,4;paper.png;true]"..
            "button_url[3,8;2,2;wiki;Wiki;https://codeberg.org/pixelzone/forgotten_monsters_reworked/src/branch/main/README.md]"
      
        
        minetest.show_formspec(player_name, "forgotten_monsters:fgbook", formspec_book)
        return itemstack
    end
})



-- letter from the queen : ======================================================================================= Carta

local letter_label = core.colorize("#000000",[[ 

                                                   							My dear,

	I write to you from Ethreal, where the cold chills to the bone. 
	The wind howls through the endless nights, and the ice blankets the fields like a white,
	silent shroud. I feel a deep longing for your arms, for your presence beside me.

	I hope, with all my heart, that we will see each other again soon. 
	Until then, I hold on to my memories of you as a treasure that warms me on the coldest nights.

		                                      		 					love and longing,
		                                          			         Your Queen.


]])


minetest.register_craftitem("forgotten_monsters:letter_queen", {
    description = "Letter from the Queen",
    inventory_image = "letter_queen.png",
    stack_max = 1,
    groups = {vessel = 1},
    
    on_use = function(itemstack, user, pointed_thing, pos)
        local player_name = user:get_player_name()
        
        local formspec_letter = "size[9.2,6]"..          
            "label[0.1,0.2;"..letter_label.."]"..
            "background[1,2;6,4;paper.png;true]"
        
       
        minetest.show_formspec(player_name, "forgotten_monsters:letter", formspec_letter)
        --return itemstack
    end
})





--- CORAÇÃO DE MESE : =============================================================================================
minetest.register_craftitem("forgotten_monsters:heart_of_mese", {
    description = "Heart of Mese",
    inventory_image = "heart_of_mese.png",
 	
})


--- LIVRO DE INVOCÃO : ===========================================================================================

minetest.register_craftitem("forgotten_monsters:summon_mese_lord", {
    description = "Mese Lord's Summoning Book",
    inventory_image = "summon_boock_meselord.png", 

    on_place = function(itemstack, placer, pointed_thing)
        
        if pointed_thing.type == "node" then
            local pos = pointed_thing.above 
    	    
    	     local summon_pos = {x = pos.x, y = pos.y + 1, z = pos.z}
    	      
             minetest.add_entity(summon_pos, "forgotten_monsters:meselord")
             
               -- PARTICULAS
		minetest.add_particlespawner({
		    amount = 30,
		    time = 0.5,
		    minpos = summon_pos,
		    maxpos = summon_pos,
		    minvel = {x=-2, y=10, z=-2},
		    maxvel = {x=2, y=10, z=2},
		    minacc = {x=0, y=-9.81, z=0},
		    maxacc = {x=0, y=-9.81, z=0},
		    minexptime = 1,
		    maxexptime = 1.5,
		    minsize = 5,
		    maxsize = 5,
		    texture = "blink_part.png",
		})
        
            
            itemstack:take_item()
            return itemstack
        end
    end,
})



minetest.register_craftitem("forgotten_monsters:summon_golem", {
    description = "Golem Summoning Book",
    inventory_image = "summon_boock_golem.png", 

    on_place = function(itemstack, placer, pointed_thing)
        
        if pointed_thing.type == "node" then
            local pos = pointed_thing.above 
    
             local summon_pos = {x = pos.x, y = pos.y + 1, z = pos.z}
        
             minetest.add_entity(summon_pos, "forgotten_monsters:golem")
             
               -- PARTICULAS
		minetest.add_particlespawner({
		    amount = 30,
		    time = 0.5,
		    minpos = summon_pos,
		    maxpos = summon_pos,
		    minvel = {x=-2, y=10, z=-2},
		    maxvel = {x=2, y=10, z=2},
		    minacc = {x=0, y=-9.81, z=0},
		    maxacc = {x=0, y=-9.81, z=0},
		    minexptime = 1,
		    maxexptime = 1.5,
		    minsize = 5,
		    maxsize = 5,
		    texture = "blink_part.png",
		})
        
            
            itemstack:take_item()
            return itemstack
        end
    end,
})



minetest.register_craftitem("forgotten_monsters:summon_sking", {
    description = "Skull King Summoning Book",
    inventory_image = "summon_boock_skullking.png", 

    on_place = function(itemstack, placer, pointed_thing)
        
        if pointed_thing.type == "node" then
            local pos = pointed_thing.above 
    
             local summon_pos = {x = pos.x, y = pos.y + 1, z = pos.z}
        
             minetest.add_entity(summon_pos, "forgotten_monsters:sking")
             
               -- PARTICULAS
		minetest.add_particlespawner({
		    amount = 30,
		    time = 0.5,
		    minpos = summon_pos,
		    maxpos = summon_pos,
		    minvel = {x=-2, y=10, z=-2},
		    maxvel = {x=2, y=10, z=2},
		    minacc = {x=0, y=-9.81, z=0},
		    maxacc = {x=0, y=-9.81, z=0},
		    minexptime = 1,
		    maxexptime = 1.5,
		    minsize = 5,
		    maxsize = 5,
		    texture = "blink_part.png",
		})
        
            
            itemstack:take_item()
            return itemstack
        end
    end,
})


-- =========================================== BLOCOS :  ==========================================================

-- BLOCO DE OSSO ( INUTIL XD )

minetest.register_node("forgotten_monsters:buried_bone_block", {
	description = "Buried Bone Block",
	tiles = {"buried_bone_block.png"}, 
	groups = {cracky = 2}, 
        drop = "forgotten_monsters:buried_bone_block",
       
})



