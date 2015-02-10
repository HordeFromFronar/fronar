//damageObj(target,origin);
var target = argument[0];
var origin = argument[1];
var damage = 0;
var crit = 0;
var evade = 0;

if (instance_exists(target) && instance_exists(origin)) {
    damage = origin.damage - target.armour;
    
    crit = irandom (99);
    if (crit < origin.crit) {
        damage = damage * 2;
    }
    
    evade = irandom(99);
    if (evade < target.evade) {
        damage = 0;
    }
    
    target.hp -= damage;
}