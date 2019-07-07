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
        tag: {
            display: {
                Name: "铁煤",
                Lore: [
                    "燃烧时间是普通煤炭的 3 倍"
                ]
            }
        },
        time: 3
    },
    {
        tag: {
            display: {
                Name: "金煤",
                Lore: [
                    "燃烧时间是铁煤的 6 倍"
                ]
            }
        },
        time: 18
    },
    {
        tag: {
            display: {
                Name: "钻石煤",
                Lore: [
                    "燃烧时间是金煤的 6 倍"
                ]
            }
        },
        time: 108
    },
    {
        tag: {
            display: {
                Name: "绿宝石煤",
                Lore: [
                    "燃烧时间是钻石煤的 6 倍"
                ]
            }
        },
        time: 648
    },
    {
        tag: {
            display: {
                Name: "下界之星煤",
                Lore: [
                    "燃烧时间是绿宝石煤的 6 倍"
                ]
            }
        },
        time: 3888
    },
    {
        tag: {
            display: {
                Name: "龙蛋煤",
                Lore: [
                    "燃烧时间是下界之星煤的 6 倍"
                ]
            }
        },
        time: 23328
    }
];


for index, config in configs{
    var item = items[ index ];
    var itemWithTag = item.withTag( config.tag );
    var itemOnlyWithTag = item.onlyWithTag( config.tag );

    recipes.addShapeless(
        itemWithTag,
        [
            item,
            <minecraft:coal:*>
        ]
    );

    furnace.setFuel(
        itemOnlyWithTag,
        1600 * config.time
    );
}