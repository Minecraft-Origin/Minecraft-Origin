# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


import crafttweaker.enchantments.IEnchantment;


/******************* 所有物品的矿物词典 *******************/
/**/ var ore = <ore:minecraft_origin_infinity_enchantments_zhang_wei_666>;
/**/ var book = <minecraft:enchanted_book>;
/**/
/**/ for mod in loadedMods {
/**/     ore.addItems( mod.items );
/**/ }
/**/
/**/ # 除了附魔书
/**/ ore.remove( book );
/******************* 所有物品的矿物词典 *******************/


recipes.addShapeless(
    "Infinity Enchantments - Enchanting",
    book,
    [
        # 只有满耐久的物品才能参与合成, 就当做限制吧
        # 没办法, 矿物词典不能用 anyDamage 匹配条件
        # 也可能是我没用对哈哈
        ore.marked("item"),
        book.marked("book")
    ],
    function( out, ins, info ){

        var item = ins.item;
        var bookTag = ins.book.tag;

        # 只允许和有附魔属性的附魔书进行附魔
        if( ( bookTag in "StoredEnchantments" ) == false ){
            return null;
        }

        var bookStoredEnchantments = bookTag.StoredEnchantments;

        # 只允许和单附魔属性的附魔书进行附魔
        if( bookStoredEnchantments.length != 1 ){
            return null;
        }

        var bookEnchantment = bookStoredEnchantments[0];

        # 只允许和在列表中的附魔属性进行附魔
        if( ( scripts.const.enchantmentsMap in bookEnchantment.id ) == false ){
            return null;
        }

        var newItem = item.definition.makeStack();
        var itemEnchantments as IEnchantment[] = [];

        # 取出原物品上除了附魔书上附魔属性的所有附魔属性
        for enchantment in item.enchantments{
            if( enchantment.definition.id != bookEnchantment.id ){
                itemEnchantments += enchantment;
            }
        }
        # 将附魔书上的附魔属性添加到附魔属性数组中
        itemEnchantments += scripts.const.enchantmentsMap[ bookEnchantment.id ].makeEnchantment(
            bookEnchantment.lvl
        );

        # 将所有附魔属性添加到新物品上
        for enchantment in itemEnchantments{
            newItem.addEnchantment( enchantment );
        }

        return newItem;
    },
    null
);