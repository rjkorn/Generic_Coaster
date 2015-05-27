

//****************************************************************
//*  Name    : Generic Coaster                                   *
//*  Author  : Robert Joseph Korn                                *
//*  Notice  : Copyright (c) 2015 Open Valley Consulting Corp    *
//*          : All Rights Reserved                               *
//*  Date    : 5/27/15                                           *
//*  Version : 1.0                                               *
//*  Notes   : Simple Circuit Board Coaster                      *
//*          :                                                   *
//****************************************************************


$fn=50;

wallT = 2;

boardW = 57.4;
boardH = 41;
boardD = 2;

holeW = 49.7;
holeH = 33.8;

pinD = 2.4;
pinL = 2;

outerW = boardW + 2*wallT;
outerH = boardH + 2*wallT;
outerD = boardD + wallT;

union(){
	difference() {
		cube([outerW, outerH, outerD],center=true);
		translate([0, 0, wallT/2]) cube([boardW, boardH, boardD+1],center=true);
	}

	translate([holeW/2, holeH/2, 0]) cylinder(h=wallT+pinL,d=pinD);
	translate([-holeW/2, holeH/2, 0]) cylinder(h=wallT+pinL,d=pinD);
	translate([holeW/2, -holeH/2, 0]) cylinder(h=wallT+pinL,d=pinD);
	translate([-holeW/2, -holeH/2, 0]) cylinder(h=wallT+pinL,d=pinD);
}
