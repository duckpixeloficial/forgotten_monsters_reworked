
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


	

end


minetest.register_craft({
  output = "forgotten_monsters:helmet_bones",
  recipe = {
    {"forgotten_monsters:bone", "forgotten_monsters:bone","forgotten_monsters:bone"},
    {"forgotten_monsters:bone", "","forgotten_monsters:bone"},
    {"", "",""}
  }
})

--forgotten_monsters:bone

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
	--sound = {breaks = {""},
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
	sound = {breaks = ""},
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
	sound = {breaks = ""},
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
	sound = {breaks = ""},
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
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1,pickaxe = 1,dig_immediate=3},
	paramtype = "light",

-- CAIXA DE COLISÃO :
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




-- =========================================== BLOCOS :  ==========================================================

-- BLOCO DE OSSO ( INUTIL XD )

minetest.register_node("forgotten_monsters:buried_bone_block", {
	description = "Buried Bone Block",
	tiles = {"buried_bone_block.png"}, 
	groups = {cracky = 2}, 
        drop = "forgotten_monsters:buried_bone_block",
       
})



--============================================= CONQUISTAS : =====================================================
--[[
		if minetest.get_modpath("awards") then  
		
		   awards.register_award("boss_1", {
			title = "First Boss , Mese Lord",
			description = "Kill the first boss, get the trophy and unlock the next achievement...", 
			icon = "mese_lord_award.png", 
			background = "awards_bg_mining.png",
			-- requires = {""},
			prizes = {"forgotten_monsters:meselord_trophy"} ,
			
		})
		
		
		
	
		  
		   awards.register_award("boss_2", {
			title = "Golem Boss",
			description = "One more challenge ahead of you, defeat the Golem boss...", 
			icon = "golem_award.png", 
			background = "awards_bg_mining.png",
			requires = {"boss_1"},
			prizes = {"forgotten_monsters:golem_trophy"} ,
			
		})
		
		
	
		  
		   awards.register_award("boss_3", {
			title = "Skull King Boss",
			description = "You've proven yourself strong enough, now defeat King Cave...", 
			icon = "skullking_award.png", 
			background = "awards_bg_mining.png",
			requires = {"boss_2"},
			prizes = {"forgotten_monsters:skullking_trophy"} ,
			
		})
		
		end
		
		]]
