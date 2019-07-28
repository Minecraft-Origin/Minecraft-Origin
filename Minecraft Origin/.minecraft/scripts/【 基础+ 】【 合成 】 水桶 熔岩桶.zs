# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


recipes.remove( <minecraft:water_bucket> );
recipes.remove( <minecraft:lava_bucket> );


recipes.addShapeless( <minecraft:lava_bucket>, [
    <minecraft:blaze_powder>, <minecraft:bucket>
]);

recipes.addShapeless( <minecraft:water_bucket>, [
    <minecraft:cactus>, <minecraft:bucket>
]);