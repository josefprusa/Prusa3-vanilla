// PRUSA iteration3
// Prusa nozzle
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org
$fn=50;

difference(){
union(){
cylinder(r1=1.5/2, r2=4.5/2,h=0.6);

translate([0,0,
0.6
]) cylinder(r=4.5/2,h=10.7);

translate([0,0,
0.6+10.7
]) cylinder(r=5/2,h=0.5);

translate([0,0,
0.6+10.7+0.5
]) cylinder(r=3.9/2,h=1.2);

for(i = [0 : 8] ){
translate([0,0,
0.6+10.7+0.5+1.2+i*2.5
]) cylinder(r=6.8/2,h=1, $fn=6);

translate([0,0,
0.6+10.7+0.5+1.2+1+i*2.5
]) cylinder(r=3.9/2,h=1.5);
}


translate([0,0,
0.6+10.7+0.5+1.2+9*2.5
]) cylinder(r=6.8/2,h=10, $fn=6);

translate([0,0,
0.6+10.7+0.5+1.2+9*2.5+10
]) cylinder(r=4/2,h=1);

translate([0,0,
0.6+10.7+0.5+1.2+9*2.5+10+1
]) cylinder(r1=4/2,r2=6/2,h=1);

translate([0,0,
0.6+10.7+0.5+1.2+9*2.5+10+1+1
]) cylinder(r=6/2,h=2);

translate([0,0,
0.6+10.7+0.5+1.2+9*2.5+10+1+1+2
]) cylinder(r2=4/2,r1=6/2,h=1);
}

rotate([0,0,30]) translate([-10,0,-1])cube([20,20,70]);

translate([0,0,0.8]) cylinder(r=3.2/2,h=50);

translate([0,0,0.5]) cylinder(r1=1/2, r2=3.2/2,h=0.3);

translate([0,0,-2]) cylinder(r=0.4/2,h=5);

translate([0,0,0.6+10.7+0.5+1.2+9*2.5+10+1+1+2]) cylinder(r1=3.2/2, r2=3.9/2,h=1.1);

}