difference(){union(){translate([0,0,1.5]) cube([58,20,3], center=true);
translate([-2.5+58/2,-18,4]) cube([5,20,8], center=true);
}
translate([20,-23,1.6+3]) rotate([0,90,0]) cylinder(r=1.6, h=100);

translate([20,-23+17,23]) rotate([0,90,0]) cylinder(r=20, h=100);


translate([-20+15,0,-1]) cylinder(r=2, h=5);

translate([20,0,-1]) cylinder(r=1.6, h=5);
translate([-20,0,-1]) cylinder(r=1.6, h=5);}