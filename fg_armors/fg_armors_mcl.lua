local S = core.get_translator("forgotten_monsters")
--- BONES ARMOR :
mcl_armor.register_set({
	name = "mcl_bones",
	descriptions = {
		head = "Bones Helmet",
		torso = "Bones Chestplate",
		legs = "Bones Leggings",
		feet = "Bones Boots",
	},
	durability = 700,
	enchantability = 10,
	points = {
		head = 2,
		torso = 6,
		legs = 5,
		feet = 2,
	},
	craft_material = "forgotten_monsters:buried_bone",
	sound_equip = "mcl_armor_equip_iron",
	sound_unequip = "mcl_armor_unequip_iron",
	groups = {},
})


core.register_craft({
  output = "forgotten_monsters:helmet_mcl_bones",
  recipe = {
    {"forgotten_monsters:buried_bone", "forgotten_monsters:buried_bone","forgotten_monsters:buried_bone"},
    {"forgotten_monsters:buried_bone", "","forgotten_monsters:buried_bone"},
    {"", "",""}
  }
})

core.register_craft({
  output = "forgotten_monsters:chestplate_mcl_bones",
  recipe = {
    {"forgotten_monsters:buried_bone","","forgotten_monsters:buried_bone"},
    {"forgotten_monsters:buried_bone","forgotten_monsters:buried_bone","forgotten_monsters:buried_bone"},
    {"forgotten_monsters:buried_bone","forgotten_monsters:buried_bone","forgotten_monsters:buried_bone"}
  }
})

core.register_craft({
  output = "forgotten_monsters:leggings_mcl_bones",
  recipe = {
    {"forgotten_monsters:buried_bone","forgotten_monsters:buried_bone","forgotten_monsters:buried_bone"},
    {"forgotten_monsters:buried_bone","","forgotten_monsters:buried_bone"},
    {"forgotten_monsters:buried_bone","","forgotten_monsters:buried_bone"}
  }
})


core.register_craft({
  output = "forgotten_monsters:boots_mcl_bones",
  recipe = {
    {"forgotten_monsters:buried_bone","","forgotten_monsters:buried_bone"},
    {"forgotten_monsters:buried_bone","","forgotten_monsters:buried_bone"},
    {"","",""}
  }
})


--- FOGOTTENS ARMOR :
mcl_armor.register_set({
	name = "skullking",
	descriptions = {
		head = "Skull King crown",

	},
	durability = 700,
	enchantability = 10,
	points = {
		head = 5,
	},
	sound_equip = "mcl_armor_equip_iron",
	sound_unequip = "mcl_armor_unequip_iron",
	
})

mcl_armor.register_set({
	name = "mcl_farmor",
	descriptions = {
		torso = "Forgotten Chestplate",
		legs = "Forgotten Leggings",
		feet = "Forgotten Boots",
	},
	durability = 700,
	enchantability = 10,
	points = {
		torso = 9,
		legs = 7,
		feet = 4,
	},

	sound_equip = "mcl_armor_equip_iron",
	sound_unequip = "mcl_armor_unequip_iron",
	groups = {},
})

core.register_craft({
  output = "forgotten_monsters:chestplate_mcl_farmor",
  recipe = {
    {"forgotten_monsters:Growler_Leather","","forgotten_monsters:Growler_Leather"},
    {"forgotten_monsters:Growler_Leather","forgotten_monsters:buried_bone","forgotten_monsters:Growler_Leather"},
    {"forgotten_monsters:heart_of_mese","forgotten_monsters:heart_of_mese","forgotten_monsters:heart_of_mese"}
  }
})

core.register_craft({
  output = "forgotten_monsters:leggings_mcl_farmor",
  recipe = {
    {"forgotten_monsters:Growler_Leather","forgotten_monsters:Eye_of_the_golem","forgotten_monsters:Growler_Leather"},
    {"forgotten_monsters:buried_bone","","forgotten_monsters:buried_bone"},
    {"forgotten_monsters:heart_of_mese","","forgotten_monsters:heart_of_mese"}
  }
})


core.register_craft({
  output = "forgotten_monsters:boots_mcl_farmor",
  recipe = {
    {"forgotten_monsters:Growler_Leather","","forgotten_monsters:Growler_Leather"},
    {"forgotten_monsters:Eye_of_the_golem","","forgotten_monsters:Eye_of_the_golem"},
    {"","",""}
  }
})
