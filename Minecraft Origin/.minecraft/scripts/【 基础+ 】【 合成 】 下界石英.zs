# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


recipes.remove( <minecraft:quartz> );


recipes.addShapeless( <minecraft:quartz> * 4, [
    <minecraft:quartz_block>
]);

recipes.addShaped( <minecraft:quartz> * 8, [
    [ <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone> ],
    [ <minecraft:redstone>, <minecraft:dye:15>, <minecraft:redstone> ],
    [ <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone> ]
]);