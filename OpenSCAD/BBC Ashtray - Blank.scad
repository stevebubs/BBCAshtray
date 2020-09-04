// BBC B 'Ashtray' cover per original Acorn design
facets=30;

// Top

difference(){
    translate([-53.5,-3,-3]) 
        cube([59,27.5,3]);
    translate([2.25,7.75,-2])
        cube ([5.6,6,2.1]);
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

translate([-51,0,0]) 
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
translate([-51.75,0,5])
    cube([2,21,1]);

// Side Guides
translate([-25.5,-1,0])
    cube([4,1,2]);
    
translate([-25.5,21,0])
    cube([4,1,2]);