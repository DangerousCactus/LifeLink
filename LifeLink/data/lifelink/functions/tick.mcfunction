execute as @a[scores={deaths=1..}] at @s run function lifelink:lifelink
# execute as @a[nbt={HurtTime:9s, Dimension:"minecraft:overworld"}] at @a run say test

scoreboard players reset * health
execute as @a store result score @s health run data get entity @s Health

execute as @a run scoreboard players operation $total health -= @s health
execute as @a run scoreboard players operation $total health += @s health2

#execute if score $total health matches 1.. run tellraw n1ckname152 [{"text":"The value of test is ","color":"dark_aqua"},{"score":{"name":"$total","objective":"health"}}]
execute as @a if score @s health < @s health2 run execute as @s run say I took damage.
execute if score $total health matches 1.. run execute as @a run damage @s 1

scoreboard players reset * health2
execute as @a store result score @s health2 run data get entity @s Health

effect give @a minecraft:glowing infinite 0 true
