tag @a remove yf_priority_target
tag @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:totem_of_undying"}}] add yf_priority_target
tag @a[gamemode=survival,nbt={Inventory:[{Slot:-106b,id:"minecraft:totem_of_undying"}]}] add yf_priority_target
execute if entity @a[tag=yf_priority_target] run team join noattack @a[gamemode=survival,tag=!yf_priority_target]
execute if entity @a[tag=yf_priority_target] run team leave @a[gamemode=survival,tag=yf_priority_target]
execute unless entity @a[tag=yf_priority_target] run team leave @a[gamemode=survival]
