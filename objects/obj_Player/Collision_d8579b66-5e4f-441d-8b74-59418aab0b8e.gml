hat.hat_num = other.hat_num;
spd = default_spd;
attack_damage = default_attack;
switch(hat.hat_num){
	case 0:
		spd = default_spd;
		break;
	case 1:
		spd = default_spd * 1.50;
		break;
	case 2:
		attack_damage = default_attack * 1.25;
		break;
}