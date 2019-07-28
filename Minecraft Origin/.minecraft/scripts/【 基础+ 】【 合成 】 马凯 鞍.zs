# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


recipes.remove( <minecraft:saddle> );
recipes.remove( <minecraft:iron_horse_armor> );
recipes.remove( <minecraft:golden_horse_armor> );
recipes.remove( <minecraft:diamond_horse_armor> );


recipes.addShaped( <minecraft:saddle>, [
    [ <minecraft:leather>, <minecraft:leather>, <minecraft:leather> ],
    [ <minecraft:leather>, <minecraft:string>, <minecraft:leather> ],
    [ null, <minecraft:iron_ingot>, null]
]);

recipes.addShaped( <minecraft:diamond_horse_armor>, [
    [ <minecraft:leather>, <minecraft:leather>, <minecraft:diamond> ],
    [ <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond> ]
]);

recipes.remove( <minecraft:golden_horse_armor>);
recipes.addShaped(<minecraft:golden_horse_armor>, [
    [ <minecraft:leather>, <minecraft:leather>, <minecraft:gold_ingot> ],
    [ <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot> ]
]);

recipes.addShaped( <minecraft:iron_horse_armor>, [
    [ <minecraft:leather>, <minecraft:leather>, <minecraft:iron_ingot> ],
    [ <minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot> ]
]);