// ======================================
// Lab 2
// Question 1 - No-argument & Parametrized (with-argument) methods
// ======================================
// Student ID:
// First Name:
// EECS User Name (not password):
// ======================================

// PLEASE MAKE SURE YOU HAVE READ THE LAB2.PDF DOCUMENT!!
// INSTRUCTIONS ARE THERE!!

// (a)
// create a method that renders (draws) a stick object such as the
// examples shown in lab2.pdf.  You only have to create one object,
// no colours required, however the lines/shapes used should be
// defined/created in terms of an initial position coordinate 
// (i.e. defined by variables: x,y), and a size variable (e.g. radius)
// x,y should be initialized as the centre of the application window
// radius can be initialized to 50 (or your choice)

void renderObject() {
float x = width/2;
float y = height/2;
int radius = 20;

circle(x, y, radius*2.2);
triangle( x-radius ,y+radius*1.2,x+radius ,y+radius*1.2 ,x ,y+4*radius );
circle( x- radius*1.5 ,y+ radius*2,radius );
circle( x+ radius*1.5 ,y+ radius*2,radius );
triangle( x-radius/4 ,y+4*radius,x- radius ,y+4*radius ,x-(radius+5)/2 ,y+4*radius-5 );
triangle( x+radius/4 ,y+4*radius,x+ radius ,y+4*radius ,x+(radius+5)/2 ,y+4*radius-5 );
}

//  ==== CODE FOR PART A HERE ====

// (b) create another version of your method from part (a)
// that will accept three variables: x, y, and radius 
// that specify the start position and size parameters 
// for rendering your stick object.  This should allow 
// you to include two calls to this method to generate
// two versions of the object (diff size and diff position)
// from your draw() {} method.

void renderObject(float x, float y, int radius) {
circle(x, y, radius*2.2);
triangle( x-radius ,y+radius*1.2,x+radius ,y+radius*1.2 ,x ,y+4*radius );
circle( x- radius*1.5 ,y+ radius*2,radius );
circle( x+ radius*1.5 ,y+ radius*2,radius );
triangle( x-radius/4 ,y+4*radius,x- radius ,y+4*radius ,x-(radius+5)/2 ,y+4*radius-5 );
triangle( x+radius/4 ,y+4*radius,x+ radius ,y+4*radius ,x+(radius+5)/2 ,y+4*radius-5 );
}

// ===== CODE FOR PART B HERE ====

void setup() {
  size(500,500);
  background(255);
  // SETUP CODE HERE
  
}

void draw() {
  renderObject();
  // CALLS TO RENDER METHODS HERE
  renderObject(350,50, 40);
  
}
