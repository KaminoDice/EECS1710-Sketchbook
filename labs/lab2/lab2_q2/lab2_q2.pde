// ======================================
// Lab 2
// Question 2 - Background/Foreground scene 
//              render using parametrized objects
// ======================================
// Student ID: 219256809
// First Name: Huanrui
// EECS User Name (not password): saikoro
// ======================================

final int NUM_OBJECTS = 4;      // variables to track num objects to draw
int numObjectsLeft;

// PLEASE MAKE SURE YOU HAVE READ THE LAB2.PDF DOCUMENT!!
// INSTRUCTIONS ARE THERE!!


// (a)
// copy the parametrized version of your renderObject()
// method over from question 1 (or create a new method
// that parametrizes the rendering of a new object)
//
// create two methods ->
//
// renderBackground():
//  - that renders a static background scene (as described in lab2.pdf)
//
// renderForeground():
//  - that generates and renders NUM_OBJECTS x your parametrized object.
//  - each object should be rendered to a randomized location and size
//    within an area of the scene that makes sense. E.g. generating bikes
//    on the trail/path in the scene depicted in lab2.pdf.

void renderBackground() {
  strokeWeight(20);
  stroke(255, 215,0);
  line(0,0,0,height);
  line(width,0,width,height);
  strokeWeight(10);
  line(4*width/5,0,4*width/5,height);
  line(width/5,0,width/5,height);
  noStroke();
  fill( 255 ,18 ,15,255 );
  quad( 0 ,height,width ,height ,4*width/5 ,2*height/5,width/5 ,2*height/5 );
  fill(255, 215,0);
  rect(0, 0, width, height/6);
  textSize( height/10);
  fill( 215 ,89 ,29,255 );    
  text("Stickman Boxing", width/8, height/8);
  // CODE TO RENDER BACKGROUND SCENE ELEMENTS HERE
}

void renderForeground(float x, float y, int radius, float z0, float z1, float z2,float z3, float z4,float z5) {
  stroke(0);
  strokeWeight(3);
  circle(x, y-z0, radius*2.2); //head
  triangle( x-radius ,y+radius*1.2,x+radius ,y+radius*1.2 ,x ,y+4*radius-z3 ); //body
  circle( x- radius*1.5+z1 ,y+ radius*2+z4,radius ); // left hand
  circle( x+ radius*1.5+z2 ,y+ radius*2+z5,radius ); // right hand
  triangle( x-radius/4 ,y+4*radius,x- radius ,y+4*radius ,x-(radius+5)/2 ,y+4*radius-5 ); //left feet
  triangle( x+radius/4 ,y+4*radius,x+ radius ,y+4*radius ,x+(radius+5)/2 ,y+4*radius-5 ); //right feet
}  
  // CODE TO RENDER ONE FOREGROUND OBJECT HERE
  // (uses parametrized method to draw stick figure/ 
  //  object from question 1)


void setup() {
  size(800,800);
  renderBackground();
  // CODE TO SETUP PROGRAM HERE

}

void draw() {
    stroke(random(255),random(255),random(255),20);
    line(mouseX, mouseY, 0, 0);
    line(mouseX, mouseY, width, height);
    line(mouseX, mouseY, width, 0);
    line(mouseX, mouseY, 0, height);
    line(mouseX, mouseY, 0, height/2);
    line(mouseX, mouseY, width, height/2);
    if (numObjectsLeft < NUM_OBJECTS){
      float x = random(width/6, 5*width/6);
      float y = random(2*height/5, 4*height/5);
      int radius = int(random(15, 55));
      int red = int(random(0, 255));
      int green = int(random(0, 255));
      int blue = int(random(0, 255));
      float z0 = random(-radius/4,radius/4);
      float z1 = random(-radius/2,0);
      float z2 = random(0,radius/2);
      float z3 = random(0,radius/2);
      float z4 = random(-radius,radius);
      float z5 = random(-radius,radius);
      fill(red, green, blue);
      renderForeground(x,y,radius,z0,z1,z2,z3,z4,z5);
      numObjectsLeft++;
    }
  
  // CODE TO DECIDE IF WE DRAW A FOREGROUND OBJECT
  // and to decrement num objects left to draw    
}



void mousePressed() { 
   background(random(0,255));
   renderBackground();
  // CODE TO CLEAR FOREGROUND (repaint background)
   numObjectsLeft = 0;
  // and reset num of objects to draw in foreground
}
