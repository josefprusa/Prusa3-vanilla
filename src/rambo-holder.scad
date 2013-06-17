module rambo_holder(){
difference(){cube([15,25,15]);


translate([3,3,3]) cube([15,25,15]);
translate([20,-5,-1]) rotate([0,0,30]) cube([15,45,17]);

translate([-2,3,14])  cube([15,45,17]);


translate([9,-1,8])rotate([-90,0,0])cylinder(r=1.8, h=30, $fn=10);
translate([9,-1,10])rotate([-90,0,0])cylinder(r=1.8, h=30, $fn=10);

translate([-1,10,8])rotate([0,90,0])cylinder(r=1.8, h=30, $fn=10);
translate([-1,10,10])rotate([0,90,0])cylinder(r=1.8, h=30, $fn=10);}

}

rambo_holder();
translate([-2,0,0])
mirror([1,0,0])
rambo_holder();