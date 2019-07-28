# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


recipes.remove( <minecraft:snowball> );
recipes.remove( <minecraft:snow> );
recipes.remove( <minecraft:ice> );
recipes.remove( <minecraft:packed_ice> );


recipes.addShapeless( <minecraft:snowball> * 4, [
    <minecraft:snow>
]);

recipes.addShaped( <minecraft:snow>, [
    [ <minecraft:snowball>, <minecraft:snowball> ],
    [ <minecraft:snowball>, <minecraft:snowball> ]
]);

recipes.addShaped( <minecraft:ice>, [
    [ <minecraft:snow>, <minecraft:snow> ],
    [ <minecraft:snow>, <minecraft:snow> ]
]);

recipes.addShaped( <minecraft:packed_ice>, [
    [ <minecraft:ice>, <minecraft:ice> ],
    [ <minecraft:ice>, <minecraft:ice> ]
]);