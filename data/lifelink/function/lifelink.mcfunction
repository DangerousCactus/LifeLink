execute as @a run kill
scoreboard players set @a death 0

say Inta

title @a title ["",{"selector":"@s"}," inted"]
title @a subtitle {"text":"they must not be very good", "italic":true, "color":"yellow"}
title @a times 40 100 60

spreadplayers 0 0 100 100000 true @a
execute at @s run schedule function lifelink:random_spawn_delay 2s
