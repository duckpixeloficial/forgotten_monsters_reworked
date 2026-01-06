minetest.register_node("forgotten_monsters:forgotten_flower", { -- nome 
    description ="Forgotten Flower",
    drawtype = "plantlike",
    tiles = {"forgotten_flower.png"}, -- textura
    inventory_image = "forgotten_flower.png",
    wield_image = "forgotten_flower.png",
    paramtype = "light",
    sunlight_propagates = true,
    walkable = false,
    buildable_to = true,
    light_source = 5,
    groups = {snappy = 3, flammable = 2, flora = 1, attached_node = 1},
    selection_box = {
        type = "fixed",
        fixed = {-0.25, -0.5, -0.25, 0.25, 0.3, 0.25},
    },
})

minetest.register_decoration({
    deco_type = "simple",
    place_on = {"mcl_core:dirt_with_grass","default:dirt_with_grass","default:dirt_with_rainforest_litter"},
    sidelen = 16,
    place_offset_y = 0,
    biomes = {"grasland","rainforest", "rainforest_swamp","BirchForest","Jungle","Plains"},
    flags = "place_center_x,place_center_z,force_placement,all_floors",
    fill_ratio = 0.0005,
    y_max = 200,
    y_min = 1,
    decoration = "forgotten_monsters:forgotten_flower",
})

if minetest.get_modpath("flowerpot") then
 flowerpot.register_node("forgotten_monsters:forgotten_flower")
end
