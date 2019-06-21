var book = <minecraft:enchanted_book>;

recipes.addShapeless(
    "Infinity Enchantments - Enchanted Book Disintegration",
    book,
    [
        book.marked('book')
            .transformNew(function( itemBook ){

                var bookTag = itemBook.tag;

                # 只允许有附魔属性的附魔书进行分解
                if( ( bookTag in "StoredEnchantments" ) == false ){
                    return null;
                }

                var bookEnchantments = bookTag.StoredEnchantments;

                # 只允许有多个附魔属性的附魔书进行分解
                if( bookEnchantments.length <= 1 ){
                    return null;
                }

                /*

                    var newEnchantments = [];
                    var index = bookEnchantments.length - 1;

                    while index > 0 {
                        var enchantment = bookEnchantments[ index ];

                        # ???
                        newEnchantments += {
                            id: enchantment.id,
                            lvl: enchantment.lvl
                        };

                        index -= 1;
                    }

                    return itemBook.withTag({
                        StoredEnchantments: newEnchantments
                    });

                */

                var nextEnchantment = bookEnchantments[ 1 ];

                return itemBook.withTag({
                    StoredEnchantments: [{
                        id: nextEnchantment.id,
                        lvl: nextEnchantment.lvl
                    }]
                });
            })
    ],
    function( out, ins, info ){

        var bookTag = ins.book.tag;

        # 只允许有附魔属性的附魔书进行分解
        if( ( bookTag in "StoredEnchantments" ) == false ){
            return null;
        }

        var bookEnchantments = bookTag.StoredEnchantments;

        # 只允许有多个附魔属性的附魔书进行分解
        if( bookEnchantments.length <= 1 ){
            return null;
        }

        var firstEnchantment = bookEnchantments[0];

        # 返回首个附魔属性的附魔书
        return out.withTag({
            StoredEnchantments: [{
                id: firstEnchantment.id,
                lvl: firstEnchantment.lvl
            }]
        });

    },
    null
);