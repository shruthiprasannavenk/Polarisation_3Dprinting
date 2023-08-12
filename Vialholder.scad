//printer offsets for Ultimaker 3:
A = 1/0.96;
B = 0.06;


//making the vial holder component 

module cylinder_component(){
    difference(){
    cylinder(d=24*A+B,h=38*A+B,center=true,$fn=200);
    cylinder(d=22*A+B,h=39*A+B,center=true,$fn=200);
    }
}
difference(){
rotate([90,0,0])cylinder_component();
    translate([0,0,6])cube([27,42,15],center=true);
}

module mini_cylinder(){
difference(){
rotate([90,0,0])cylinder(d=24*A+B,h=14,center=true,$fn=200);
    translate([0,0,6])cube([26,42,14],center=true);
}
}

module bracket_connector(){
difference(){
    translate([0,14.80,-31.75])cube([44*A+B,10,58*A+B],center=true);
    translate([0,15,0])mini_cylinder();
}
}

difference(){
bracket_connector();
    translate([12.5,0,-52])rotate([90,0,0])cylinder(d=6.4,h=50,center=true);
    translate([-12.5,0,-52])rotate([90,0,0])cylinder(d=6.4,h=50,center=true);
    translate([-18.4,14.8,-20.5])cube([12,15,38],center=true);
    translate([18.4,14.8,-20.5])cube([12,15,38],center=true);
    
}



















