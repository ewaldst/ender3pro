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

translate([0, 0, 0]) {
    difference() {
        cube([16, 8, 7.75]);
        translate([5.25, 4, -1]) {
            cylinder(d = 6, h = 10, $fn = 120);
        }
    }
}

translate([0, 65, 0]) {
    difference() {
        cube([16, 8, 7.75]);
        translate([5.25, 4, -1]) {
            cylinder(d = 6, h = 10, $fn = 120);
        }
    }
}

translate([0, 8, 0]) {
    cube([16, 57, 7.75]);
}



translate([16, 28.5, 0]) {
    cube([30, 16, 7.75]);
}

translate([46, 28.5, 7.5]) {
    rotate([0, 22.5, 90]) {
        difference() {
            translate([0, 0, 0]) {
                translate([0, 0, 0]) {
                    translate([0, 0, 0]) {
                        cube([3, 16, 19]);
                        translate([0, 8, 19]) {
                            rotate([90, 0, 90]) {
                                cylinder(d = 16, h = 3, $fn = 120);
                            }
                        }
                    }  
                }
                
                translate([6, 0, 0]) {
                    cube([3, 16, 19]);
                    
                    translate([0, 8, 19]) {
                        rotate([90, 0, 90]) {
                            cylinder(d = 16, h = 3, $fn = 120);
                        }
                    }
                }
                
                translate([12, 0, 0]) {
                    cube([3, 16, 19]);
                    
                    translate([0, 8, 19]) {
                        rotate([90, 0, 90]) {
                            cylinder(d = 16, h = 3, $fn = 120);
                        }
                    }
                }
            }
            
            translate([-1, 5.75, 16.75]) {
                cube([20, 4.5, 4.5]);
            }
        }
    }
}
