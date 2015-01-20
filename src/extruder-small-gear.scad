// PRUSA iteration3
// NEMA 17 extruder small gear
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


include <external_gear_script.scad>;

module small_gear()
{
	translate([0,0,0])
	{

		translate ([30,0,0])
		difference(){
			union(){
			rotate ([0,0,360*-1/20]) gear (number_of_teeth=8,
			circular_pitch=335,rim_thickness=20,bore_diameter=0,hub_thickness=0);
			cylinder(r=11, h=9);
			}


				translate ([0,0,-1]) cylinder(r=5/2, h=25, $fn=30);
				translate ([0,0,4.5]) rotate([90,0,0]) cylinder(r=3/2, h=25, $fn=30);
 				translate ([-5.7/2,-7,-0.1]) cube([5.7,3,8]);
	
		}
	}
}

small_gear();