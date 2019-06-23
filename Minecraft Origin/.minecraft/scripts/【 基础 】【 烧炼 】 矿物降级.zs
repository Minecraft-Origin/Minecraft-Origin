# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


var LvBaoShi = <minecraft:emerald>;
var Zhuan    = <minecraft:diamond>;
var Jing     = <minecraft:gold_ingot>;
var Tie      = <minecraft:iron_ingot>;
var Mei      = <minecraft:coal:0>;

furnace.addRecipe(Zhuan*4,LvBaoShi,6);
furnace.addRecipe(Jing*4,Zhuan,5);
furnace.addRecipe(Tie*4,Jing,4);
furnace.addRecipe(Mei*4,Tie,3);


var LvBaoShiKuai = <minecraft:emerald_block>;
var ZhuanKuai    = <minecraft:diamond_block>;
var JingKuai     = <minecraft:gold_block>;
var TieKuai      = <minecraft:iron_block>;
var MeiKuai      = <minecraft:coal_block>;
var HongShiKuai  = <minecraft:redstone_block>;

furnace.addRecipe(ZhuanKuai*4,LvBaoShiKuai,54);
furnace.addRecipe(JingKuai*4,ZhuanKuai,45);
furnace.addRecipe(TieKuai*4,JingKuai,36);
furnace.addRecipe(MeiKuai*4,TieKuai,27);
furnace.addRecipe(HongShiKuai*1,MeiKuai,6);