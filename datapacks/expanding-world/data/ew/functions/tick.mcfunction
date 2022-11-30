# Initialize new players
execute as @a[tag=!init] run function ew:events/init-player

# Advance the world border each day
execute store result score DayTime clock run time query daytime
execute if score DayTime clock matches 0 run title @a subtitle {"text":"World expanding"}
execute if score DayTime clock matches 0 run title @a title {"text":" "}
execute if score DayTime clock matches 0 run worldborder add 2 1
