/*
BSD 2-Clause License

Copyright (c) 2020, Ewald Stangl
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/


difference() {
    translate([0, 0, 0]) {
        cube([128.8, 125, 2]);
        translate([0, 0, 2]) {
            cube([2, 125, 30.2]);
            cube([78, 2, 51]);
        }
        translate([76, 0, 2]) {
            cube([2, 70, 51]);
        }
        
        cube([7, 7, 53]);
        
        translate([123.5, 2, 2.5]) {
            cube([7, 7, 50.5]);
        }
        translate([123.5, 116, 2.5]) {
            cube([7, 7, 50.5]);
        }
        translate([71, 115, 0]) {
            cube([7, 7, 53]);
        }
        translate([71, 63, 0]) {
            cube([7, 7, 53]);
        }
        translate([2, 123, 2]) {
            cube([122, 2, 15]);
        }
        translate([2, 0, 2]) {
            cube([122, 2, 20]);
        }
        
        
        // fan scews (32mm offset)
        translate([82, 76, 1]) {
            cylinder(h = 1.5, d = 7, center = false, $fn = 12);
            translate([32, 0, 0]) {
                cylinder(h = 1.5, d = 7, center = false, $fn = 12);
            }
            translate([0, 32, 0]) {
                cylinder(h = 1.5, d = 7, center = false, $fn = 12);
            }
            translate([32, 32, 0]) {
                cylinder(h = 1.5, d = 7, center = false, $fn = 12);
            }
        }
        
        // connection with right case
        translate([121.25, 0, 2]) {
            cube([7.5, 15.5, 2]);
        }
        
        translate([125, 0, 4]) {
            rotate([270]) {
                cylinder(d = 7.5, h = 15.5, $fn = 60);
            }
        }
        
        // connection with right case
        translate([121.25, 109.5, 2]) {
            cube([7.5, 15.5, 2]);
        }
        
        translate([125, 109.5, 4]) {
            rotate([270]) {
                cylinder(d = 7.5, h = 15.5, $fn = 60);
            }
        }
        
        
        // cable ties
        translate([92, 10, 2]) {
            difference() {
                cube([2, 10, 5]);
                translate([-1, 2, 0]) {
                    cube([5, 6, 3]);
                }
            }
            translate([16, 0, 0]) {
                difference() {
                    cube([2, 10, 5]);
                    translate([-1, 2, 0]) {
                        cube([5, 6, 3]);
                    }
                }
            }
        }
    }
    
    translate([70, 10, 2]) {
        cube([15, 50, 20]);
    }
    
    
    // cable hole
    translate([95, -1, 10]) {
        cube([12, 40, 50]);
        translate([6, 0, 0]) {
            rotate([270]) {
                cylinder(d = 12, h = 10, $fn = 60);
            }
        }
    }
    
    // connection with right case
    translate([125, -1, 4]) {
        rotate([270]) {
            cylinder(d = 3.25, h = 175, $fn = 60);
        }
    }

    
    
    
    translate([121, 15.5, -1]) {
        cube([10, 94, 5]);
    }
    
    translate([82, 76, -1]) {
        cylinder(h = 5, d = 2.9, center = false, $fn = 12);
        translate([32, 0, 0]) {
            cylinder(h = 5, d = 2.9, center = false, $fn = 12);
        }
        translate([0, 32, 0]) {
            cylinder(h = 5, d = 2.9, center = false, $fn = 12);
        }
        translate([32, 32, 0]) {
            cylinder(h = 5, d = 2.9, center = false, $fn = 12);
        }
    }
    
    translate([3.5, 3.5, 15]) {
        cylinder(d = 3, h = 50, $fn = 9);
    }
    translate([123.5, 2, 0]) {
        translate([3.5, 3.5, 15]) {
            cylinder(d = 3, h = 50, $fn = 9);
        }
    }
    translate([123.5, 116, 0]) {
        translate([3.5, 3.5, 15]) {
            cylinder(d = 3, h = 50, $fn = 9);
        }
    }
    translate([71, 115, 0]) {
        translate([3.5, 3.5, 15]) {
            cylinder(d = 3, h = 50, $fn = 9);
        }
    }
    translate([71, 63, 0]) {
        translate([3.5, 3.5, 15]) {
            cylinder(d = 3, h = 50, $fn = 9);
        }
    }
    
    translate([3, 15, -1]) {
        cube([5, 25, 5]);
    }
    translate([3, 50, -1]) {
        cube([5, 25, 5]);
    }
    translate([3, 85, -1]) {
        cube([5, 25, 5]);
    }
    
    translate([11, -1, 7]) {
        cube([54, 5, 19]);
    }
    
    // fan hole
    translate([98, 92, -1]) {
        difference() {
            difference() {
                difference() {
                    cylinder(d = 35, h = 5, $fn = 60);
                    cylinder(d = 23, h = 5, $fn = 60);
                }
            }
            translate([-12, -14, 0]) {
                rotate([0, 0, 45]) {
                    cube([80, 3, 3]);
                }
                
                translate([-12, 36, 0]) {
                rotate([0, 0, -45]) {
                    cube([80, 3, 3]);
                }
            }
            }
            
        }
        cylinder(d = 18, h = 5, $fn = 60);
        
    }
}


// raspberry pi
translate([13.5, 25.5, 2]) {
    screwhole([0, 0, 0], 2.5, 5);
    screwhole([49, 0, 0], 2.5, 5);
    screwhole([0, 58, 0], 2.5, 5);
    screwhole([49, 58, 0], 2.5, 5);
}

// outer hang-in
translate([0, 0, 32.2]) {
    rotate([90, 90, 180]) {
        linear_extrude(125) {
            polygon(points=[[0, 0],[6, 0],[0, 6]]);
        }
    }
}





module screwhole(position, diameter, height, outerDiameter) {
    dia1 = outerDiameter ? outerDiameter : diameter * 2;
    
    translate(position) {
        difference() {
            cylinder(h = height, d = dia1, center = false, $fn = 60);
            cylinder(h = height * 1.25, d = diameter, center = false, $fn = 9);
        }
    }
}
