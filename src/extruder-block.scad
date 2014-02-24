// PRUSA iteration3
// NEMA 17 extruder body
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz>, Kliment Yanev and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module nozzlemount(){
	// Filament hole	
	rotate([0,90,0]) cylinder(r=2, h=70, $fn=30);

	// Tapered filament intake after the drive gear
	translate([17,0,0]) rotate([0,90,0]) cylinder(r2=3,r1=2, h=10, $fn=30);

	translate([1,0,0]) rotate([0,90,0]) cylinder(r=8, h=1);

	// Front nozzle mount hole
	translate([0,15,0]) rotate([0,90,0]) cylinder(r=2, h=70);

	// Front nozzle mount hole NUT TRAP
	translate([10-5,15,0]) rotate([0,90,0]) rotate([0,0,30]) cylinder(r=3.3, h=70,$fn=6);

	// Back nozzle mount hole
	translate([0,-25,0]) rotate([0,90,0]) cylinder(r=2, h=70);

	// Back nozzle mount hole NUT TRAP
	translate([10-5,-25,0]) rotate([0,90,0]) rotate([0,0,30])cylinder(r=3.3, h=70,$fn=6);
}

motor_lenght = 49;


// Calculated values

	// Total height of the part is motor lenght plus front plate
	total_height = motor_lenght + 4;

difference(){
union(){
	// Base where drive gear is placed
	translate([0,-1,0])cube([42,19,total_height]);

	// Front plate (where motor mount is cutout)
	translate([0,-42,0]) cube([42,42+3,4]);

	// Base plate (nozzle is secured to it)
	translate([-8.99,-42,0]) cube([9,80,total_height]);

	// IDLER retainer
	translate([-1,30,0]) cube([6, 7, total_height]);

		// Top bridge holding idler retainer form springing
		translate([-1,15,total_height-1]) cube([6, 20, 1]);

		// Bottom bridge holding idler retainer form springing
		translate([-1,15,total_height-30]) cube([6, 20, 2]);
}

//Pretty corners

	// Cutaway corner base plate (motor side)
	translate([-11,-91,-1])rotate([0,0,45])cube([40,40,60]);
	// Cutaway corner base plate (idler side)
	translate([-32,12,-1])rotate([0,0,45])cube([40,40,60]);

	// Cutaway corner base block (idler side)
	translate([46,12,-1])rotate([0,0,45])cube([40,40,60]);

	// Cutaway corner idler retainer
	translate([6,31,-1])rotate([0,0,45])cube([40,40,60]);

// Pretty cutouts
	// Idler retainer pretty cuts
	translate([-10,27,-0+(total_height-54)]) rotate([-23,0,0]) cube([20,12,50]);
	translate([0,27,7+(total_height-52)]) rotate([0,23,0]) cube([20,12,50]);

	// Base plate pretty cut
	translate([-10,-66,-2]) rotate([-23,0,0]) cube([12,20,90]);

// Motor mount
translate([0,-1,0.5]){

	// Motor axis circle cut
	translate([21,-21,-1]) cylinder(r=12, h=5, $fn=90);

	// Material and warp saving cut
	translate([15,-45,-1]) cube([30,30,5]);

	// Motor screw holes
	translate([21+16,-21+15,-1]) cylinder(r=2, h=5);
	translate([21-15,-21+15.5,-1]) cylinder(r=2, h=5);
	translate([21-15,-21-15.9,-1]) cylinder(r=2, h=5);

//translate([21+15.5,-21+15.5,-1]) cylinder(r=2, h=5);
//translate([21+15.5,-21-15.5,-1]) cylinder(r=2, h=5);
//translate([21-15.5,-21+15.5,-1]) cylinder(r=2, h=5);
//translate([21-15.5,-21-15.5,-1]) cylinder(r=2, h=5);
}

// Motor cables hole
translate([-5,-35,40.6]) cube([15,18,13]);



// Shaft cutouts

	// Main shaft cylinder cut
	translate([21,8.1,7.5]) cylinder(r=6, h=total_height-9, $fn=50);
	// Main shaft box cut
	translate([-6+21,8,7.5]) cube([12,12,total_height-12]);

	// Entry main shaft cylinder cut
	translate([21,8.1,-1]) cylinder(r=6, h=3, $fn=50);
	// Entry main shaft box cut
	translate([-6+21,8,-50+7]) cube([12,12,50]);

	// Front axis bearing cylinder cut
	translate([21,8.1,1]) cylinder(r=8.1, h=6, $fn=50);
	// Front axis bearing box cut
	translate([13,8,1]) cube([16.2,20,6]);

	// Back axis bearing cylinder cut
	translate([21,8.1,-5+total_height-4]) cylinder(r=8.1, h=7.5, $fn=50);
	// Back axis bearing box cut
	translate([13,8,total_height-9]) cube([16.2,20,7.5]);



// X-carriage mounting holes
translate([-5,20,0]){
	translate([0,0,-1])rotate([0,0,0])cylinder(r=3.3, h=total_height-10+1, $fn=15);
	translate([0,0-24,-1])rotate([0,0,0])cylinder(r=3.3, h=total_height-10+1, $fn=15);
	translate([0,0,total_height-22])rotate([0,0,0])cylinder(r=3.3/2, h=70, $fn=15);
	translate([0,0-24,total_height-22])rotate([0,0,0])cylinder(r=3.3/2, h=70, $fn=15);
}

// Idler nuts, filament channel and 608 idler bearing cut
translate([0,0,-(52-total_height)-2]){
	// Nozzle mounting holes
	translate([-10,2+8+4,52-12]) nozzlemount();
	// Front idler screw nut trap
	translate([32.5,7,52-12-7-3]) cube([15,3,5.7]);
	// Back idler screw nut trap
	translate([32.5,7,52-12-7-3+14]) cube([15,3,5.7]);

	// Back top idler screw hole
	translate([5+32,-1,52-12+7]) rotate([0,90,90]) rotate([0,0,30]) cylinder(r=2, h=40, $fn=6);
	// Back bottom idler screw hole
	translate([5+32,-1,52-12-7]) rotate([0,90,90]) rotate([0,0,30]) cylinder(r=2, h=40, $fn=6);
	// Front top idler screw hole
	translate([5+31,-1,52-12+7]) rotate([0,90,90]) rotate([0,0,30]) cylinder(r=2, h=40, $fn=6);
	// Front bottom idler screw hole
	translate([5+31,-1,52-12-7]) rotate([0,90,90]) rotate([0,0,30]) cylinder(r=2, h=40, $fn=6);

	// Idler 608 bearing cutout
	translate([21,24,35]) cylinder(r=12, h=17.5, $fn=90);


}


}