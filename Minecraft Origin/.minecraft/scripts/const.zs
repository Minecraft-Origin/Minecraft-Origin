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

    if( loadedMods in "projectred-expansion" ){
        enchantments += <enchantment:projectred-expansion:electric_efficiency>; # 燃油效率
    }

#   if( loadedMods in "endercore" ){
#       enchantments += <enchantment:endercore:autosmelt>; # 自动冶炼 ( 已禁用 )
#       enchantments += <enchantment:endercore:xpboost>; # 经验汲取 ( 已禁用 )
#   }

    if( loadedMods in "enderio" ){
        enchantments += <enchantment:enderio:repellent>; # 驱散传送
        enchantments += <enchantment:enderio:witherarrow>; # 凋零
        enchantments += <enchantment:enderio:witherweapon>; # 腐烂
        enchantments += <enchantment:enderio:soulbound>; # 灵魂绑定 ( 已禁用 )
        enchantments += <enchantment:enderio:shimmer>; # 微光 ( 已禁用 )
    }

    if( loadedMods in "cofhcore" ){
        enchantments += <enchantment:cofhcore:holding>; # 扩容
        enchantments += <enchantment:cofhcore:leech>; # 吸血
        enchantments += <enchantment:cofhcore:insight>; # 洞察
        enchantments += <enchantment:cofhcore:soulbound>; # 灵魂绑定
        enchantments += <enchantment:cofhcore:smashing>; # 粉碎
        enchantments += <enchantment:cofhcore:multishot>; # 万箭
        enchantments += <enchantment:cofhcore:vorpal>; # 斩首
        enchantments += <enchantment:cofhcore:smelting>; # 冶炼
    }

    if( loadedMods in "draconicevolution" ){
        enchantments += <enchantment:draconicevolution:enchant_reaper>; # 收割者
    }

    if( loadedMods in "exnihilocreatio" ){
        enchantments += <enchantment:exnihilocreatio:sieve_luck_of_the_sea>; # 筛网海之眷顾
        enchantments += <enchantment:exnihilocreatio:sieve_efficiency>; # 筛网效率
        enchantments += <enchantment:exnihilocreatio:sieve_fortune>; # 筛网时运
    }

    if( loadedMods in "extrautils2" ){
        enchantments += <enchantment:extrautils2:xu.burnerang>; # 回旋燃烧
        enchantments += <enchantment:extrautils2:xu.boomereaperang>; # 回旋收割
        enchantments += <enchantment:extrautils2:xu.bladerang>; # 回旋锋利
        enchantments += <enchantment:extrautils2:xu.kaboomerang>; # 回旋爆炸
        enchantments += <enchantment:extrautils2:xu.zoomerang>; # 回旋提速
    }

    if( loadedMods in "railcraft" ){
        enchantments += <enchantment:railcraft:destruction>; # 拆除
        enchantments += <enchantment:railcraft:implosion>; # 克爆
        enchantments += <enchantment:railcraft:wrecking>; # 破击
        enchantments += <enchantment:railcraft:smack>; # 推车
    }

/******************* 所有的附魔定义 *******************/


/******************* 所有的附魔的 ID 与对应的附魔定义映射 *******************/
/**/ global enchantmentsMap as IEnchantmentDefinition[string] = {};
/**/ 
/**/ events.onPlayerLoggedIn(
/**/     function( event as crafttweaker.event.PlayerLoggedInEvent ){
/**/         for index, enchantment in enchantments{
/**/             enchantmentsMap[ enchantment.id ] = enchantment;
/**/         }
/**/     }
/**/ );
/******************* 所有的附魔的 ID 与对应的附魔定义映射 *******************/


/******************* 对物品进行拷贝的方法 *******************/
/**/ function copy( item as IItemStack ) as IItemStack {
/**/     var newItem = item.definition.makeStack(
/**/         item.metadata
/**/     );
/**/ 
/**/     newItem.displayName = item.displayName;
/**/ 
/**/     # 匠魂支持
/**/     # 匠魂护甲支持
/**/     # 无中生有模组 "碎矿锤" / "钩子" 支持
/**/     if( item.definition.owner == "tconstruct" || item.definition.owner == "conarm" || item.definition.owner == "exnihilocreatio" ){
/**/         var tag = item.tag;
/**/ 
/**/        if( tag in "StatsOriginal" ){
/**/            newItem = newItem.updateTag({ StatsOriginal: tag.StatsOriginal });
/**/        }
/**/        if( tag in "Stats" ){
/**/            newItem = newItem.updateTag({ Stats: tag.Stats });
/**/        }
/**/        if( tag in "Special" ){
/**/            newItem = newItem.updateTag({ Special: tag.Special });
/**/        }
/**/        if( tag in "TinkerData" ){
/**/            newItem = newItem.updateTag({ TinkerData: tag.TinkerData });
/**/        }
/**/        if( tag in "Modifiers" ){
/**/            newItem = newItem.updateTag({ Modifiers: tag.Modifiers });
/**/        }
/**/        if( tag in "Traits" ){
/**/            newItem = newItem.updateTag({ Traits: tag.Traits });
/**/        }
/**/     }
/**/ 
/**/     return newItem;
/**/ }
/**/ 
/**/ function intactCopy( item as IItemStack ) as IItemStack {
/**/     var newItem = copy( item );
/**/ 
/**/     # 取出原物品上附魔属性添加到新物品上
/**/     for enchantment in item.enchantments{
/**/         newItem.addEnchantment( enchantment );
/**/     }
/**/ 
/**/     return newItem;
/**/ }
/******************* 对物品进行拷贝的方法 *******************/