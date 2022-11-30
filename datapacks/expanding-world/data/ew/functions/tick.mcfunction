# Initialize new players
execute as @a[tag=!init] run function ew:events/init-player

# Advance the world border each day at midnight
execute store result score DayTime dayTime run time query daytime
execute if score DayTime dayTime matches 16 run scoreboard players add @a day 1
execute if score DayTime dayTime matches 16 run function ew:expand-world
