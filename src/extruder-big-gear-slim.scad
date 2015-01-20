// PRUSA iteration3
// NEMA 17 extruder big gear
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


include <external_gear_script.scad>;

module big_gear()
{
	translate ([0,0,0])
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
big_gear();