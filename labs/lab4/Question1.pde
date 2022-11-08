// Lab 4 - Question1.pde
// ======================================
// Student ID: 219256809
// First Name: Huanrui
// EECS User Name (not password): saikoro
// ======================================

// DO NOT INCLUDE ANY setup() or draw() routines here, these will be located in your main file

// Question 1:  

// The patterns only require a single loop to generate - we can assume the number of steps in both
// horizontal and vertical directions is the same.  The steps variable controls the spacing between the lines.
// You can modify these methods to parametrize them to use a start position for top left, and width/height
// - this might help for part (c), though it is not necessary.


// NOTE: if variables or constants are defined outside of methods here, they also have scope over the whole 
//       program (as they are not within any specific block).  If you define these INSIDE a method, then they
//       only have scope within that method.  This also is true of code placed in the other question files.



final int DEFAULT_STEPS = 10;        // default number of steps (spacing between lines)


// PART (a)    [ 5 marks ]

void drawStraightCurveWeb(int steps) {
  
  // use whole window
  
  // TO COMPLETE
  for (int i = 0;i<steps; i+=1){
    int x1 = i*width/steps;
    int y2 = i*height/steps;
    line(x1,width, 0,y2);
  }
  
}


// PART (b)    [ 5 marks ]

void drawStraightCurveEye(int steps) {

  // use whole window

  // TO COMPLETE
  for (int i = 0;i<steps; i+=1){
    int x1 = i*width/steps;
    int y2 = i*height/steps;
    line(x1, height, 0,y2);
    line(x1, 0, width, y2);
  }

}


// PART (c) -> either of the following (or students own string-art inspired pattern - must use loops and straight lines)   [ 5 marks ]


void myStringArtwork() {
  background(255);
  drawStraightCurveWeb(DEFAULT_STEPS);
  drawStraightCurveEye(DEFAULT_STEPS);
  
  int x = (int)random(100,width-100);
  int y = (int)random(100,height-100);
  int r = (int)random(100,300);
 
  // TO COMPLETE
  for (int i=1; i<361; i+=1) {
    
    float t = radians(i);
    float ot = radians(i-1);
    float d = x*t;
    float od = x*ot;

    float oxpos = (x-r)*cos(ot)+y*cos(od);
    float oypos = (x-r)*sin(ot)+y*sin(od);

    float xpos = (x-r)*cos(t)+y*cos(d);
    float ypos = (x-r)*sin(t)+y*sin(d);

    line(width/2+oxpos, height/2+oypos, width/2+xpos, height/2+ypos);
  }  

}
