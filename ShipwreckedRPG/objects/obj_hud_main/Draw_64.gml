/// @desc 
//Draw self - frame
draw_self();

#region format text
draw_set_font(font_info);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_yellow);
#endregion

#region draw spell pop-up
if (can_show_spells)
{
	draw_set_alpha(0.5);
	draw_sprite(spr_popup_spells,0,355,200);
	draw_set_alpha(1); //reset transparency
	draw_text(142,180,global.earth_spell);
	draw_text(274,180,global.fire_spell);
	draw_text(416,180,global.ice_spell);
	draw_text(551,180,global.water_spell);
}
#endregion

#region draw hp,xp,level
draw_hp = global.hp mod 100;
draw_xp = global.xp mod 100;
draw_level = (global.xp div 100)+1;
//hp
draw_text(60,552,"HP:"+string(global.hp));
for (var loop = 0; loop < draw_hp; loop+=1)
{
	draw_line(135+loop,547,135+loop,557);
}
draw_set_color(c_black);
draw_roundrect(135,547,230,557,true);
draw_roundrect(134,546,231,558,true);
draw_set_color(c_yellow);

//xp
draw_text(60,582,"XP:"+string(global.xp));
draw_set_color(c_teal);

for (var loop = 0; loop<draw_xp; loop+=1)
{
	draw_line(135+loop,577,135+loop,587);
}

draw_set_color(c_black);
draw_roundrect(135,577,230,587,true);
draw_roundrect(134,576,231,588,true);
draw_set_color(c_yellow);

//level
draw_set_halign(fa_center);
draw_text(150,524,"Level:"+string(draw_level));
draw_set_halign(fa_left);
#endregion

#region draw gold,weapon and inventory
draw_text(100,638,"Gold:"+string(global.gold));

//draw weapon
switch(global.weapon)
{
	case 0:
	weapon_name = "Cutlass";
	break;
	
	case 1:
	weapon_name = "Gun";
	break;
	
	case 2:
	weapon_name = "Hook";
	break;
}

draw_set_halign(fa_middle);
draw_text(350,522,"Weapon");
draw_text(350,540,weapon_name);
draw_sprite(spr_weapon_1,global.weapon,350,600);
draw_set_halign(fa_left);	//reset to preferred default

//draw inventory
if (can_show_inventory)
{
	draw_sprite(spr_inv_bg,0,0,400);
	draw_set_halign(fa_center);
	draw_text(350,420,"Pop Up Inventory System Would Go Here");
	draw_set_font(font_info_small);
	//draw_example
	draw_sprite(spr_inv_rum,0,300,450);
	draw_sprite(spr_inv_chest,0,400,450);
}
#endregion
//info
draw_set_font(font_message2);
draw_set_halign(fa_left);
draw_text(100,200,"S to show Spells - I to show Inventory\nQ A to change HP\nE D change XP\nR F change gold\nW change Weapon");
