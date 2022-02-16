
$fa = 1;
$fs = 0.4;

wheelR = 8;
wheelRadius = 10;
wheelH = 3;
wheelOffset =55;
frontAngle = 30;

baseH = 5;
baseW = 20;
topH = 8;
topW = 20;


//Bottom part of car
scale([1.2,1,1]){
    rotate([0,0,0])
cube([60,baseW,baseH], center=true);

//Top part of car
translate([5,0,baseH/2+topH/2-0.01])
    rotate([0,0,0])
    cube([30,topW,topH], center=true);
}


scale([1.2,0.3,1.2]){
//frontwheel, L
translate([-20,-wheelOffset,0])
    rotate([0,0,frontAngle])
        sphere(r=wheelRadius);//cylinder(h=wheelH,r=wheelR,center=true);
    
//frontwheel, R        
translate([-20,wheelOffset,0])
    rotate([0,0,frontAngle])
        sphere(r=wheelRadius);

//backwheel, L        
translate([20,-wheelOffset,0])
    rotate([0,0,0])
        sphere(r=wheelRadius);

//backwheel, R        
translate([20,wheelOffset,0])
    rotate([0,0,0])
        sphere(r=wheelRadius);
}


scale([1.2,1,1]){
//back-axle        
translate([-20,0,0])
    rotate([90,0,0])
        cylinder(h=35,r=2,center=true);

//front-axle        
translate([20,0,0])
    rotate([90,0,0])
        cylinder(h=35,r=2,center=true);
}

