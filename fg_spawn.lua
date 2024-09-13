

local skull_spawns = {
--[[
"default:dirt",
"default:dirt_with_rainforest_litter",
"default:dirt_with_grass",
"default:dirt_with_dry_grass",
"default:dry_dirt_with_dry_grass",
"default:dirt_with_coniferous_litter",
"default:stone",
"default:ice",
"default:snowblock",
"default:dirt_with_snow",
"default:sand",
"default:desert_sand",
"default:desert_stone",
"default:stone",
"default:desert_stone",
--"default:cobble",
"default:mossycobble",
"default:chest",
"default:ice",

]]

"group:stone",
"group:soil",
"group:leaves",
"group:dirt",
"group:ash"

}




--  SKULLS : ===========================================================================
-- Algumas caveiras não deverar surgir no mcl , aqueira e normal

if not minetest.get_modpath("mcl_core") then
mobs:spawn({
	name = "forgotten_monsters:sarchers",
	nodes = skull_spawns,
	min_light = 0,
	max_light = 14,
	chance = 7000,
	--min_height = 0,
	--max_height = 200,
	max_height = 200,
})


mobs:spawn({
	name = "forgotten_monsters:skull",
	nodes = skull_spawns,
	min_light = 0,
	max_light = 14,
	chance = 8000,
	--min_height = 0,
	--max_height = 200,
	max_height = 200,
	active_object_count = 1,

})

end



mobs:spawn({
	name = "forgotten_monsters:skull_berserker",
	nodes = skull_spawns,
	min_light = 0,
	max_light = 14,
	chance = 7000,
	--min_height = 0,
	--max_height = 200,
	max_height = 200,
})





mobs:spawn({
	name = "forgotten_monsters:sword",
	nodes = skull_spawns,
	min_light = 0,
	max_light = 14,
	chance = 7000,
	--min_height = 0,
	--max_height = 200,
	max_height = 200,
})




-- OUTROS : =============================================================================
mobs:spawn({
	name = "forgotten_monsters:growler",
	nodes = "air",
	neighbors = {"group:leaves"},
	min_light = 14,
	interval = 60, 
	chance = 50000, 
	min_height = 0,
	max_height = 200,
	day_toggle = true, 
	active_object_count = 1, 
})


mobs:spawn({
	name = "forgotten_monsters:hungry",
	nodes = {"group:soil"},
	min_light = 14,
	--interval = 30, -- 60
	chance = 9000,
	min_height = 0,
	max_height = 200,
})


mobs:spawn({
	name = "forgotten_monsters:spectrum",
	nodes = {"air"},
	interval = 60,
	chance = 60000,
	active_object_count = 1,
	min_light = 0,
	max_light = 7,
})

-- BOSSES : ==========================================================================
-- Agora devem ser sumonados, devido a diferença de altura e nodes entre jogos ;)

--[[
mobs:spawn({
	name = "forgotten_monsters:meselord",
	nodes = {"air"},
	max_light = 7,
	interval = 60,
  chance = 150000,
	max_height = -550,
	min_height = -650,
})




mobs:spawn({
	name = "forgotten_monsters:golem",
	nodes = {"group:stone"},
	max_light = 7,
	interval = 60,
        chance = 150000,
	max_height = -750,
	min_height = -850,
})


mobs:spawn({
	name = "forgotten_monsters:sking",
	nodes = {"default:cobble","default:mossycobble", "default:chest"},
	max_light = 7,
	interval = 60,
  	chance = 150000,
	max_height = -1100,

})

]]

