// drawing example

size(360,400);
background(217,217,217);

// specify ellipse from top,left + width,height
ellipseMode(CORNER);

// pink ellipse for head
fill(249,210,210);
ellipse(118,114,149,195);

// grey eyeballs
fill(217,217,217);
ellipse(96,144,67,61);
ellipse(184,144,67,61);

// blue pupils
fill(51,131,204);
ellipse(131,169,32,29);
ellipse(184,160,32,29);

// musk nose
fill(219,146,146);
ellipse(137,205,71,23);

// black mouth as p1,p2,p3 triangle)
fill(0,0,0);
triangle(211-48,288-49,211,288-49,211-24,288);

// hair as lines
noFill();
line(184,51,193,114);
line(212,118,232,55);
line(232,130,273,83);
