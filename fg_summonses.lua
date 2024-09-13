
-- summonses :
--[[

0 - Primeiro Boss o node usar Orb e pedras
1 - Boss , ao derrotar derruba um coração de mese usando no node de invocação do Mese  Lord
2 - Mese Lord , Olho do mese Lord , usado no node de convocação do Skull King
3 _ Skull King , derruba seu poderoso martelo indestruivel...

]]


-- ITENS SUMMONSES :  ========================================================================
-- Heart of Mese :

minetest.register_craftitem("forgotten_monsters:heart_of_mese", {
    description = "Heart of Mese",
    inventory_image = "heart_of_mese.png",
 	
})

-- Eye of the Mese Lord :

minetest.register_craftitem("forgotten_monsters:eye_of_the_lord", {
    description = "Eye of the Lord",
    inventory_image = "eye_of_the_lord.png",
	
})



--- NODES : ================================================================================

minetest.register_node("forgotten_monsters:summon_golem", {
    description = "Summon Golem",
    tiles = {"summon_golem.png"},
    groups = {cracky = 3},

    
    on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
    
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

        
        minetest.remove_node(pos)
    end,
})



minetest.register_node("forgotten_monsters:summon_mese_lord", {
    description = "Summon Mese Lord",
    tiles = {"summon_mese_lord.png"},
    groups = {cracky = 3},

    
    on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
    
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

        
        minetest.remove_node(pos)
    end,
})



minetest.register_node("forgotten_monsters:summon_sking", {
    description = "Summon Skull King",
    tiles = {"summon_skull_king.png"},
    groups = {cracky = 3},

    
    on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
    
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

        
        minetest.remove_node(pos)
    end,
})


