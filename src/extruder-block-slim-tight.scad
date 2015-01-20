// PRUSA iteration3
// NEMA 17 extruder body
// GNU GPL v3
// Michal Prusa tight edition
// Josef Průša <iam@josefprusa.cz>, Kliment Yanev and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org






module nozzlemount(){
	// Filament hole	
	rotate([0,90,0]) cylinder(r=2, h=70, $fn=30);

	// Tapered filament intake after the drive gear
	translate([17,0,0]) rotate([0,90,0]) cylinder(r2=3,r1=2, h=10, $fn=30);

	translate([-1,0,0]) rotate([0,90,0]) cylinder(r=8, h=4);

	// Front nozzle mount hole
	translate([-2,15,0]) rotate([0,90,0]) cylinder(r=2, h=70);

	// Front nozzle mount hole NUT TRAP
	translate([10-5,15,0]) rotate([0,90,0]) rotate([0,0,30]) cylinder(r=3.3, h=70,$fn=6);

	// Back nozzle mount hole
	translate([-2,-25,0]) rotate([0,90,0]) cylinder(r=2, h=70);

	// Back nozzle mount hole NUT TRAP
	translate([10-5,-25,0]) rotate([0,90,0]) rotate([0,0,30])cylinder(r=3.3, h=70,$fn=6);
}

motor_lenght = 30;


// Calculated values

	// Total height of the part is motor lenght plus front plate
	total_height = motor_lenght + 4;

difference(){
union(){
	// Base where drive gear is placed
	translate([0,-1,0])cube([42,19,total_height]);

	// Front plate (where motor mount is cutout)
	translate([0-5,-42,0]) cube([75,42,4]);

	// Base plate (nozzle is secured to it)
	translate([-8.99-2,-25.5,0]) cube([9+2,63,total_height]);

	// IDLER retainer
	translate([-1,30,0]) cube([6, 7, total_height]);

	// motor mount reinfocement
	difference(){
		union(){
			translate([0,-15,0])  cube([25,10,15]);
			//translate([0,-35,0])  cube([25,10,15]);
		}
		translate([50,-40,-3]) rotate([0,-70,0]) cube([12,42,90]);
	}

	// Body reinforcement
	translate([0,2,0])difference(){
		union(){
			translate([14.45,-5,0])  cube([13,2,total_height]);

		}
		translate([39.7,-20,-3]) rotate([0,0,45]) cube([12,20,90]);
		translate([13.5,-20,-3]) rotate([0,0,45]) cube([12,20,90]);
	}
	
	


		// Top bridge holding idler retainer form springing
		translate([-1,15,total_height-1]) cube([6, 20, 1]);

		// Bottom bridge holding idler retainer form springing
		translate([-1,15,total_height-30]) cube([6, 20, 2]);
}

//Pretty corners

	// Cutaway corner base plate (motor side)
	
	translate([-15,-28.3,-0+(total_height-54)]) rotate([23,0,0]) cube([20,12,50]);
	translate([-15,-75,-1])rotate([0,0,45])cube([40,40,60]);	
	translate([0,-79,-1])rotate([0,0,45])cube([40,40,60]);
	translate([0,-75.01,-1])cube([25,40,60]);

	translate([10,-34,-10])rotate([0,0,20])cylinder(r=15, h=30);
	translate([9.5,-34,-10])rotate([0,0,20])cylinder(r=15, h=30);

	translate([34,-82,-1])rotate([0,0,45])cube([25,40,60]);

	// Cutaway corner base plate (idler side)
	translate([-32,12,-1])rotate([0,0,45])cube([40,40,60]);

	// Cutaway corner base block (idler side)
	translate([46.5,12,-1])rotate([0,0,45])cube([40,40,60]);

	// Cutaway corner base block (motor side)
	translate([55,-43,4.01])rotate([0,0,45])cube([40,40,60]);

	// Cutaway corner idler retainer
	translate([6,31,-1])rotate([0,0,45])cube([40,40,60]);

// Pretty cutouts
	// Idler retainer pretty cuts
	translate([-10,27,-0+(total_height-54)]) rotate([-23,0,0]) cube([20,12,50]);
	translate([0,27,7+(total_height-52)]) rotate([0,23,0]) cube([20,12,50]);

	// Base plate pretty cut
	//translate([-11,-66+5,-2+14]) rotate([-23,0,0]) cube([12,20,90]);
	
	translate([75,-10,-10]) rotate([0,0,45]) cube([12,20,90]);
	translate([60,-21,-10]) rotate([0,0,-45]) cube([12,20,90]);
	translate([35,-45,-10]) rotate([0,0,-45]) cube([12,20,90]);



	// Motor mount
	translate([27.5,-1,0.5]){

	//#translate([0,-42,4.1])cube([42,41.999,total_height-4]); // MOTOR Clearance!!

	// Motor axis circle cut
	translate([21,-21,-1]) cylinder(r=12, h=5, $fn=90);

	// Motor axis circle cut
	translate([21,-21,-10]) cylinder(r=2, h=50, $fn=90);


	// Material and warp saving cut
	translate([15,-45,-1]) cube([30,30,5]);

	// Motor screw holes
	translate([21+16,-21+15,-1]) cylinder(r=2, h=5);
	translate([21-15,-21+15.5,-1]) cylinder(r=2, h=5);
	translate([21-15,-21-15.9,-1]) cylinder(r=2, h=5);


}




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
translate([-5,5,0]){
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





include <external_gear_script.scad>;


module small_gear()
{
	translate([0,0,0])
	{

		rotate([0,180,0])translate ([-48.5,-22,-10])
		difference(){
			union(){
			rotate ([0,0,360*-1/20]) gear (number_of_teeth=8,
			circular_pitch=335,rim_thickness=20,bore_diameter=0,hub_thickness=0);
			cylinder(r=11, h=9);

			translate([-21,-21,-15]) cube([42,42,20]);
			
		}


				translate ([0,0,-1]) cylinder(r=5/2, h=25, $fn=30);
				translate ([0,0,4.5]) rotate([90,0,0]) cylinder(r=3/2, h=25, $fn=30);
 				translate ([-5.7/2,-7,-0.1]) cube([5.7,3,8]);
	
		}
	}

}

//small_gear();

module big_gear()
{
	rotate([0,180,0])translate ([-21,8.1,2])rotate([0,0,17.2])
	difference(){
		union(){
			gear (
		number_of_teeth=36,
		circular_pitch=335,
		rim_thickness=5,
		bore_diameter=4.8);
		translate ([0,0,4]) cylinder(r1=24/2, r2=18/2, h=6, $fn=6);}
		translate ([0,0,4]) cylinder(r=9/2, h=7, $fn=6);
		for (f = [0 : 5]) // two iterations, z = -1, z = 1
		{
			rotate([0,0,f*60+30]) translate ([20,0,-0.1]) rotate([0,0,30]) cylinder(r=8, h=7, $fn=6);
		}

		translate ([0,0,-1]) cylinder(r=5/2, h=7, $fn=30);
	}
	
}
//big_gear();

