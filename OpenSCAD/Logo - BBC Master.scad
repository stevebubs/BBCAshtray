module render_master_half() {
 polygon(points=[
    [0,0],[0,130],[9,130],[62,108],[62,0],[50,0],[50,2],[55,2],
    [55,77],[35,84],[35,80],[50,75],[50,0],[48,0],[48,73],[35,77.5],
    [35,0],[9,0],[9,128],[2,128],[2,2],[9,2],[9,0]]);
};

module render_master() {
render_master_half();
translate([126,0,0]) mirror() render_master_half();
};

linear_extrude(height=10)
render_master();

