import crafttweaker.data.IData; 


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
                var bookEnchantmentsLength = bookEnchantments.length;

                # 只允许有多个附魔属性的附魔书进行分解
                if( bookEnchantmentsLength <= 1 ){
                    return null;
                }

                var newEnchantments as IData = [];

                # 实在不想用这种方式的
                # 本想用循环遍历出除了首个附魔属性的其他附魔属性添加进映射数组
                # 但是尝试了许久发现数组类型的 IData 是不支持使用 += 添加映射数组的
                # 先暂时用这种方式吧
                # 以后看看有没有什么解决方法
                if( bookEnchantmentsLength == 2 ){
                    newEnchantments = [
                        bookEnchantments[1]
                    ];
                }else if( bookEnchantmentsLength == 3 ){
                    newEnchantments = [
                        bookEnchantments[1], bookEnchantments[2]
                    ];
                }else if( bookEnchantmentsLength == 4 ){
                    newEnchantments = [
                        bookEnchantments[1], bookEnchantments[2], bookEnchantments[3]
                    ];
                }else if( bookEnchantmentsLength == 5 ){
                    newEnchantments = [
                        bookEnchantments[1], bookEnchantments[2], bookEnchantments[3], bookEnchantments[4]
                    ];
                }else if( bookEnchantmentsLength == 6 ){
                    newEnchantments = [
                        bookEnchantments[1], bookEnchantments[2], bookEnchantments[3], bookEnchantments[4], bookEnchantments[5]
                    ];
                }else if( bookEnchantmentsLength == 7 ){
                    newEnchantments = [
                        bookEnchantments[1], bookEnchantments[2], bookEnchantments[3], bookEnchantments[4], bookEnchantments[5], bookEnchantments[6]
                    ];
                }else if( bookEnchantmentsLength == 8 ){
                    newEnchantments = [
                        bookEnchantments[1], bookEnchantments[2], bookEnchantments[3], bookEnchantments[4], bookEnchantments[5], bookEnchantments[6], bookEnchantments[7]
                    ];
                }

                return itemBook.withTag({
                    StoredEnchantments: newEnchantments
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

        # 返回首个附魔属性的附魔书
        return out.withTag({
            StoredEnchantments: [
                bookEnchantments[0]
            ]
        });

    },
    null
);