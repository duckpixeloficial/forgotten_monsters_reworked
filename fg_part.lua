function part_summon (pos) 
minetest.add_particlespawner({
    amount = 50,
    time = 1.5,
    minpos = {x=pos.x + 3, y=pos.y + -1, z=pos.z + 3},
    maxpos = {x=pos.x - 2, y=pos.y + 2, z=pos.z - 2},
    minvel = {x=0, y=-0.2, z=0},
    maxvel = {x=0, y=-0.2, z=0},
    minacc = {x=0, y=0, z=0},
    maxacc = {x=0, y=0, z=0},
    minexptime = 1.5,
    maxexptime = 1.5,
    minsize = 8,
    maxsize = 3,
    collisiondetection = true,
    vertical = false,
    texture = "smoke_fg.png",   
    glow = 14,
})
-- https://freesound.org/people/julianmateo_/sounds/522699/
minetest.sound_play("summon_boss", {
        pos = pos,
        max_hear_distance = 20,
        gain = 2.5,
   })    
end

function part_sking (pos) 
minetest.add_particlespawner({
    amount = 10,
    time = 0.5,
    minpos = {x=pos.x + 3, y=pos.y + -1, z=pos.z + 3},
    maxpos = {x=pos.x - 2, y=pos.y + 2, z=pos.z - 2},
    minvel = {x=0, y=-0.2, z=0},
    maxvel = {x=0, y=-0.2, z=0},
    minacc = {x=0, y=0, z=0},
    maxacc = {x=0, y=0, z=0},
    minexptime = 1.0,
    maxexptime = 1.5,
    minsize = 8,
    maxsize = 3,
    collisiondetection = true,
    vertical = false,
    texture = "smoke_fg.png",   
    glow = 14,
})   
end

