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
        // bottom
        cube([121.5, 125, 2]);
        
        // front wall
        translate([-3.75, 0, 0]) {
            cube([125.25, 2, 53]);
        }
        
        // right wall
        translate([119.5, 0, 2]) {
            cube([2, 125, 30.2]);
        }

        // center connector
        translate([-7.5, 16, 0]) {
            cube([7.5, 93, 4]);
        }
        
        translate([-3.75, 16, 4]) {
            rotate([270]) {
                cylinder(d = 7.5, h = 93, $fn = 60);
            }
        }
        
        // lid stands
        translate([114.5, 2, 0]) {
            cube([7, 7, 53]);
        }
        translate([114.5, 118, 0]) {
            cube([7, 7, 53]);
        }
        
        // back wall
        translate([-3.75, 123, 2]) {
            cube([125, 2, 15]);
        }
    }

    // center connector cut-out front
    translate([0, 0, 0]) {
        translate([-7.25, -1, -1]) {
            cube([7.5, 3, 5]);
        }
        
        translate([-3.75, -1, 4]) {
            rotate([270]) {
                cylinder(d = 8, h = 5, $fn = 60);
            }
        }
    }
    
    // center connector cut-out rear
    translate([0, 0, 0]) {
        translate([-7.25, 123, -1]) {
            cube([7.5, 4, 5]);
        }
        
        translate([-3.75, 122, 4]) {
            rotate([270]) {
                cylinder(d = 8, h = 10, $fn = 60);
            }
        }
    }
    
    // center connector
    translate([-4, 0, 4]) {
        rotate([270]) {
            cylinder(d = 3, h = 150, $fn = 9);
        }
    }
    
    // lid holes
    translate([118, 5.5, 15]) {
        cylinder(d = 3, h = 50, $fn = 9);
    }
    translate([118, 121.5, 15]) {
        cylinder(d = 3, h = 50, $fn = 9);
    }
    
    
    // skr 1.4 backplane
    translate([22, -1, 8]) {
        cube([19, 4, 15]);
    }
    translate([43, -1, 8]) {
        cube([18, 4, 5]);
    }
    
    // air inlet
    translate([114, 15, -1]) {
        cube([5, 25, 5]);
    }
    translate([114, 50, -1]) {
        cube([5, 25, 5]);
    }
    translate([114, 85, -1]) {
        cube([5, 25, 5]);
    }
}

// cable straps
translate([10, 100, 2]) {
    for(i = [0: 15 : 90]) {
        cablestrap([i, 0, 0]);
    }
}


// outer hang-in
translate([121.5, 0, 32.2]) {
    rotate([90, 180, 180]) {
        linear_extrude(125) {
            polygon(points=[[0, 0],[6, 0],[0, 6]]);
        }
    }
}




// skr 1.4
translate([7, 6, 2]) {
    screwhole([0, 0, 0], 2.5, 5);
    screwhole([102, 0, 0], 2.5, 5);
    screwhole([0, 76, 0], 2.5, 5);
    screwhole([102, 76, 0], 2.5, 5);
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

module cablestrap(position) {
    translate(position) {
        difference() {
            cube([2, 10, 5]);
            translate([-1, 2, 0]) {
                cube([5, 6, 3]);
            }
        }
    }
}
