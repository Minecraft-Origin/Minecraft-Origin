# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


import crafttweaker.item.IItemStack;


events.onPlayerLoggedIn(
    function( event as crafttweaker.event.PlayerLoggedInEvent ){
        var player = event.player;
        var data = player.data;

        if( ( data in "PlayerRegistered" ) == false ){
            var items as IItemStack[] = [
                <minecraft:wooden_sword>.withTag({
                    display: { Name: '新手木剑' }
                }),
                <minecraft:wooden_axe>.withTag({
                    display: { Name: '新手木斧' }
                }),
                <minecraft:wooden_pickaxe>.withTag({
                    display: { Name: '新手木镐' }
                }),
                <minecraft:wooden_shovel>.withTag({
                    display: { Name: '新手木锹' }
                }),
                <minecraft:wooden_hoe>.withTag({
                    display: { Name: '新手木锄' }
                }),
                <minecraft:leather_helmet>.withTag({
                    display: { Name: '新手帽子' }
                }),
                <minecraft:leather_chestplate>.withTag({
                    display: { Name: '新手外套' }
                }),
                <minecraft:leather_leggings>.withTag({
                    display: { Name: '新手裤子' }
                }),
                <minecraft:leather_boots>.withTag({
                    display: { Name: '新手靴子' }
                }),
                <minecraft:torch> * 64,
                <minecraft:bread> * 32,
                <minecraft:white_shulker_box>
            ];

            for index, item in items{
                if( index < 9 ){
                    # 经验修补
                    item.addEnchantment( <enchantment:minecraft:mending> * 1 );
                    # 耐久
                    item.addEnchantment( <enchantment:minecraft:unbreaking> * 10 );

                    # 锋利
                    if( index == 0 || index == 1 ){
                        item.addEnchantment( <enchantment:minecraft:sharpness> * 5 );
                    }
                    # 效率
                    if( index > 0 && index < 5 ){
                        item.addEnchantment( <enchantment:minecraft:efficiency> * 5 );
                    }
                    # 保护
                    if( index > 4 ){
                        item.addEnchantment( <enchantment:minecraft:protection> * 2 );
                    }
                }

                player.give( item );
            }

            player.update({
                PlayerRegistered: true
            });

            return;
        }

        player.update({
            PlayerRegistered: true
        });
    }
);

events.onPlayerLoggedOut(
    function( event as crafttweaker.event.PlayerLoggedOutEvent ){
        event.player.update({
            PlayerRegistered: true
        });
    }
);