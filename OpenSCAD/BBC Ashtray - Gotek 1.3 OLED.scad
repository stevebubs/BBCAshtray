// BBC B 'Ashtray' cover per original Acorn design
facets=30;

// Top

difference(){
    translate([-53.5,-7,-5.5]) 
        cube([59,38.5,5.5]);
    translate([2.25,7.75,-2])
        cube ([5.6,6,2.1]);
    // OLED Screen
    translate([-35,-5.5,-4])
        cube ([35,35,4.1]);
    translate([-29,-4,-6])
        cube ([18,32,7]);
    // Rotory Encoder
    translate([-43,12,-6])
        cylinder(r=3.5,h=7,$fn=100);
    translate([-50,0,-3])
        cube ([18,21,3.1]);
    translate([-50,-5,-3])
        cube ([18,4,3.1]);
    translate([-50,22,-3])
        cube ([18,7,3.1]);
    //translate([-43,12,-6])
    //    cylinder(r=7,h=4,$fn=6);
    //translate([-43,12,-6])
    //    cylinder(r=9,h=2,$fn=100);
    };
// Lower Clip

hull() {
    polyhedron
            ( points=[
                [0,0,0], [0,21,0], [0,20.5,9],[0,0.5,9],
                [1.5,0.5,9],[1.5,20.5,9],[2,21,0],[2,0,0]  ],
          faces=[
                [0,1,2,3],[4,5,6,7],[0,1,6,7],
                [2,3,4,5],[0,3,4,7],[1,2,5,6]   ]
            );

};
    translate([1,3.4,6]) rotate([0,90,0]) difference() {
        sphere(r=3, $fn=facets);
        translate([-5,-5,-5]) 
            cube ([10,10,5]);
    };    

    translate([1,17.6,6]) rotate([0,90,0]) difference() {
        sphere(r=3, $fn=facets);
        translate([-5,-5,-5]) 
            cube ([10,10,5]);
    }; 
    
// Upper Clip

translate([-52,0,0]) 
    hull() {
        polyhedron
                ( points=[
                    [0,0,0], [0,21,0], [0.5,21,6],[0.5,0,6],
                    [2,0,6],[2,21,6],[2,21,0],[2,0,0]  ],
              faces=[
                    [0,1,2,3],[4,5,6,7],[0,1,6,7],
                    [2,3,4,5],[0,3,4,7],[1,2,5,6]   ]
                );
    };
translate([-52.75,0,5])
    cube([2,21,1]);

// Side Guides
translate([-39.5,-1,0])
    cube([4,1,2]);
    
translate([-39.5,21,0])
    cube([4,1,2]);