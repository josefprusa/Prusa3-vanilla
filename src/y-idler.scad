// PRUSA iteration3
// Y idler
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module y_idler_base() {
  translate(v = [0,0,0]) cylinder(h = 17, r = 8);
  translate(v = [0,20,0]) cylinder(h = 17, r = 8);
  translate(v = [0,10,8.5]) cube(size = [16, 20, 17], center = true);
  translate(v = [-4,10,8.5]) cube(size = [8, 16+20, 17], center = true);
}

module y_idler_holes() {
  translate(v = [0,0,-1]) cylinder(h = 120, r = 1.7, $fn = 10);
  translate(v = [0,0,-1]) cylinder(h = 2, r = 3.1, $fn = 15);
  translate(v = [0,0,16]) rotate([0,0,30]) cylinder(h = 2, r = 3.3, $fn = 6);
  translate(v = [0,20,-1]) cylinder(h = 25, r = 4.5);
  translate(v = [0,0,3.5]) cylinder(h = 10, r = 12);
}


// Final part
module y_idler() {
  translate(v = [0,0,8])rotate([0,-90,0]) difference() {
    y_idler_base();
    y_idler_holes();
  }
}

y_idler();
