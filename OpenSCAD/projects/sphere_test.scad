$fa = 1;
$fs = 0.4;

scale([1,1,1])

difference(){
sphere(r=10);
    translate([12,0,0])
        sphere(r=10);
    translate([0,-12,0])
        sphere(r=10);
}