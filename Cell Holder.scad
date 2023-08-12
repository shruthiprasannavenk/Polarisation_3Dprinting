
module Cell_Stand(){
difference(){
    
union(){    
rotate([0,90,0])cylinder(d=26,h=40,center=true,$fn=100);
hull(){    
translate([0,0,-11])cube([40,15,5],center=true);
translate([0,0,-70])cube([8,6,10],center=true);    
}
hull(){    
translate([0,0,-50])cube([5,10,10],center=true); 
translate([0,0,-75])cube([11,30,5],center=true);    
}   
}
rotate([0,90,0])cylinder(d=22,h=51,center=true,$fn=100);    
translate([0,0,8.5])cube([51,30,15],center=true);    
}

difference(){
translate([0,0,-82.58+4])cylinder(d=40,h=8,$fn=200,center=true);
translate([25/2,0,-83])cylinder(d=6.2,h=10,$fn=20);
translate([-25/2,0,-83])cylinder(d=6.2,h=10,$fn=20);

translate([25/2,0,-74.6-6])cylinder(d=11,h=10,$fn=40);
translate([-25/2,0,-74.6-6])cylinder(d=11,h=10,$fn=40);      
}
}



module Cell_Stand2(){
difference(){
    
union(){    
rotate([0,90,0])cylinder(d=26,h=34,center=true,$fn=100);
hull(){    
translate([0,0,-11])cube([34,15,5],center=true);
translate([0,0,-50])cube([8,6,10],center=true);    
}
hull(){    
translate([0,0,-30])cube([5,10,10],center=true); 
translate([0,0,-58])cube([11,20,5],center=true);    
}   
}
//rotate([0,90,0])cylinder(d=22,h=51,center=true,$fn=100):
translate([0,0,5])rotate([45,0,0])cube([50,22,22],center=true);   
translate([0,0,8.5])cube([51,30,15],center=true);    
}

difference(){
translate([0,0,-60.1])cylinder(d=31.55,h=4.8,$fn=200,center=true);
//translate([25/2,0,-83])cylinder(d=6.2,h=10,$fn=20);
//translate([-25/2,0,-83])cylinder(d=6.2,h=10,$fn=20);

//translate([25/2,0,-74.6-6])cylinder(d=11,h=10,$fn=40);   
}
}



module Cell_Window_Bonding_Jig(){ 
difference(){
cylinder(d=27,h=15,$fn=100,center=true); 
cylinder(d=22,h=16,$fn=100,center=true);
translate([0,0,7.1])cylinder(d1=22,d2=23,h=1,$fn=100,center=true);    
translate([0,0,-2.6])cylinder(d=24,h=10,$fn=100,center=true);
translate([0,0,-2.6])rotate([0,0,7])cube([15,30,10],center=true); 
translate([0,0,-2.6])cube([30,15,10],center=true);
translate([5,-5,0])rotate([0,0,45])cube([21.5,15,20],center=true);    
}   
}



//Cell_Stand();
translate([0,0,-5])Cell_Stand2();
//Cell_Window_Bonding_Jig();

// Beam Ht=82.58mm
//#translate([0,0,-82.58-2])cube([50,50,4],center=true);




