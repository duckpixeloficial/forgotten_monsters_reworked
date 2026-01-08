local S = core.get_translator("forgotten_monsters")

-- BONES AMOR : ==========================================================================================
    armor:register_armor("forgotten_monsters:helmet_bones", {
	        description =S("Bones Helmet"),
		inventory_image = "forgotten_monsters_inv_helmet_bones.png",
		groups = {armor_head=1, armor_heal=0, armor_use=700,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})


    armor:register_armor("forgotten_monsters:chestplate_bones", {
	        description = S("Bones Chestplate"),
		inventory_image = "forgotten_monsters_inv_chestplate_bones.png",
		groups = {armor_torso=1, armor_heal=0, armor_use=700,
			physics_speed=-0.04, physics_gravity=0.04},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})


	armor:register_armor("forgotten_monsters:leggings_bones", {
		description = S("Bones Leggings"),
		inventory_image = "forgotten_monsters_inv_leggings_bones.png",
		groups = {armor_legs=1, armor_heal=0, armor_use=700,
			physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=15},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})


	armor:register_armor("forgotten_monsters:boots_bones", {
		description = S("Bones Boots"),
		inventory_image = "forgotten_monsters_inv_boots_bones.png",
		groups = {armor_feet=1, armor_heal=0, armor_use=700,
			physics_speed=-0.01, physics_gravity=0.01},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
	})



	armor:register_armor("forgotten_monsters:shield_bones", {
		description = S("Bones Shield"),
		inventory_image = "forgotten_monsters_inv_shield_bones.png",
		groups = {armor_shield=1, armor_heal=0, armor_use=600,
			physics_speed=-0.03, physics_gravity=0.03},
		armor_groups = {fleshy=10},
		damage_groups = {cracky=2, snappy=3, choppy=2, crumbly=1, level=2},
		reciprocate_damage = true,
		
	})


core.register_craft({
  output = "forgotten_monsters:helmet_bones",
  recipe = {
    {"forgotten_monsters:buried_bone", "forgotten_monsters:buried_bone","forgotten_monsters:buried_bone"},
    {"forgotten_monsters:buried_bone", "","forgotten_monsters:buried_bone"},
    {"", "",""}
  }
})

core.register_craft({
  output = "forgotten_monsters:chestplate_bones",
  recipe = {
    {"forgotten_monsters:buried_bone","","forgotten_monsters:buried_bone"},
    {"forgotten_monsters:buried_bone","forgotten_monsters:buried_bone","forgotten_monsters:buried_bone"},
    {"forgotten_monsters:buried_bone","forgotten_monsters:buried_bone","forgotten_monsters:buried_bone"}
  }
})

core.register_craft({
  output = "forgotten_monsters:leggings_bones",
  recipe = {
    {"forgotten_monsters:buried_bone","forgotten_monsters:buried_bone","forgotten_monsters:buried_bone"},
    {"forgotten_monsters:buried_bone","","forgotten_monsters:buried_bone"},
    {"forgotten_monsters:buried_bone","","forgotten_monsters:buried_bone"}
  }
})


core.register_craft({
  output = "forgotten_monsters:boots_bones",
  recipe = {
    {"forgotten_monsters:buried_bone","","forgotten_monsters:buried_bone"},
    {"forgotten_monsters:buried_bone","","forgotten_monsters:buried_bone"},
    {"","",""}
  }
})


core.register_craft({
  output = "forgotten_monsters:shield_bones",
  recipe = {
    {"forgotten_monsters:buried_bone","forgotten_monsters:buried_bone","forgotten_monsters:buried_bone"},
    {"forgotten_monsters:buried_bone","forgotten_monsters:buried_bone","forgotten_monsters:buried_bone"},
    {"","forgotten_monsters:buried_bone",""}
  }
})

-- FORGOTTEN ARMOR : ===========================================================================================
armor:register_armor("forgotten_monsters:helmet_skullking", {
		description = S("Skull King crown"),
		inventory_image = "forgotten_monsters_inv_helmet_skullking.png",
		groups = {
		armor_head=1, 
		armor_heal=14, 
		armor_use=700,
		physics_speed=1, 
		armor_fire=1,		
		},
		
		armor_groups = {fleshy=16},
		damage_groups = {cracky=2, snappy=2, level=4},
})
    
	
armor:register_armor("forgotten_monsters:chestplate_forgotten", {
		description = "Forgotten Chestplate",
		inventory_image = "forgotten_monsters_inv_chestplate_forgotten.png",
		groups = {armor_torso=1, armor_heal=12.6, armor_use=700},
		armor_groups = {fleshy=21},
		damage_groups = {cracky=2, snappy=3, choppy=2, level=2},
	})
	
armor:register_armor("forgotten_monsters:leggings_forgotten", {
		description = "Forgotten Leggings",
		inventory_image = "forgotten_monsters_inv_leggings_forgotten.png",
		groups = {armor_legs=1, armor_heal=12.6, armor_use=700},
		armor_groups = {fleshy=21},
		damage_groups = {cracky=2, snappy=3, choppy=2, level=2},
	})
	
armor:register_armor("forgotten_monsters:boots_forgotten", {
		description = "Forgotten Boots",
		inventory_image = "forgotten_monsters_inv_boots_forgotten.png",
		groups = {armor_feet=1, armor_heal=12.6, armor_use=700,physics_speed=0.8},
		armor_groups = {fleshy=16},
		damage_groups = {cracky=2, snappy=3, choppy=2, level=2},
	})


core.register_craft({
  output = "forgotten_monsters:chestplate_forgotten",
  recipe = {
    {"forgotten_monsters:growler_leather","","forgotten_monsters:growler_leather"},
    {"forgotten_monsters:growler_leather","forgotten_monsters:buried_bone","forgotten_monsters:growler_leather"},
    {"forgotten_monsters:heart_of_mese","forgotten_monsters:heart_of_mese","forgotten_monsters:heart_of_mese"}
  }
})

core.register_craft({
  output = "forgotten_monsters:leggings_forgotten",
  recipe = {
    {"forgotten_monsters:growler_leather","forgotten_monsters:eye_of_the_golem","forgotten_monsters:growler_leather"},
    {"forgotten_monsters:buried_bone","","forgotten_monsters:buried_bone"},
    {"forgotten_monsters:heart_of_mese","","forgotten_monsters:heart_of_mese"}
  }
})


core.register_craft({
  output = "forgotten_monsters:boots_forgotten",
  recipe = {
    {"forgotten_monsters:growler_leather","","forgotten_monsters:growler_leather"},
    {"forgotten_monsters:eye_of_the_golem","","forgotten_monsters:eye_of_the_golem"},
    {"","",""}
  }
})
