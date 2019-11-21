# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


import crafttweaker.item.IItemStack;


events.onPlayerLoggedIn(
    function( event as crafttweaker.event.PlayerLoggedInEvent ){
        var player = event.player;
        var data = player.data;

        if( ( data in "PlayerRegistered" ) == false ){
            var items as IItemStack[] = [
                <minecraft:stone_sword>.withTag({
                    display: { Name: '新手石剑' }
                }),
                <minecraft:stone_axe>.withTag({
                    display: { Name: '新手石斧' }
                }),
                <minecraft:stone_pickaxe>.withTag({
                    display: { Name: '新手石镐' }
                }),
                <minecraft:stone_shovel>.withTag({
                    display: { Name: '新手石锹' }
                }),
                <minecraft:stone_hoe>.withTag({
                    display: { Name: '新手石锄' }
                }),
                <minecraft:chainmail_helmet>.withTag({
                    display: { Name: '新手帽子' }
                }),
                <minecraft:chainmail_chestplate>.withTag({
                    display: { Name: '新手外套' }
                }),
                <minecraft:chainmail_leggings>.withTag({
                    display: { Name: '新手裤子' }
                }),
                <minecraft:chainmail_boots>.withTag({
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
                        item.addEnchantment( <enchantment:minecraft:protection> * 3 );
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