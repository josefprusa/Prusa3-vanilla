module mount_block() {
  intersection() {
    translate(v = [0,0,7/2]) cube(size = [64,15, 7], center = true);
    cylinder(r = 64/2, h = 7, $fn = 100);
  }
}

module mount_holes() {
  // Filament hole
  translate(v = [0,0, -1]) cylinder(r = 2, h = 9, $fn = 30);
  translate([0,0,9]) rotate(a = [180,0,0]) cylinder(r1 = 4, r2 = 2, h = 3);
  translate([0,0,-1]) cylinder(r1 = 4, r2 = 2, h = 3);

  // Mount holes
  // extruder
  translate(v = [-25, 0, -1]) cylinder(r = 1.8, h = 9, $fn = 10);
  translate(v = [15, 0, 5]) cylinder(r = 1.8, h = 9, $fn = 10);
  translate(v = [15, 0, -1]) cylinder(r = 3.3, h = 5.5, $fn = 15);
  // plate
  translate(v = [25, 0, -1]) cylinder(r = 1.8, h = 9, $fn = 10);
  translate(v = [25,0,4]) cylinder(r = 3.3, h = 4, $fn = 6);
}

difference() {
  mount_block();
  mount_holes();
}