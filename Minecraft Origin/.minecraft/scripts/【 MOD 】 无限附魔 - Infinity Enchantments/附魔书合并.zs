# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


# 附魔书
var book = <minecraft:enchanted_book>;
# 使用说明书
var tips = <minecraft:book>.withTag({
    display: {
        Name: "< 无限附魔 - 附魔书合并 > 使用说明",
        Lore: [
            "可以对相同属性相同等级的单属性附魔书进行合成, 从而得到更高等级的附魔书"
        ]
    }
});


recipes.addShapeless(
    "Infinity Enchantments - Enchanted Book Merge",
    tips,
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

        # 只允许单附魔属性的附魔书进行合并
        if( oneTag.StoredEnchantments.length != 1 | twoTag.StoredEnchantments.length != 1 ){
            return null;
        }

        var oneEnchantment = oneTag.StoredEnchantments[0];
        var twoEnchantment = twoTag.StoredEnchantments[0];

        # 只允许相同附魔属性的附魔书进行合并
        if( oneEnchantment.id != twoEnchantment.id ){
            return null;
        }

        # 只允许相同等级的附魔属性的附魔书进行合并
        if( oneEnchantment.lvl != twoEnchantment.lvl ){
            return null;
        }

        # 只允许最高等级大于一级的附魔属性的附魔书进行合并
        if( ( scripts.const.enchantmentsMap in oneEnchantment.id ) & scripts.const.enchantmentsMap[ oneEnchantment.id ].maxLevel == 1 ){
            return null;
        }

        var lure = <enchantment:minecraft:lure>;
        var lureId = lure.id;

        # 饵钓附魔不能超过五级, 否则会失效
        if( oneEnchantment.id == lureId & oneEnchantment.lvl == 5 ){
            return null;
        }

        # 返回新等级的附魔书
        return <minecraft:enchanted_book>.withTag({
            StoredEnchantments: [{
                id: oneEnchantment.id,
                lvl: oneEnchantment.lvl + 1
            }]
        });

    },
    null
);