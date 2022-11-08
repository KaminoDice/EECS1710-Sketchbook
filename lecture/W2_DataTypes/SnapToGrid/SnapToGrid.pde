// snap to grid - illustrates integer division

// lets assume grid has a vertical and horizontal spacing
int hSpacing = 200;
int vSpacing = 200;

void setup() {
  size(1000,1000);
}

void draw() {
  background(0xd9d9d9);    // light gray
  
  // grid pattern
  stroke(#c63e3e);    // this uses a hexidecimal value to describe colour (will discuss this representation later)
  
  // vertical; horizonal lines (every 200 pixels) 
  line(200,0,200,height);  line(0,200,width,200);
  line(400,0,400,height);  line(0,400,width,400);
  line(600,0,600,height);  line(0,600,width,600);
  line(800,0,800,height);  line(0,800,width,800);
  
  // reset stroke to black
  stroke(0,0,0);
  
  // calculate a snapTo point based on mouse position
  // these commands make use of 
  
  int snapPointX = (mouseX/hSpacing)*hSpacing;
  int snapPointY = (mouseY/vSpacing)*vSpacing;
  
  line(0, 0, mouseX, mouseY);         // line does not snap to grid
  circle(snapPointX,snapPointY,20);   // circle position snaps to grid
}
