

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

wallD = 2;

boardW = 57.4;
boardH = 41;
boardD = 2;

outerW = boardW + 2*wallD;
outerH = boardH + 2*wallD;
outerD = boardD + wallD;

holeW = 49.7;
holeH = 33.8;
holeD = 2.4;

union(){
	difference() {
		cube([outerW, outerH, outerD],center=true);
		translate([0, 0, wallD/2]) cube([boardW, boardH, boardD+1],center=true);
	}

	translate([holeW/2, holeH/2, 0]) cylinder(h=wallD+1,d=holeD);
	translate([-holeW/2, holeH/2, 0]) cylinder(h=wallD+1,d=holeD);
	translate([holeW/2, -holeH/2, 0]) cylinder(h=wallD+1,d=holeD);
	translate([-holeW/2, -holeH/2, 0]) cylinder(h=wallD+1,d=holeD);
}
