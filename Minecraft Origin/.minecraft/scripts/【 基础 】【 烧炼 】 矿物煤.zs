var time = 1600;

var Mei  = <minecraft:coal:*>;
var Tie  = <minecraft:iron_ingot>;
var Jin  = <minecraft:gold_ingot>;
var ZuanShi = <minecraft:diamond>;
var LvBaoShi   = <minecraft:emerald>;
var XiaJieZhiXin  = <minecraft:nether_star>;
var LongDan  = <minecraft:dragon_egg>;

var Tie_Mei   = Tie.withTag({display: {Name: "\u94c1\u7164", Lore: ["\u71c3\u70e7\u65f6\u95f4\u662f\u666e\u901a\u7164\u70ad\u7684\u0033\u500d"]}});
var Tie_Mei_  = Tie_Mei.onlyWithTag({display: {Name: "\u94c1\u7164", Lore: ["\u71c3\u70e7\u65f6\u95f4\u662f\u666e\u901a\u7164\u70ad\u7684\u0033\u500d"]}});
var Jin_Mei   = Jin.withTag({display: {Name: "\u91d1\u7164", Lore: ["\u71c3\u70e7\u65f6\u95f4\u662f\u94c1\u7164\u7684\u0036\u500d"]}});
var Jin_Mei_  = Jin_Mei.onlyWithTag({display: {Name: "\u91d1\u7164", Lore: ["\u71c3\u70e7\u65f6\u95f4\u662f\u94c1\u7164\u7684\u0036\u500d"]}});
var Zuan_Mei  = ZuanShi.withTag({display: {Name: "\u94bb\u77f3\u7164", Lore: ["\u71c3\u70e7\u65f6\u95f4\u662f\u91d1\u7164\u7684\u0036\u500d"]}});
var Zuan_Mei_ = Zuan_Mei.onlyWithTag({display: {Name: "\u94bb\u77f3\u7164", Lore: ["\u71c3\u70e7\u65f6\u95f4\u662f\u91d1\u7164\u7684\u0036\u500d"]}});
var Lv_Mei    = LvBaoShi.withTag({display: {Name: "\u7eff\u5b9d\u77f3\u7164", Lore: ["\u71c3\u70e7\u65f6\u95f4\u662f\u94bb\u77f3\u7164\u7684\u0036\u500d"]}});
var Lv_Mei_   = Lv_Mei.onlyWithTag({display: {Name: "\u7eff\u5b9d\u77f3\u7164", Lore: ["\u71c3\u70e7\u65f6\u95f4\u662f\u94bb\u77f3\u7164\u7684\u0036\u500d"]}});
var Xin_Mei   = XiaJieZhiXin.withTag({display: {Name: "\u4e0b\u754c\u4e4b\u661f\u7164", Lore: ["\u71c3\u70e7\u65f6\u95f4\u662f\u7eff\u5b9d\u77f3\u7164\u7684\u0036\u500d"]}});
var Xin_Mei_  = Xin_Mei.onlyWithTag({display: {Name: "\u4e0b\u754c\u4e4b\u661f\u7164", Lore: ["\u71c3\u70e7\u65f6\u95f4\u662f\u7eff\u5b9d\u77f3\u7164\u7684\u0036\u500d"]}});
var Dan_Mei   = LongDan.withTag({display: {Name: "\u9f99\u86cb\u7164", Lore: ["\u71c3\u70e7\u65f6\u95f4\u662f\u4e0b\u754c\u4e4b\u661f\u7164\u7684\u0036\u500d"]}});
var Dan_Mei_  = Dan_Mei.onlyWithTag({display: {Name: "\u9f99\u86cb\u7164", Lore: ["\u71c3\u70e7\u65f6\u95f4\u662f\u4e0b\u754c\u4e4b\u661f\u7164\u7684\u0036\u500d"]}});

recipes.addShapeless(Tie_Mei,[Mei,Tie]);
recipes.addShapeless(Jin_Mei,[Mei,Jin]);
recipes.addShapeless(Zuan_Mei,[Mei,ZuanShi]);
recipes.addShapeless(Lv_Mei,[Mei,LvBaoShi]);
recipes.addShapeless(Xin_Mei,[Mei,XiaJieZhiXin]);
recipes.addShapeless(Dan_Mei,[Mei,LongDan]);

furnace.setFuel(Tie_Mei_,time*3);
furnace.setFuel(Jin_Mei_,time*18);
furnace.setFuel(Zuan_Mei_,time*108);
furnace.setFuel(Lv_Mei_,time*648);
furnace.setFuel(Xin_Mei_,time*3888);
furnace.setFuel(Dan_Mei_,time*23328);