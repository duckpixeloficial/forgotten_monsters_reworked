forgotten_monsters.daytime = core.settings:get_bool("forgotten_monsters.daytime", true)

local skull_spawns = {
"group:stone",
"group:soil",
"group:leaves",
"group:dirt",
"group:ash",
"group:crumbly",
"mcl_core:redsand",
}
--  SKULLS : ===========================================================================
local max_light_skull = 7

if forgotten_monsters.daytime then -- Opção para não surgir de dia ..
   max_light_skull = 14	
end

mobs:spawn({
	name = "forgotten_monsters:sarchers",
	nodes = skull_spawns,
	neighbors = "air",
	min_light = 0,
	max_light = max_light_skull,
	chance = 2000,
	max_height = 200,
})
--end
mobs:spawn({
	name = "forgotten_monsters:skull_berserker",
	nodes = skull_spawns,
	neighbors = "air",
	min_light = 0,
	max_light = max_light_skull,
	chance = 2000,
	max_height = 200,
})

mobs:spawn({
	name = "forgotten_monsters:ssword",
	nodes = skull_spawns,
	neighbors = "air",
	min_light = 0,
	max_light = max_light_skull,
	chance = 2000,
	max_height = 200,
})

mobs:spawn({
	name = "forgotten_monsters:skull_lancer",
	nodes = skull_spawns,
	neighbors = "air",
	min_light = 0,
	max_light = max_light_skull,
	chance = 2000,
	max_height = 200,
})
-- OUTROS : =============================================================================
mobs:spawn({
	name = "forgotten_monsters:growler",
	nodes = "air",
	neighbors = {"group:leaves"},
	min_light = 0,
	max_light = 14, -- 7
	interval = 60, 
	chance = 2000,
	min_height = 0,
	max_height = 80,
	--day_toggle = true, 
	active_object_count = 1, 
})

mobs:spawn({
	name = "forgotten_monsters:hungry",
	nodes = {"group:soil","mcl_core:dirt_with_grass"},
	neighbors = "air",
	min_light = 14,
	--interval = 30, -- 60
	chance = 2000, -- 2000
	min_height = 0,
	max_height = 200,
})

mobs:spawn({
	name = "forgotten_monsters:spectrum",
	nodes = {"air"},
	neighbors = {"group:leaves"},
	interval = 60,
	chance = 2000,	-- 1200,
	min_light = 0,
	max_light = 7,
	active_object_count = 1,
	min_height = -29000,
	max_height = 80,
})

