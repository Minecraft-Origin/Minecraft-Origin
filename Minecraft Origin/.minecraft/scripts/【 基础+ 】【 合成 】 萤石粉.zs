# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


recipes.remove( <minecraft:glowstone_dust> );


recipes.addShapeless( <minecraft:glowstone_dust> * 4, [
    <minecraft:glowstone>
]);

recipes.addShaped( <minecraft:glowstone_dust> * 8, [
    [ <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone> ],
    [ <minecraft:redstone>, <minecraft:blaze_powder>, <minecraft:redstone> ],
    [ <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone> ]
]);