var slimeMachine = <extrautils2:machine>.withTag({
    Type: "extrautils2:generator_slime"
});
var basicMachine = <extrautils2:machine>.withTag({
    Type: "extrautils2:generator"
});


recipes.remove( slimeMachine );


recipes.addShaped( slimeMachine, [
    [ <minecraft:slime_ball>, <minecraft:slime_ball>, <minecraft:slime_ball> ],
    [ <minecraft:slime_ball>, <minecraft:slime>, <minecraft:slime_ball> ],
    [ <minecraft:redstone>, basicMachine, <minecraft:redstone> ]
]);