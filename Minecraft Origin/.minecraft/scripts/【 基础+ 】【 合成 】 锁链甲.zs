# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


recipes.remove( <minecraft:chainmail_boots> );
recipes.remove( <minecraft:chainmail_leggings> );
recipes.remove( <minecraft:chainmail_chestplate> );
recipes.remove( <minecraft:chainmail_helmet> );


recipes.addShaped( <minecraft:chainmail_boots>, [
    [ <minecraft:iron_ingot>, null, <minecraft:iron_ingot> ],
    [ <minecraft:flint>, null, <minecraft:flint> ]
]);

recipes.addShaped( <minecraft:chainmail_leggings>, [
    [ <minecraft:iron_ingot>, <minecraft:flint>, <minecraft:iron_ingot> ],
    [ <minecraft:flint>, null, <minecraft:flint> ],
    [ <minecraft:iron_ingot>, null, <minecraft:iron_ingot> ]
]);

recipes.addShaped( <minecraft:chainmail_chestplate>, [
    [ <minecraft:iron_ingot>, null, <minecraft:iron_ingot> ],
    [ <minecraft:flint>, <minecraft:iron_ingot>, <minecraft:flint> ],
    [ <minecraft:iron_ingot>, <minecraft:flint>, <minecraft:iron_ingot> ]
]);

recipes.addShaped( <minecraft:chainmail_helmet>, [
    [ <minecraft:flint>, <minecraft:iron_ingot>, <minecraft:flint> ],
    [ <minecraft:iron_ingot>, null, <minecraft:iron_ingot> ]
]);