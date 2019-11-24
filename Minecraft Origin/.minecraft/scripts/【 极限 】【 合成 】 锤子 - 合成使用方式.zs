# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


import crafttweaker.item.IItemStack;


var hammers as IItemStack[] = [
    <exnihilocreatio:hammer_wood>,
    <exnihilocreatio:hammer_stone>,
    <exnihilocreatio:hammer_iron>,
    <exnihilocreatio:hammer_gold>,
    <exnihilocreatio:hammer_diamond>,
    <exnihilocreatio:hammer_tconstruct>
];

var compressedHammers as IItemStack[] = [
    <excompressum:compressed_hammer_wood>,
    <excompressum:compressed_hammer_stone>,
    <excompressum:compressed_hammer_iron>,
    <excompressum:compressed_hammer_gold>,
    <excompressum:compressed_hammer_diamond>
];


for hammer in hammers {
    var anyHammer = hammer.anyDamage().transformDamage(2);

    # 圆石 -> 砂砾
    recipes.addShapeless( <minecraft:gravel>, [ anyHammer, <minecraft:cobblestone> ]);
    # 砂砾 -> 沙子
    recipes.addShapeless( <minecraft:sand>, [ anyHammer, <minecraft:gravel> ]);
    # 沙子 / 红沙 -> 粉尘
    recipes.addShapeless( <exnihilocreatio:block_dust>, [ anyHammer, <minecraft:sand:*> ]);
    # 地狱岩 -> 粉碎的地狱岩
    recipes.addShapeless( <exnihilocreatio:block_netherrack_crushed>, [ anyHammer, <minecraft:netherrack> ]);
    # 末地石 -> 粉碎的末地石
    recipes.addShapeless( <exnihilocreatio:block_endstone_crushed>, [ anyHammer, <minecraft:end_stone> ]);
    # 安山岩 -> 粉碎的安山岩
    recipes.addShapeless( <exnihilocreatio:block_andesite_crushed>, [ anyHammer, <minecraft:stone:5> ]);
    # 闪长岩 -> 粉碎的闪长岩
    recipes.addShapeless( <exnihilocreatio:block_diorite_crushed>, [ anyHammer, <minecraft:stone:3> ]);
    # 花岗岩 -> 粉碎的花岗岩
    recipes.addShapeless( <exnihilocreatio:block_granite_crushed>, [ anyHammer, <minecraft:stone:1> ]);
    # 粉碎的花岗岩 -> 红沙
    recipes.addShapeless( <minecraft:sand:1>, [ anyHammer, <exnihilocreatio:block_granite_crushed> ]);
    # 混凝土 -> 混凝土粉末
    recipes.addShapeless( <minecraft:concrete_powder:0>, [ anyHammer, <minecraft:concrete:0> ]);
    recipes.addShapeless( <minecraft:concrete_powder:1>, [ anyHammer, <minecraft:concrete:1> ]);
    recipes.addShapeless( <minecraft:concrete_powder:2>, [ anyHammer, <minecraft:concrete:2> ]);
    recipes.addShapeless( <minecraft:concrete_powder:3>, [ anyHammer, <minecraft:concrete:3> ]);
    recipes.addShapeless( <minecraft:concrete_powder:4>, [ anyHammer, <minecraft:concrete:4> ]);
    recipes.addShapeless( <minecraft:concrete_powder:5>, [ anyHammer, <minecraft:concrete:5> ]);
    recipes.addShapeless( <minecraft:concrete_powder:6>, [ anyHammer, <minecraft:concrete:6> ]);
    recipes.addShapeless( <minecraft:concrete_powder:7>, [ anyHammer, <minecraft:concrete:7> ]);
    recipes.addShapeless( <minecraft:concrete_powder:8>, [ anyHammer, <minecraft:concrete:8> ]);
    recipes.addShapeless( <minecraft:concrete_powder:9>, [ anyHammer, <minecraft:concrete:9> ]);
    recipes.addShapeless( <minecraft:concrete_powder:10>, [ anyHammer, <minecraft:concrete:10> ]);
    recipes.addShapeless( <minecraft:concrete_powder:11>, [ anyHammer, <minecraft:concrete:11> ]);
    recipes.addShapeless( <minecraft:concrete_powder:12>, [ anyHammer, <minecraft:concrete:12> ]);
    recipes.addShapeless( <minecraft:concrete_powder:13>, [ anyHammer, <minecraft:concrete:13> ]);
    recipes.addShapeless( <minecraft:concrete_powder:14>, [ anyHammer, <minecraft:concrete:14> ]);
    recipes.addShapeless( <minecraft:concrete_powder:15>, [ anyHammer, <minecraft:concrete:15> ]);
    # 陨石 -> 粉碎陨石
    recipes.addShapeless( <exnihilocreatio:block_skystone_crushed>, [ anyHammer, <appliedenergistics2:sky_stone_block> ]);
}

for index, compressedHammer in compressedHammers {
    var anyCompressedHammer = compressedHammer.anyDamage().transformDamage(2);

    # 压缩圆石 -> 压缩砂砾
    recipes.addShapeless( <excompressum:compressed_block:2>, [ anyCompressedHammer, <excompressum:compressed_block:1> ]);
    recipes.addShapeless( <excompressum:compressed_block:2>, [ anyCompressedHammer, <extrautils2:compressedcobblestone> ]);
    # 压缩砂砾 -> 压缩沙子
    recipes.addShapeless( <excompressum:compressed_block:3>, [ anyCompressedHammer, <excompressum:compressed_block:2> ]);
    recipes.addShapeless( <excompressum:compressed_block:3>, [ anyCompressedHammer, <extrautils2:compressedgravel> ]);
    # 压缩沙子 -> 压缩粉尘
    recipes.addShapeless( <excompressum:compressed_block:0>, [ anyCompressedHammer, <excompressum:compressed_block:3> ]);
    recipes.addShapeless( <excompressum:compressed_block:0>, [ anyCompressedHammer, <extrautils2:compressedsand> ]);
    # 压缩地狱岩 -> 压缩地狱岩砂砾
    recipes.addShapeless( <excompressum:compressed_block:6>, [ anyCompressedHammer, <excompressum:compressed_block:9> ]);
    # 压缩末地石 -> 压缩末地石砂砾
    recipes.addShapeless( <excompressum:compressed_block:7>, [ anyCompressedHammer, <excompressum:compressed_block:10> ]);


    # 压缩工具的耐久值等于普通工具的耐久值
    compressedHammer.maxDamage = hammers[ index ].maxDamage;
}