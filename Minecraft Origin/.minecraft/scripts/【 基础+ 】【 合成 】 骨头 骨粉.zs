# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


recipes.addShaped( <minecraft:bone>, [
    [ <minecraft:dye:15>, null, null ],
    [ null, <minecraft:dye:15>, null ],
    [ null, null, <minecraft:dye:15> ]
]);

recipes.addShaped( <minecraft:bone>, [
    [ null, null, <minecraft:dye:15> ],
    [ null, <minecraft:dye:15>, null ],
    [ <minecraft:dye:15>, null, null ]
]);

recipes.addShapeless( <minecraft:dye:15> * 2, [
    <minecraft:string>
]);