

//parameters

boxH = 5;
boxSideL = 5;
cornerRadius = 5;

$fa=1;
$fs=0.4;



//test
//cylinder(boxH, r=cornerRadius, center=true);
//scale([5,5,5])
//cube([boxSideLength, boxSideLength, boxH], center = true); 

  
  
//shapes

  //box
difference(){
    
    //outer box (solid)
hull(){
    //upper left corner
    translate([-boxSideL, boxSideL,0])
        cylinder(h=boxH, r=cornerRadius, center=true);
    
    //upper right corner
    translate([boxSideL, boxSideL,0])
        cylinder(h=boxH, r=cornerRadius, center=true);
    
    //bottom left corner
    translate([-boxSideL, -boxSideL,0])
        cylinder(h=boxH, r=cornerRadius, center=true);
    
    //bottom right corner
    translate([boxSideL, -boxSideL,0])
        cylinder(h=boxH, r=cornerRadius, center=true);
    }
    
    
    //inner box (air)
hull(){
    //upper left corner
    translate([-boxSideL, boxSideL,boxH*0.1])
        cylinder(h=boxH, r=cornerRadius*0.8, center=true);
    
    //upper right corner
    translate([boxSideL, boxSideL,boxH*0.1])
        cylinder(h=boxH, r=cornerRadius*0.8, center=true);
    
    //bottom left corner
    translate([-boxSideL, -boxSideL,boxH*0.1])
        cylinder(h=boxH, r=cornerRadius*0.8, center=true);
    
    //bottom right corner
    translate([boxSideL, -boxSideL,boxH*0.1])
        cylinder(h=boxH, r=cornerRadius*0.8, center=true);
    }
}



    //lid edge on box
difference(){
   
    //outer lid edge box (solid)
    hull(){
        //upper left corner
    translate([-boxSideL*0.95, boxSideL*0.95, boxH*0.08])
        cylinder(h=boxH, r=cornerRadius, center=true);
    
    //upper right corner
    translate([boxSideL*0.95, boxSideL*0.95, boxH*0.08])
        cylinder(h=boxH, r=cornerRadius, center=true);
    
    //bottom left corner
    translate([-boxSideL*0.95, -boxSideL*0.95, boxH*0.08])
        cylinder(h=boxH, r=cornerRadius, center=true);
    
    //bottom right corner
    translate([boxSideL*0.95, -boxSideL*0.95,boxH*0.08])
        cylinder(h=boxH, r=cornerRadius, center=true);
        }
    
    //inner lid edge box (air)
    hull(){
        //upper left corner
    translate([-boxSideL*0.9, boxSideL*0.85, boxH*0.09])
        cylinder(h=boxH, r=cornerRadius, center=true);
    
    //upper right corner
    translate([boxSideL*0.9, boxSideL*0.85, boxH*0.09])
        cylinder(h=boxH, r=cornerRadius, center=true);
    
    //bottom left corner
    translate([-boxSideL*0.9, -boxSideL*0.85, boxH*0.09])
        cylinder(h=boxH, r=cornerRadius, center=true);
    
    //bottom right corner
    translate([boxSideL*0.9, -boxSideL*0.85,boxH*0.09])
        cylinder(h=boxH, r=cornerRadius, center=true);
        }
    }


    //lid
difference(){
    
    //outer box (solid)
hull(){
    //upper left corner
    translate([-boxSideL+boxSideL*4, boxSideL+boxSideL*4,0])
        cylinder(h=boxH*0.4, r=cornerRadius, center=true);
    
    //upper right corner
    translate([boxSideL+boxSideL*4, boxSideL+boxSideL*4,0])
        cylinder(h=boxH*0.4, r=cornerRadius, center=true);
    
    //bottom left corner
    translate([-boxSideL+boxSideL*4, -boxSideL+boxSideL*4,0])
        cylinder(h=boxH*0.4, r=cornerRadius, center=true);
    
    //bottom right corner
    translate([boxSideL+boxSideL*4, -boxSideL+boxSideL*4,0])
        cylinder(h=boxH*0.4, r=cornerRadius, center=true);
    }
    
    
    //inner box (air)
hull(){
    //upper left corner
    translate([-boxSideL+boxSideL*4, boxSideL+boxSideL*4,boxH*0.1])
        cylinder(h=boxH*0.4, r=cornerRadius*0.8, center=true);
    
    //upper right corner
    translate([boxSideL+boxSideL*4, boxSideL+boxSideL*4,boxH*0.1])
        cylinder(h=boxH*0.4, r=cornerRadius*0.8, center=true);
    
    //bottom left corner
    translate([-boxSideL+boxSideL*4, -boxSideL+boxSideL*4,boxH*0.1])
        cylinder(h=boxH*0.4, r=cornerRadius*0.8, center=true);
    
    //bottom right corner
    translate([boxSideL+boxSideL*4, -boxSideL+boxSideL*4,boxH*0.1])
        cylinder(h=boxH*0.4, r=cornerRadius*0.8, center=true);
    }
    
    
    
//lid box edge indent
    difference(){

  //outer border for indent        
        hull(){
    //upper left corner
    translate([-boxSideL+boxSideL*4, boxSideL+boxSideL*4, boxH*0.3])
        cylinder(h=boxH*0.4, r=cornerRadius*0.95, center=true);
    
    //upper right corner
    translate([boxSideL+boxSideL*4, boxSideL+boxSideL*4, boxH*0.3])
        cylinder(h=boxH*0.4, r=cornerRadius*0.95, center=true);
    
    //bottom left corner
    translate([-boxSideL+boxSideL*4, -boxSideL+boxSideL*4, boxH*0.3])
        cylinder(h=boxH*0.4, r=cornerRadius*0.95, center=true);
    
    //bottom right corner
    translate([boxSideL+boxSideL*4, -boxSideL+boxSideL*4, boxH*0.3])
        cylinder(h=boxH*0.4, r=cornerRadius*0.95, center=true);
    }
    
    
    //inner border for indent (air)
hull(){
    //upper left corner
    translate([-boxSideL+boxSideL*4, boxSideL+boxSideL*4, boxH*0.3])
        cylinder(h=boxH*0.6, r=cornerRadius*0.85, center=true);
    
    //upper right corner
    translate([boxSideL+boxSideL*4, boxSideL+boxSideL*4, boxH*0.3])
        cylinder(h=boxH*0.6, r=cornerRadius*0.85, center=true);
    
    //bottom left corner
    translate([-boxSideL+boxSideL*4, -boxSideL+boxSideL*4, boxH*0.3])
        cylinder(h=boxH*0.6, r=cornerRadius*0.85, center=true);
    
    //bottom right corner
    translate([boxSideL+boxSideL*4, -boxSideL+boxSideL*4, boxH*0.3])
        cylinder(h=boxH*0.6, r=cornerRadius*0.85, center=true);
    }
    
    }
    
}