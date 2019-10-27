# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


import crafttweaker.item.IItemStack;


events.onPlayerLoggedIn(
    function( event as crafttweaker.event.PlayerLoggedInEvent ){
        var player = event.player;
        var data = player.data;

        if( ( data in "PlayerRegistered" ) == false ){
            var items as IItemStack[] = [
                <minecraft:iron_sword>.withTag({
                    display: { Name: '新手铁剑' }
                }),
                <minecraft:iron_axe>.withTag({
                    display: { Name: '新手铁斧' }
                }),
                <minecraft:iron_pickaxe>.withTag({
                    display: { Name: '新手铁镐' }
                }),
                <minecraft:iron_shovel>.withTag({
                    display: { Name: '新手铁锹' }
                }),
                <minecraft:iron_hoe>.withTag({
                    display: { Name: '新手铁锄' }
                }),
                <minecraft:iron_helmet>.withTag({
                    display: { Name: '新手帽子' }
                }),
                <minecraft:iron_chestplate>.withTag({
                    display: { Name: '新手外套' }
                }),
                <minecraft:iron_leggings>.withTag({
                    display: { Name: '新手裤子' }
                }),
                <minecraft:iron_boots>.withTag({
                    display: { Name: '新手靴子' }
                }),
                <minecraft:torch> * 64,
                <minecraft:cooked_fish:1> * 32,
                <minecraft:white_shulker_box>,
                <compactmachines3:machine:5>,
                <compactmachines3:psd>,
                <chickenchunks:chunk_loader:1> * 6
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