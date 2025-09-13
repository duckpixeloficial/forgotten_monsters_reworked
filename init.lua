local path = core.get_modpath("forgotten_monsters")

forgotten_monsters = {} -- enables

dofile(path .. "/fg_starting_items.lua")
dofile(path .. "/fg_decoration.lua")
-- MONSTERS ; =========================================
dofile(path .. "/fg_part.lua")
dofile(path .. "/fg_bar.lua")
dofile(path.."/fg_monsters/skullarchers.lua")
dofile(path.."/fg_monsters/skull_berserker.lua")
dofile(path.."/fg_monsters/skullsword.lua")
dofile(path.."/fg_monsters/Skull_lancer.lua")
dofile(path.."/fg_monsters/golem.lua")
dofile(path.."/fg_monsters/meselord.lua")
dofile(path.."/fg_monsters/skullking.lua")
dofile(path.."/fg_monsters/hungry.lua")
dofile(path.."/fg_monsters/growler.lua")
dofile(path.."/fg_monsters/Skeleton_Swordfish.lua")
dofile(path.."/fg_monsters/spectrum.lua")
dofile(path.."/fg_monsters/bugs.lua")
dofile(path.."/fg_monsters/fg_spawn.lua")

dofile(path .. "/fg_itens.lua")
dofile(path .. "/fg_recipes.lua")

if core.get_modpath("3d_armor") then 
dofile(path .. "/fg_armors/fg_armors.lua")
end

if core.get_modpath("mcl_armor") then
dofile(path .. "/fg_armors/fg_armors_mcl.lua")
end



