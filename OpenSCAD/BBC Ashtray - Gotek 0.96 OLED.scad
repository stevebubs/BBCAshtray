// BBC B 'Ashtray' cover per original Acorn design
facets=30;

// Top

//-3+14

difference(){
    translate([-53.5,-3,-5]) 
        cube([59,28,5]);
    translate([2.25,7.75,-2])
        cube ([5.6,6,2.1]);
    // OLED Screen
    translate([-26.5,-2,-4])
        cube ([26.5,26,4.1]);
    translate([-21,-1,-6])
        cube ([13,24,6.1]);
    // Rotory Encoder
    translate([-41,11,-6])
        cylinder(r=3.5,h=7,$fn=100);
    translate([-49,-0,-4])
        cube ([24,21,7]);
    // LEDs
    translate([-29,15.5,-6])
        cylinder(r=1.5,h=7,$fn=100);
    translate([-29,6.5,-6])
        cylinder(r=1.5,h=7,$fn=100);
};
difference() {
    // LEDs
    translate([-29,15.5,-4])
        cylinder(r=2.5,h=1,$fn=100);
    // LEDs
    translate([-29,15.5,-6])
        cylinder(r=1.5,h=7,$fn=100);
};
difference() {
    translate([-29,6.5,-4])
        cylinder(r=2.5,h=1,$fn=100);
    translate([-29,6.5,-6])
        cylinder(r=1.5,h=7,$fn=100);
};

// Lower Clip

hull() {
    polyhedron
            ( points=[
                [0,0,0], [0,21,0], [0,20.5,9],[0,0.5,9],
                [1.5,0.5,9],[1.5,20.5,9],[2,21,0],[2,0,0]  ],
          faces=[
                [0,1,2,3],[4,5,6,7],[0,1,6,7],
                [2,3,4,5],[0,3,4,7],[1,2,5,6]  ]
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

translate([-51,0,0]) 
    hull() {
        polyhedron
                ( points=[
                    [0,0,0], [0,21,0], [0.5,21,6.5],[0.5,0,6.5],
                    [2,0,6.5],[2,21,6.5],[2,21,0],[2,0,0]  ],
              faces=[
                    [0,1,2,3],[4,5,6,7],[0,1,6,7],
                    [2,3,4,5],[0,3,4,7],[1,2,5,6]   ]
                );
    };
translate([-51.75,0,5])
    cube([2,21,1.5]);

// Side Guides
translate([-31,-1,0])
    cube([4,1,2]);
    
translate([-31,21,0])
    cube([4,1,2]);