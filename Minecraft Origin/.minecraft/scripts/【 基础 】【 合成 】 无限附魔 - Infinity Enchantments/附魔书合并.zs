var book = <minecraft:enchanted_book>;

recipes.addShapeless(
    "Infinity Enchantments - Enchanted Book Merge",
    book,
    [
        book.marked("one"),
        book.marked("two")
    ],
    function( out, ins, info ){

        var oneTag = ins.one.tag;
        var twoTag = ins.two.tag;

        # 只允许有附魔属性的附魔书进行合并
        if( ( oneTag in "StoredEnchantments" ) == false | ( twoTag in "StoredEnchantments" ) == false ){
            return null;
        }

        var oneEnchantments = oneTag.StoredEnchantments;
        var twoEnchantments = twoTag.StoredEnchantments;

        # 只允许单附魔属性的附魔书进行合并
        if( oneEnchantments.length != 1 | twoEnchantments.length != 1 ){
            return null;
        }

        var oneEnchantment = oneEnchantments[0];
        var twoEnchantment = twoEnchantments[0];

        # 只允许相同附魔属性的附魔书进行合并
        if( oneEnchantment.id != twoEnchantment.id ){
            return null;
        }

        # 只允许相同等级的附魔属性的附魔书进行合并
        if( oneEnchantment.lvl != twoEnchantment.lvl ){
            return null;
        }

        # 返回新等级的附魔书
        return out.withTag({
            StoredEnchantments: [{
                id: oneEnchantment.id,
                lvl: oneEnchantment.lvl + 1
            }]
        });

    },
    null
);