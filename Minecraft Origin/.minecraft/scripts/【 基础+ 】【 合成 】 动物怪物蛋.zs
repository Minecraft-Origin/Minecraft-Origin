# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


recipes.remove( <minecraft:spawn_egg:*> );


var Egg = <minecraft:egg>;
var Emerald = <minecraft:emerald>;
var SpawnEgg = <minecraft:spawn_egg>;


var Feather = <minecraft:feather>;
var Chicken = SpawnEgg.withTag({
    EntityTag: { id: 'Chicken' }
});
recipes.addShaped( Chicken, [
    [ Feather, Feather, Feather ],
    [ Feather, Feather, Feather ],
    [ Emerald, Emerald, Emerald ]
]);

var Beef = <minecraft:beef>;
var CoW = SpawnEgg.withTag({
    EntityTag: { id: 'CoW' }
});
recipes.addShaped( CoW, [
    [ Beef, Beef, Beef ],
    [ Egg, Egg, Egg ],
    [ Emerald, Emerald, Emerald ]
]);

var Leather = <minecraft:leather>;
var Donkey = SpawnEgg.withTag({
    EntityTag: { id: 'Donkey' }
});
recipes.addShaped( Donkey, [
    [ Leather, Leather, Leather ],
    [ Egg, Egg, Egg ],
    [ Emerald, Emerald, Emerald ]
]);

var Potato = <minecraft:potato>;
var Horse = SpawnEgg.withTag({
    EntityTag: { id: 'Horse' }
});
recipes.addShaped( Horse, [
    [ Potato, Potato, Potato ],
    [ Egg, Egg, Egg ],
    [ Emerald, Emerald, Emerald ]
]);

var HayBlock = <minecraft:hay_block>;
var Llama = SpawnEgg.withTag({
    EntityTag: { id: 'Llama' }
});
recipes.addShaped( Llama, [
    [ HayBlock, HayBlock, HayBlock ],
    [ Egg, Egg, Egg ],
    [ Emerald, Emerald, Emerald ]
]);

var MushroomStew = <minecraft:mushroom_stew>;
var Mooshroom = SpawnEgg.withTag({
    EntityTag: { id: 'Mooshroom' }
});
recipes.addShaped( Mooshroom, [
    [ MushroomStew, MushroomStew, MushroomStew ],
    [ Egg, Egg, Egg ],
    [ Emerald, Emerald, Emerald ]
]);

var Mule = SpawnEgg.withTag({
    EntityTag: { id: 'Mule' }
});
recipes.addShaped( Mule, [
    [ Leather, Potato, Leather ],
    [ Egg, Egg, Egg ],
    [ Emerald, Emerald, Emerald ]
]);

var Fish = <minecraft:fish:0>;
var Ocelot = SpawnEgg.withTag({
    EntityTag: { id: 'Ocelot' }
});
recipes.addShaped( Ocelot, [
    [ Fish, Fish, Fish ],
    [ Egg, Egg, Egg ],
    [ Emerald, Emerald, Emerald ]
]);

var Parrot = SpawnEgg.withTag({
    EntityTag: { id: 'Parrot' }
});
recipes.addShaped( Parrot, [
    [ Feather ],
    [ Egg ],
    [ Emerald ]
]);

var Porkchop = <minecraft:porkchop>;
var Pig = SpawnEgg.withTag({
    EntityTag: { id: 'Pig' }
});
recipes.addShaped( Pig, [
    [ Porkchop, Porkchop, Porkchop ],
    [ Egg, Egg, Egg ],
    [ Emerald, Emerald, Emerald ]
]);

var Fish2 = <minecraft:fish:1>;
var Wool = <minecraft:wool>;
var PolarBear = SpawnEgg.withTag({
    EntityTag: { id: 'Polar_Bear' }
});
recipes.addShaped( PolarBear, [
    [ Fish, Wool, Fish2 ],
    [ Egg, Egg, Egg ],
    [ Emerald, Emerald, Emerald ]
]);

var RabbitMeat = <minecraft:rabbit>;
var Rabbit = SpawnEgg.withTag({
    EntityTag: { id: 'Rabbit' }
});
recipes.addShaped( Rabbit, [
    [ RabbitMeat, RabbitMeat, RabbitMeat ],
    [ Egg, Egg, Egg ],
    [ Emerald, Emerald, Emerald ]
]);

var Mutton = <minecraft:mutton>;
var Sheep = SpawnEgg.withTag({
    EntityTag: { id: 'Sheep' }
});
recipes.addShaped( Sheep, [
    [ Mutton, Mutton, Mutton ],
    [ Egg, Egg, Egg ],
    [ Emerald, Emerald, Emerald ]
]);

var Dye = <minecraft:dye:0>;
var Squid = SpawnEgg.withTag({
    EntityTag: { id: 'Squid' }
});
recipes.addShaped( Squid, [
    [ Dye, Dye, Dye ],
    [ Egg, Egg, Egg ],
    [ Emerald, Emerald, Emerald ]
]);

var CookedBeef = <minecraft:cooked_beef>;
var Wolf = SpawnEgg.withTag({
    EntityTag: { id: 'Wolf' }
});
recipes.addShaped( Wolf, [
    [ CookedBeef, CookedBeef, CookedBeef ],
    [ Egg, Egg, Egg ],
    [ Emerald, Emerald, Emerald ]
]);