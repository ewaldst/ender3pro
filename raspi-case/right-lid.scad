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

length = 126.75;
width = 125;
height = 1.4;

translate([0, 0, 0]) {
    difference() {
        cube([length, width, height]);
        
        translate([3.5, 5.5, -1]) {
            cylinder(d = 4, h = 5, $fn = 60);
        }
        translate([length - 3.25, 5.5, -1]) {
            cylinder(d = 4, h = 5, $fn = 60);
        }
        translate([3.5, width - 5.5, -1]) {
            cylinder(d = 4, h = 5, $fn = 60);
        }
        translate([length - 3.25, width - 3.5, -1]) {
            cylinder(d = 4, h = 5, $fn = 60);
        }
        
        translate([length / 2, width - 18, -1]) {
            cube([length / 3, 25, 5]);
        }
    }
}

// cablestraps
cablestrap([75, 30, height]);
cablestrap([95, 30, height]);

translate([-44.5, width - 70, 0]) {
    cube([44.5, 70, height]);
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
