# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


recipes.remove( <minecraft:flint> );
recipes.remove( <minecraft:gunpowder> );


recipes.addShaped(
    <minecraft:flint> * 2,
    [
        [ null, <minecraft:redstone>, null ],
        [ <minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone> ]
    ]
);

recipes.addShaped(
    <minecraft:gunpowder> * 2,
    [
        [ null, <minecraft:flint>, null ],
        [ <minecraft:flint>, <minecraft:flint>, <minecraft:flint> ]
    ]
);