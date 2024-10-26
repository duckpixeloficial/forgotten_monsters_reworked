local path = core.get_modpath("forgotten_monsters")

forgotten_monsters = {} -- enables

dofile(path .. "/fg_starting_items.lua")

-- MONSTERS ; =========================================

dofile(path.."/fg_monsters/golem.lua")
dofile(path.."/fg_monsters/growler.lua")
dofile(path.."/fg_monsters/hungry.lua")
dofile(path.."/fg_monsters/meselord.lua")

dofile(path.."/fg_monsters/skullarchers.lua")
dofile(path.."/fg_monsters/skull_berserker.lua")
dofile(path.."/fg_monsters/skullking.lua")
dofile(path.."/fg_monsters/skulls.lua")
dofile(path.."/fg_monsters/skullsword.lua")

dofile(path.."/fg_monsters/spectrum.lua")


-- ITENS; ===========================================
dofile(path .. "/fg_itens.lua")
dofile(path .. "/fg_recipes.lua")


-- SPAWN : ===========================================
dofile(path .. "/fg_spawn.lua")

