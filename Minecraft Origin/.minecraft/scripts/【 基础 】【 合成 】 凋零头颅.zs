# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


/******************* 用作合成凋零头颅的头颅矿物词典 *******************/
/**/ var ore = <ore:minecraft_origin_skull_zhang_wei_666>;
/**/
/**/ ore.add( <minecraft:skull:0> );
/**/ ore.add( <minecraft:skull:2> );
/******************* 用作合成凋零头颅的头颅矿物词典 *******************/


recipes.remove( <minecraft:skull:1> );


recipes.addShaped( <minecraft:skull:1>, [
    [ <minecraft:golden_apple:1>, <minecraft:golden_apple:1>, <minecraft:golden_apple:1> ],
    [ <minecraft:golden_apple:1>, ore, <minecraft:golden_apple:1> ],
    [ <minecraft:golden_apple:1>, <minecraft:golden_apple:1>, <minecraft:golden_apple:1> ]
]);