screw_od=22;
pipe_od=6;
pipe_spur=8;
use <threads.scad>
module connector() {
difference() {
union() {
translate([0,0,6]) cylinder(r=screw_od/2,h=12,center=true);
translate([0,0,-2.5])cylinder(r2=screw_od/2,r1=pipe_od/2,h=5,center=true);
translate([0,0,-11.5])cylinder(r=pipe_od/2,h=16,center=true);
translate([0,0,-11.5])cylinder(r2=pipe_spur/2,r1=0,h=7,center=true);
translate([0,0,-15.5])cylinder(r2=pipe_spur/2,r1=0,h=7,center=true);
translate([0,0,-20.5])cylinder(r2=pipe_od/2,r1=2,h=2,center=true);
}
english_thread(diameter=0.75,threads_per_inch=18,length=1,internal=true);
translate([0,0,-2.5]) cylinder(r2=8.75,r1=2.5,h=5,center=true);
cylinder(r=2.5,h=100,center=true);
}
}

rotate([0,180,0]) connector();
$fn=20;