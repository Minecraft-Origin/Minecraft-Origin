# Author: Zhang-Wei-666
# Homepage: https://github.com/Minecraft-Origin/Minecraft-Origin


var compressedcobblestone = <extrautils2:compressedcobblestone>.definition;
var time = 1;

for index in 0 to 8{
    time *= 10;
    furnace.setFuel(
        compressedcobblestone.makeStack( index ),
        time
    );
}