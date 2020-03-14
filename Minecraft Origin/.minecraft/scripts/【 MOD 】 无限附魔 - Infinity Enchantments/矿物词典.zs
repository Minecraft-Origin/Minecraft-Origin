# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


var ore = <ore:minecraft_origin_infinity_enchantments_zhang_wei_666>;

for mod in loadedMods {
    var modID = mod.id;

    for item in mod.items {
        var itemID = item.definition.id;

        # 忽略对匠魂的支持
        if ( modID == "tconstruct" ){
            if ( itemID == "tconstruct:pickaxe" || itemID == "tconstruct:shovel" || itemID == "tconstruct:hatchet" || itemID == "tconstruct:mattock" || itemID == "tconstruct:kama" || itemID == "tconstruct:hammer" || itemID == "tconstruct:excavator" || itemID == "tconstruct:lumberaxe" || itemID == "tconstruct:scythe" || itemID == "tconstruct:broadsword" || itemID == "tconstruct:longsword" || itemID == "tconstruct:rapier" || itemID == "tconstruct:frypan" || itemID == "tconstruct:battlesign" || itemID == "tconstruct:cleaver" || itemID == "tconstruct:shortbow" || itemID == "tconstruct:longbow" || itemID == "tconstruct:crossbow" || itemID == "tconstruct:arrow" || itemID == "tconstruct:bolt" || itemID == "tconstruct:shuriken" ) {
                break;
            }
        }
        # 忽略对匠魂护甲的支持
        else if ( modID == "conarm"){
            if ( itemID == "conarm:helmet" || itemID == "conarm:chestplate" || itemID == "conarm:leggings" || itemID == "conarm:boots" ) {
                break;
            }
        }
        # 忽略对无中生有匠魂碎矿锤和匠魂钩子的支持
        else if ( modID == "exnihilocreatio" ) {
            if ( itemID == "exnihilocreatio:crook_tconstruct" || itemID == "exnihilocreatio:hammer_tconstruct" ) {
                break;
            }
        }
        # 移除赛特斯石英种子和下界石英种子和福鲁伊克斯种子
        else if ( modID == "appliedenergistics2" ) {
            if ( itemID == "appliedenergistics2:crystal_seed" ) {
                break;
            }
        }

        # 只有可附魔和有耐久的物品才可被添加到矿物词典中
        if ( item.itemEnchantability > 0 || item.maxDamage > 1 ){
            ore.add( item );
        }
    }
}