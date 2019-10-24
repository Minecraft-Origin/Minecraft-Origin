# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


import crafttweaker.data.IData; 


# 附魔书
var book = <minecraft:enchanted_book>;
# 使用说明书
var tips = <minecraft:book>.withTag({
    display: {
        Name: "< 无限附魔 - 附魔书分解 > 使用说明",
        Lore: [
            "可以对多属性的附魔书进行逐个分解"
        ]
    }
});


recipes.addShapeless(
    "Infinity Enchantments - Enchanted Book Disintegration",
    tips,
    [
        book.marked('book')
            .transformNew(function( itemBook ){

                var bookTag = itemBook.tag;

                # 只允许有附魔属性的附魔书进行分解
                if( ( bookTag in "StoredEnchantments" ) == false ){
                    return null;
                }

                var bookStoredEnchantments = bookTag.StoredEnchantments;
                var bookStoredEnchantmentsLength = bookStoredEnchantments.length;

                # 只允许有附魔属性的附魔书进行分解
                if( bookStoredEnchantmentsLength < 1 ){
                    return null;
                }

                var newBookStoredEnchantments as IData = [];

                # 实在不想用这种方式的
                # 本想用循环遍历出除了首个附魔属性的其他附魔属性添加进映射数组
                # 但是尝试了许久发现数组类型的 IData 是不支持使用 += 添加映射数组的
                # 先暂时用这种方式吧
                # 以后看看有没有什么解决方法
                if( bookStoredEnchantmentsLength == 1 ){
                    return null;
                }else if( bookStoredEnchantmentsLength == 2 ){
                    newBookStoredEnchantments = [
                        bookStoredEnchantments[1]
                    ];
                }else if( bookStoredEnchantmentsLength == 3 ){
                    newBookStoredEnchantments = [
                        bookStoredEnchantments[1], bookStoredEnchantments[2]
                    ];
                }else if( bookStoredEnchantmentsLength == 4 ){
                    newBookStoredEnchantments = [
                        bookStoredEnchantments[1], bookStoredEnchantments[2], bookStoredEnchantments[3]
                    ];
                }else if( bookStoredEnchantmentsLength == 5 ){
                    newBookStoredEnchantments = [
                        bookStoredEnchantments[1], bookStoredEnchantments[2], bookStoredEnchantments[3], bookStoredEnchantments[4]
                    ];
                }else if( bookStoredEnchantmentsLength == 6 ){
                    newBookStoredEnchantments = [
                        bookStoredEnchantments[1], bookStoredEnchantments[2], bookStoredEnchantments[3], bookStoredEnchantments[4], bookStoredEnchantments[5]
                    ];
                }else if( bookStoredEnchantmentsLength == 7 ){
                    newBookStoredEnchantments = [
                        bookStoredEnchantments[1], bookStoredEnchantments[2], bookStoredEnchantments[3], bookStoredEnchantments[4], bookStoredEnchantments[5], bookStoredEnchantments[6]
                    ];
                }else if( bookStoredEnchantmentsLength == 8 ){
                    newBookStoredEnchantments = [
                        bookStoredEnchantments[1], bookStoredEnchantments[2], bookStoredEnchantments[3], bookStoredEnchantments[4], bookStoredEnchantments[5], bookStoredEnchantments[6], bookStoredEnchantments[7]
                    ];
                }

                return itemBook.withTag({
                    StoredEnchantments: newBookStoredEnchantments
                });
            })
    ],
    function( out, ins, info ){

        var bookTag = ins.book.tag;

        # 只允许有附魔属性的附魔书进行分解
        if( ( bookTag in "StoredEnchantments" ) == false ){
            return null;
        }

        # 只允许有附魔属性的附魔书进行分解
        if( bookTag.StoredEnchantments.length < 1 ){
            return null;
        }

        # 返回首个附魔属性的附魔书
        return <minecraft:enchanted_book>.withTag({
            StoredEnchantments: [
                bookTag.StoredEnchantments[0]
            ]
        });

    },
    null
);