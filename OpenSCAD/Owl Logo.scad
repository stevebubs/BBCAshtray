// Acorn BBC Owl in OpenSCAD
facets=20;

module render_dot(x,y,radius,spacing,height) {
  translate([x*spacing*1.3,y*spacing*-1.3,0]) cylinder(h=height,r=radius, $fn=facets);
};

module render_row(row_num,dot_array,radius,spacing,height) {
for (a=dot_array) {
        render_dot(a,row_num,radius,spacing,height);
};
};

module render_owl(radius,spacing,height) {

render_row(1,[1,3,5,7,9,11,13,15,17],radius,spacing,height);
render_row(2,[2,8,10,16],radius,spacing,height);
render_row(3,[1,5,9,13,17],radius,spacing,height);
render_row(4,[4,6,12,14],radius,spacing,height);
render_row(5,[1,5,13,17],radius,spacing,height);
render_row(6,[2,8,10,16],radius,spacing,height);
render_row(7,[1,3,9,15,17],radius,spacing,height);
render_row(8,[2,4,14],radius,spacing,height);
render_row(9,[1,3,5,7,9,11,13,17],radius,spacing,height);
render_row(10,[2,4,6,8],radius,spacing,height);
render_row(11,[1,3,5,7,9,17],radius,spacing,height);
render_row(12,[2,4,6,8],radius,spacing,height);
render_row(13,[3,5,7,9,17],radius,spacing,height);
render_row(14,[4,6,8,10],radius,spacing,height);
render_row(15,[5,7,9,11,17],radius,spacing,height);
render_row(16,[6,8,10,12],radius,spacing,height);
render_row(17,[7,9,11,13,17],radius,spacing,height);
render_row(18,[8,12,14],radius,spacing,height);
render_row(19,[7,11,15,17],radius,spacing,height);
render_row(20,[2,4,6,8,10,16],radius,spacing,height);
render_row(21,[17],radius,spacing,height);
};

render_owl(5,5,5);
render_owl(2,5,10);
