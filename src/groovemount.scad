difference(){
cube([50,20,6]);

translate([5,10,0])cylinder(r=3.5,h=3.2);
translate([45,10,0])cylinder(r=3.5,h=3.2);

translate([5,10,3.5])cylinder(r=2,h=3.5);
translate([45,10,3.5])cylinder(r=2,h=3.5);


translate([20,10,0])cylinder(r=6.1,h=10);
translate([20,10,4.5])cylinder(r=8.5,h=10);

translate([20-6.1,0,0]) cube([12.2,10,10]);

translate([20-8.5,0,4.5]) cube([17,10,10]);
}