# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.item.IItemStack;


/******************* 所有的附魔定义 *******************/
/**/ global enchantments as IEnchantmentDefinition[] = [
/**/     <enchantment:minecraft:protection>, # 保护
/**/     <enchantment:minecraft:fire_protection>, # 火焰保护
/**/     <enchantment:minecraft:feather_falling>, # 摔落保护
/**/     <enchantment:minecraft:blast_protection>, # 爆炸保护
/**/     <enchantment:minecraft:projectile_protection>, # 弹射物保护
/**/     <enchantment:minecraft:thorns>, # 荆棘
/**/     <enchantment:minecraft:respiration>, # 水下呼吸
/**/     <enchantment:minecraft:depth_strider>, # 深海探索者
/**/     <enchantment:minecraft:aqua_affinity>, # 水下速掘
/**/     <enchantment:minecraft:sharpness>, # 锋利
/**/     <enchantment:minecraft:smite>, # 亡灵杀手
/**/     <enchantment:minecraft:bane_of_arthropods>, # 节肢杀手
/**/     <enchantment:minecraft:knockback>, # 击退
/**/     <enchantment:minecraft:fire_aspect>, # 火焰附加
/**/     <enchantment:minecraft:looting>, # 抢夺
/**/     <enchantment:minecraft:efficiency>, # 效率
/**/     <enchantment:minecraft:silk_touch>, # 精准采集
/**/     <enchantment:minecraft:unbreaking>, # 耐久
/**/     <enchantment:minecraft:fortune>, # 时运
/**/     <enchantment:minecraft:power>, # 力量
/**/     <enchantment:minecraft:punch>, # 冲击
/**/     <enchantment:minecraft:flame>, # 火矢
/**/     <enchantment:minecraft:infinity>, # 无限
/**/     <enchantment:minecraft:luck_of_the_sea>, # 海之眷顾
/**/     <enchantment:minecraft:lure>, # 饵钓
/**/     <enchantment:minecraft:frost_walker>, # 冰霜行者
/**/     <enchantment:minecraft:mending>, # 经验修补
/**/     <enchantment:minecraft:binding_curse>, # 绑定诅咒
/**/     <enchantment:minecraft:vanishing_curse>, # 消失诅咒
/**/     #<enchantment:minecraft:impaling>, # 穿刺
/**/     #<enchantment:minecraft:riptide>, # 激流
/**/     #<enchantment:minecraft:loyalty>, # 忠诚
/**/     #<enchantment:minecraft:channeling>, # 引雷
/**/     #<enchantment:minecraft:multishot>, # 多重射击
/**/     #<enchantment:minecraft:piercing>, # 穿透
/**/     #<enchantment:minecraft:quick_charge>, # 快速装填
/**/     <enchantment:minecraft:sweeping> # 横扫之刃
/**/ ];

    if( loadedMods in "openblocks" ){
        enchantments += <enchantment:openblocks:flim_flam>; # 尔虞我诈
        enchantments += <enchantment:openblocks:last_stand>; # 屹立不倒
        enchantments += <enchantment:openblocks:explosive>; # 震荡不定
    }

    if( loadedMods in "bibliocraft" ){
        enchantments += <enchantment:bibliocraft:bibliocraft.readingench>; # 读取
        enchantments += <enchantment:bibliocraft:bibliocraft.deathcompassench>; # 永恒罗盘
    }

    if( loadedMods in "cyclicmagic" ){
        enchantments += <enchantment:cyclicmagic:enchantment.lifeleech>; # 生命汲取
        enchantments += <enchantment:cyclicmagic:enchantment.expboost>; # 经验提升
        enchantments += <enchantment:cyclicmagic:enchantment.waterwalking>; # 水上行走
        enchantments += <enchantment:cyclicmagic:enchantment.magnet>; # 磁引
        enchantments += <enchantment:cyclicmagic:enchantment.reach>; # 范围扩展
        enchantments += <enchantment:cyclicmagic:enchantment.multishot>; # 多重射击
        enchantments += <enchantment:cyclicmagic:enchantment.beheading>; # 斩首
        enchantments += <enchantment:cyclicmagic:enchantment.quickdraw>; # 快弓
        enchantments += <enchantment:cyclicmagic:enchantment.autosmelt>; # 自动冶炼
        enchantments += <enchantment:cyclicmagic:enchantment.excavation>; # 连锁采掘
        enchantments += <enchantment:cyclicmagic:enchantment.launch>; # 多段跳
        enchantments += <enchantment:cyclicmagic:enchantment.venom>; # 毒液
    }

/******************* 所有的附魔定义 *******************/


/******************* 所有的附魔的 ID 与对应的附魔定义映射 *******************/
/**/ global enchantmentsMap as IEnchantmentDefinition[string] = {};
/**/ 
/**/ for index, enchantment in enchantments{
/**/     enchantmentsMap[ enchantment.id ] = enchantment;
/**/ }
/******************* 所有的附魔的 ID 与对应的附魔定义映射 *******************/


/******************* 对物品进行拷贝的方法 *******************/
/**/ function copy( item as IItemStack ) as IItemStack {
/**/     var newItem = item.definition.makeStack(
/**/         item.metadata
/**/     );
/**/ 
/**/     newItem.displayName = item.displayName;
/**/ 
/**/ 
/**/     return newItem;
/**/ }
/******************* 对物品进行拷贝的方法 *******************/