# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;


var items as IItemStack[] = [
    <minecraft:iron_ingot>,
    <minecraft:gold_ingot>,
    <minecraft:diamond>,
    <minecraft:emerald>,
    <minecraft:nether_star>,
    <minecraft:dragon_egg>
];

var configs as IData[] = [
    {
        name: "铁煤",
        tooltip: "燃烧时间是普通煤炭的 3 倍",
        time: 3
    },
    {
        name: "金煤",
        tooltip: "燃烧时间是铁煤的 6 倍",
        time: 18
    },
    {
        name: "钻石煤",
        tooltip: "燃烧时间是金煤的 6 倍",
        time: 108
    },
    {
        name: "绿宝石煤",
        tooltip: "燃烧时间是钻石煤的 6 倍",
        time: 648
    },
    {
        name: "下界之星煤",
        tooltip: "燃烧时间是绿宝石煤的 6 倍",
        time: 3888
    },
    {
        name: "龙蛋煤",
        tooltip: "燃烧时间是下界之星煤的 6 倍",
        time: 23328
    }
];


for index, config in configs{
    var item = items[ index ];
    var itemWithTag = item.withTag({
        author: "Zhang-Wei-666",
        display: {
            Name: config.name
        }
    });

    itemWithTag.addTooltip(
        format.gold( config.tooltip as string )
    );

    itemWithTag.addEnchantment(
        <enchantment:minecraft:knockback> * 1
    );

    recipes.addShapeless(
        itemWithTag,
        [
            item,
            <minecraft:coal:*>
        ]
    );

    furnace.setFuel(
        itemWithTag,
        1600 * config.time
    );
}