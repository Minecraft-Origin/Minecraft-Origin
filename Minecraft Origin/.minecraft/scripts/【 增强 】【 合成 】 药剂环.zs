# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;


recipes.remove(<potionfingers:ring:1>);


var potions as IItemStack[] = [
    # 速度
    <minecraft:potion>.withTag({ Potion: "minecraft:swiftness" }),
    # 急迫
    <minecraft:potion>.withTag({ Potion: "cyclicmagic:haste" }),
    # 抗性提升
    <minecraft:potion>.withTag({ Potion: "cyclicmagic:resistance" }),
    # 跳跃提升
    <minecraft:potion>.withTag({ Potion: "minecraft:leaping" }),
    # 力量
    <minecraft:potion>.withTag({ Potion: "minecraft:strength" }),
    # 生命恢复
    <minecraft:potion>.withTag({ Potion: "minecraft:regeneration" })
];

var rings as IItemStack[] = [
    # 速度
    <potionfingers:ring:1>.withTag({ effect: "minecraft:speed" }),
    # 急迫
    <potionfingers:ring:1>.withTag({ effect: "minecraft:haste" }),
    # 抗性提升
    <potionfingers:ring:1>.withTag({ effect: "minecraft:resistance" }),
    # 跳跃提升
    <potionfingers:ring:1>.withTag({ effect: "minecraft:jump_boost" }),
    # 力量
    <potionfingers:ring:1>.withTag({ effect: "minecraft:strength" }),
    # 生命恢复
    <potionfingers:ring:1>.withTag({ effect: "minecraft:regeneration" })
];


for index, potion in potions{
    recipes.addShaped( rings[ index ], [
        [ potion, potion, potion ],
        [ potion, <potionfingers:ring:0>, potion ],
        [ potion, potion, potion ]
    ]);
}